`timescale 1ns / 1ps

module udp_drive(
    input          iw_sys_clk ,
    input          iw_sys_rst ,

    output         phy_rst_o    ,
    //PHYA        
    input [3:0]    rgmii_rxd    ,
    input          rgmii_rx_ctl ,
    input          rgmii_rxc    ,
    output[3:0]    rgmii_txd    ,
    output         rgmii_tx_ctl ,
    output         rgmii_txc    ,
    
    input          clk_15M625         ,
    input          clk_25M            ,
    input          clk_125M           ,
    input          clk_200M           ,
    input          iw_locked          ,
    input          iw_15M625_rst      ,
    input          iw_25M_rst         ,
    
    output        ow_ETH_rx_data_rdy  ,
    output [63:0] ow_ETH_rx_data      ,
    output        ow_ETH_rx_data_last ,
    output [7:0]  ow_ETH_rx_data_keep ,
    output [15:0] ow_ETH_rx_data_length,
    output        ow_ETH_rx_data_error,
    input         iw_ETH_rx_data_ready,
    input         iw_ETH_rx_dataset_clear,
    output [11:0] ow_ETH_rx_fifo_level,
    output        ow_ETH_rx_fifo_empty,
    output        ow_ETH_rx_fifo_full,
    output        ow_ETH_rx_fifo_overflow,

    output       ow_ETH_udp_fifo_wr_rdy   ,
    input        iw_ETH_udp_fifo_wr_valid ,
    input [63:0] iw_ETH_udp_fifo_wr_data
);

//wire [63:0] data = 1'b0 ;
localparam  WAIT_UDP_DATA   = 2'd0;
localparam  WAIT_ACK        = 2'd1;
localparam  SEND_UDP_DATA   = 2'd2;
localparam  DELAY           = 2'd3;

reg             data_valid;
reg             app_data_request;
reg [15:0]      udp_port;
reg [31:0]      ip_address;
reg [15:0]      packet_length;

wire            app_rx_data_valid;
wire [63:0]     app_rx_data;
wire [7:0]      app_rx_data_keep;
wire            app_rx_data_last;
wire [15:0]     app_rx_data_length;
wire [15:0]     app_rx_port_num;
wire            udp_rx_error;
wire            ip_rx_error;
wire            udp_tx_ready;
wire            app_tx_ack;
reg             app_tx_data_request;
reg             app_tx_data_valid;
wire            app_tx_en ;  
wire [63:0]     app_tx_data ;
reg  [7:0]      app_tx_data_keep;
reg             app_tx_data_last;
reg  [15:0]     udp_data_length;
reg             app_tx_data_read;

reg  [63:0]     test_data;
wire            dst_ip_unreachable;
reg  [1 :0]     STATE = 0;

wire            core_reset;    

reg  [15:0]     delay_cnt;
reg  [2 :0]     dst_ip_count;
  
reg  [10:0] PACKET_LENGTH = 10'h3ff;   // 0-1472 字节      50Mbit - 906Mbit
wire [ 7:0] ow_udp_fifo_rd_data_num ; 
wire [15:0] PACKET_INTERVAL = 16'd0; // 0-65535 延迟  
always@(posedge clk_15M625)begin
    if(iw_15M625_rst)begin
        PACKET_LENGTH <= 1'b0 ;
    end 
    else if(app_tx_en)begin
        PACKET_LENGTH <= (ow_udp_fifo_rd_data_num + 1) * 8;
    end
end

wire [7:0] r_fifo_wr_cnt ;
wire [9:0] r_fifo_wr_delay_cnt ;
udp_64x4096_fifo udp_64x4096_fifo_inst(
    .iw_fifo_wr_clk        (iw_sys_clk            ) ,
    .iw_fifo_wr_rst        (iw_sys_rst            ) ,
    .iw_fifo_wr_data_valid (iw_ETH_udp_fifo_wr_valid  ) ,
    .iw_fifo_wr_data       (iw_ETH_udp_fifo_wr_data   ) ,
    .ow_fifo_wr_data_rdy   (ow_ETH_udp_fifo_wr_rdy    ) ,  
    .r_fifo_rd_en_wr_clk   (r_fifo_rd_en_wr_clk   ) , 
    .r_fifo_wr_cnt         (r_fifo_wr_cnt         ) ,
    .r_fifo_wr_delay_en    (r_fifo_wr_delay_en    ) ,
    .r_fifo_wr_delay_cnt   (r_fifo_wr_delay_cnt   ) ,

    .iw_fifo_rd_clk        (clk_15M625              ) ,
    .iw_fifo_rd_rst        (iw_15M625_rst           ) ,
    .ow_fifo_rd_data_en    (app_tx_en               ) ,
    .iw_fifo_rd_data_valid (app_tx_data_valid       ) ,
    .iw_fifo_rd_rdy        (udp_tx_ready && !app_tx_data_request) ,
    .ow_fifo_rd_data       (app_tx_data             ) ,
    .ow_fifo_rd_data_num   (ow_udp_fifo_rd_data_num ) ,
    .ow_fifo_rd_data_rdy   (ow_fifo_rd_data_rdy     ) 
);

//ila_udp_tx ila_udp_tx_inst (
//	.clk     (clk_125M              ) , // input wire clk
//	.probe0  (udp_tx_ready          ) , // input wire [0:0]  probe0  
//	.probe1  (app_tx_data_request   ) , // input wire [0:0]  probe1 
//	.probe2  (app_tx_en             ) , // input wire [0:0]  probe2 
//	.probe3  (app_tx_ack            ) , // input wire [0:0]  probe3 
//	.probe4  (app_tx_data_valid     ) , // input wire [0:0]  probe4 
//	.probe5  (app_tx_data           ) , // input wire [63:0]  probe5 
//	.probe6  (app_tx_data_last      ) , // input wire [0:0]  probe6 
//	.probe7  (app_tx_data_keep      ) , // input wire [7:0]  probe7
//	.probe8  (STATE                 ) , // input wire [7:0]  probe7
//	.probe9  (PACKET_LENGTH         ) , // input wire [7:0]  probe7
//	.probe10 (ow_fifo_rd_data_rdy   ) ,
//	.probe11 (ow_udp_fifo_rd_data_num   ) ,
//	.probe12 (iw_ETH_udp_fifo_wr_valid  ) ,
//	.probe13 (r_fifo_wr_cnt         ) ,
//	.probe14 (iw_ETH_udp_fifo_wr_data ) ,
//	.probe15 (ow_ETH_udp_fifo_wr_rdy    ) ,
//	.probe16 (r_fifo_rd_en_wr_clk   ) ,
//	.probe17 (r_fifo_wr_delay_en    ) ,
//    .probe18 (r_fifo_wr_delay_cnt   ) 
//);

always@(posedge clk_15M625)begin
		if(core_reset) begin
		   app_tx_data_request <= 1'b0;
//		   app_tx_data_read <= 1'b0;
			app_tx_data_valid <= 1'b0;
			test_data <= 64'd0;
			app_tx_data_last <= 1'b0;
			app_tx_data_keep <= 8'hff;
			delay_cnt <= 16'd0;
			dst_ip_count <= 3'd0;
			STATE <= WAIT_UDP_DATA;
		end
		else begin
		   case(STATE)
				WAIT_UDP_DATA:
					begin
						if(udp_tx_ready && app_tx_en) begin
						   app_tx_data_request <= 1'b1;
							STATE <= WAIT_ACK;
						end
						else begin
						   app_tx_data_request <= 1'b0;
							STATE <= WAIT_UDP_DATA;
						end
					end
				WAIT_ACK:
					begin
					   if(app_tx_ack) begin//等待app_tx_request反馈信号，高电平有效。表示此时外部模块可通过用户接口向本模块输入数据。
						   app_tx_data_request <= 1'b0; // app_tx_ack为1，等待应答完毕，可向用户模块发送数据。
							app_tx_data_valid <= 1'b1;  // 发送期间恒为1
							if(PACKET_LENGTH <= 8) begin
								app_tx_data_last <= 1'b1;
								app_tx_data_keep <= (8'hff >> (8 - PACKET_LENGTH));
								STATE <= DELAY;
							end
							else							
								STATE <= SEND_UDP_DATA;
						end
						else if(dst_ip_unreachable) begin //  ???
							app_tx_data_request <= 1'b0;  //  ???
							app_tx_data_valid <= 1'b0;    //  ???
							STATE <= WAIT_UDP_DATA;       //  ???
						end                               //  ???
						else begin                        //  ???
							app_tx_data_request <= 1'b1;  //  ???
							app_tx_data_valid <= 1'b0;    //  ???
							STATE <= WAIT_ACK;            //  ???
						end
					end
				SEND_UDP_DATA:
					begin
						test_data <= test_data + 1'b1;  // ???
						app_tx_data_valid <= 1'b1;  // 可以去掉？
						if(  ( (test_data << 3) + 8) >= (PACKET_LENGTH - 8)  ) begin	
							app_tx_data_last <= 1'b1;   // 发送最后一位标志位
							app_tx_data_keep <= (  8'hff >> ( (test_data << 3) + 8 - (PACKET_LENGTH - 8) )  );// 发送最后一位标志位
							STATE <= DELAY;
						end
						else begin
							STATE <= SEND_UDP_DATA;
						end						
					end
				DELAY:
					begin
						app_tx_data_valid <= 1'b0;
						test_data <= 64'd0;
						app_tx_data_last <= 1'b0;
						app_tx_data_keep <= 8'hff;
						if(delay_cnt == PACKET_INTERVAL) begin
							delay_cnt <= 16'd0;
							STATE <= WAIT_UDP_DATA;
						end
						else begin
							delay_cnt <= delay_cnt + 1'b1;
							STATE <= DELAY;
						end
					end
				default: STATE <= WAIT_UDP_DATA;
			endcase
		end
	end   
	
master_wrapper master_wrapper_inst(
    .LOCAL_PORT_NUM      (16'd6902),              // 本地UDP端口号
    .LOCAL_IP_ADDRESS    (32'hc0_a8_89_02),       // 本地IP地址192.168.137.2
    .LOCAL_MAC_ADDRESS   (48'h000a35000102),      // 本地MAC地址
    .DST_PORT_NUM        (16'd6901),              // 主机UDP端口号192.168.137.1
    .DST_IP_ADDRESS      (32'hc0_a8_89_01),       // 主机IP地址  
    .ICMP_EN             (1'b1),                  // 使能ICMP功能，1使能，0关闭   
    .ARP_REPLY_EN        (1'b1),                  // 使能ARP应答，1使能，0关闭    
    .ARP_REQUEST_EN      (1'b1),                  // 使能ARP请求，1使能，0关闭    
    .ARP_TIMEOUT_VALUE   (30'd20_000_000),        // ARP超时检测超时值
    .ARP_RETRY_NUM       (4'd2),                  // ARP超时重传次数
    
    .reset               (1'b0),                 // 复位信号，高电平有效
    .dcm_locked          (iw_locked),            // 
    .refclk              (clk_200M),
    .udp_core_clk        (clk_15M625),
    .gtx_clk             (clk_125M),
    .core_reset          (core_reset),
    .gtx_clk_out         (),
    .gtx_clk90_out       (),
    
    .udp_tx_ready        (udp_tx_ready), // 可接收外部用户数据输入标志信号，高电平有效
    .app_tx_ack          (app_tx_ack),   // app_tx_request反馈信号，高电平有效。表示此时外部模块可通过用户接口向本模块输入数据。
            
    .app_tx_request      (app_tx_data_request),// 用户接口数据发送请求，高电平有效
    
    .app_tx_data_valid   (app_tx_data_valid),  // 用户发送AXI-Stream接口
    .app_tx_data         (app_tx_data),        // 用户发送AXI-Stream接口 [63:0]
    .app_tx_data_keep    (app_tx_data_keep),   // 用户发送AXI-Stream接口 [7:0]
    .app_tx_data_last    (app_tx_data_last),   // 用户发送AXI-Stream接口
    .app_tx_data_length  (PACKET_LENGTH),	   // 用户接口一次发送的数据包长度，单位字节
    
    .dst_ip_unreachable  (dst_ip_unreachable), // 当前请求发送的目的IP不可达指示信号，高电平有效	
    
    .app_rx_data_valid   (app_rx_data_valid),  // 用户接收AXI-Stream接口
    .app_rx_data         (app_rx_data),        // 用户接收AXI-Stream接口 [63:0]
    .app_rx_data_keep    (app_rx_data_keep),   // 用户接收AXI-Stream接口 [7:0]
    .app_rx_data_last    (app_rx_data_last),   // 用户接收AXI-Stream接口
    
    .app_rx_data_length  (app_rx_data_length), // 从外部接收的当前数据包的长度，单位字节
    .app_rx_port_num     (app_rx_port_num),    // 从外部接受的数据包的源端口号
    .udp_rx_error        (udp_rx_error),       // 接收数据包UDP检测错误指示信号，高电平有效，仅在app_rx_data_last拉高时有效
    
    .rgmii_rxd           (rgmii_rxd),
    .rgmii_rx_ctl        (rgmii_rx_ctl),
    .rgmii_rxc           (rgmii_rxc),
        
    .rgmii_txd           (rgmii_txd),
    .rgmii_tx_ctl        (rgmii_tx_ctl),
    .rgmii_txc           (rgmii_txc)                           
);

// UDP RX应用侧本身是连续64-bit AXI-Stream。旧代码只在last后保留一个字，
// 这里将每个beat及其包边界元数据直接写入跨时钟ingress FIFO。
wire [89:0] rx_fifo_din;
wire [89:0] rx_fifo_dout;
wire rx_fifo_full_src;
wire rx_fifo_empty_sys;
wire rx_fifo_wr_en;
wire rx_fifo_rd_en;
wire rx_fifo_wr_rst_busy;
wire rx_fifo_rd_rst_busy;
wire [11:0] rx_fifo_rd_data_count;
wire rx_fifo_reset;
wire rx_fifo_wr_ready;
reg rx_fifo_overflow_src_r;
(* ASYNC_REG = "TRUE" *) reg rx_fifo_full_sync1_r;
(* ASYNC_REG = "TRUE" *) reg rx_fifo_full_sync2_r;
(* ASYNC_REG = "TRUE" *) reg rx_fifo_overflow_sync1_r;
(* ASYNC_REG = "TRUE" *) reg rx_fifo_overflow_sync2_r;
(* ASYNC_REG = "TRUE" *) reg dataset_clear_sync1_r;
(* ASYNC_REG = "TRUE" *) reg dataset_clear_sync2_r;
   xpm_cdc_async_rst #(
      .DEST_SYNC_FF(4),    // DECIMAL; range: 2-10
      .INIT_SYNC_FF(0),    // DECIMAL; 0=disable simulation init values, 1=enable simulation init values
      .RST_ACTIVE_HIGH(0)  // DECIMAL; 0=active low reset, 1=active high reset
   )
   xpm_cdc_async_rst_inst (
      .dest_arst(rx_fifo_reset), // 1-bit output: src_arst asynchronous reset signal synchronized to destination
                             // clock domain. This output is registered. NOTE: Signal asserts asynchronously
                             // but deasserts synchronously to dest_clk. Width of the reset signal is at least
                             // (DEST_SYNC_FF*dest_clk) period.

      .dest_clk(clk_15M625),   // 1-bit input: Destination clock.
      .src_arst(iw_sys_rst || iw_ETH_rx_dataset_clear)    // 1-bit input: Source asynchronous reset signal.
   );
assign rx_fifo_din = {udp_rx_error, app_rx_data_length, app_rx_data_last, app_rx_data_keep, app_rx_data};
// assign rx_fifo_reset = iw_sys_rst || iw_ETH_rx_dataset_clear;
assign rx_fifo_wr_ready = !rx_fifo_full_src && !rx_fifo_wr_rst_busy && !rx_fifo_reset;
assign rx_fifo_wr_en = app_rx_data_valid && rx_fifo_wr_ready;
assign ow_ETH_rx_data_rdy = !rx_fifo_empty_sys && !rx_fifo_rd_rst_busy;
assign rx_fifo_rd_en = ow_ETH_rx_data_rdy && iw_ETH_rx_data_ready;
assign {ow_ETH_rx_data_error, ow_ETH_rx_data_length, ow_ETH_rx_data_last,
        ow_ETH_rx_data_keep, ow_ETH_rx_data} = rx_fifo_dout;
assign ow_ETH_rx_fifo_level = rx_fifo_rd_data_count;
assign ow_ETH_rx_fifo_empty = rx_fifo_empty_sys || rx_fifo_rd_rst_busy;
assign ow_ETH_rx_fifo_full = rx_fifo_full_sync2_r;
assign ow_ETH_rx_fifo_overflow = rx_fifo_overflow_sync2_r;

always @(posedge clk_15M625) begin
    if (iw_15M625_rst) begin
        dataset_clear_sync1_r <= 1'b0;
        dataset_clear_sync2_r <= 1'b0;
        rx_fifo_overflow_src_r <= 1'b0;
    end
    else begin
        dataset_clear_sync1_r <= iw_ETH_rx_dataset_clear;
        dataset_clear_sync2_r <= dataset_clear_sync1_r;
        if (dataset_clear_sync2_r) begin
            rx_fifo_overflow_src_r <= 1'b0;
        end
        else if (app_rx_data_valid && !rx_fifo_wr_ready) begin
            rx_fifo_overflow_src_r <= 1'b1;
        end
    end
end

always @(posedge iw_sys_clk) begin
    if (iw_sys_rst || iw_ETH_rx_dataset_clear) begin
        rx_fifo_full_sync1_r <= 1'b0;
        rx_fifo_full_sync2_r <= 1'b0;
        rx_fifo_overflow_sync1_r <= 1'b0;
        rx_fifo_overflow_sync2_r <= 1'b0;
    end
    else begin
        rx_fifo_full_sync1_r <= rx_fifo_full_src;
        rx_fifo_full_sync2_r <= rx_fifo_full_sync1_r;
        rx_fifo_overflow_sync1_r <= rx_fifo_overflow_src_r;
        rx_fifo_overflow_sync2_r <= rx_fifo_overflow_sync1_r;
    end
end

xpm_fifo_async #(
    .FIFO_MEMORY_TYPE("block"), .ECC_MODE("no_ecc"), .RELATED_CLOCKS(0),
    .FIFO_WRITE_DEPTH(2048), .WRITE_DATA_WIDTH(90), .READ_DATA_WIDTH(90),
    .READ_MODE("fwft"), .FIFO_READ_LATENCY(0), .CDC_SYNC_STAGES(2),
    .DOUT_RESET_VALUE("0"), .FULL_RESET_VALUE(0), .USE_ADV_FEATURES("0707"),
    .WAKEUP_TIME(0)
) udp_rx_ingress_fifo_inst(
    .rst(rx_fifo_reset), .wr_clk(clk_15M625), .wr_en(rx_fifo_wr_en), .din(rx_fifo_din),
    .full(rx_fifo_full_src), .wr_rst_busy(rx_fifo_wr_rst_busy),
    .rd_clk(iw_sys_clk), .rd_en(rx_fifo_rd_en), .dout(rx_fifo_dout),
    .empty(rx_fifo_empty_sys), .rd_rst_busy(rx_fifo_rd_rst_busy),
    .rd_data_count(rx_fifo_rd_data_count),
    .sleep(1'b0), .injectsbiterr(1'b0), .injectdbiterr(1'b0)
);

// phy_rst
reg [15:0] phy_rst_delay_cnt  ;
assign  phy_rst_o = (phy_rst_delay_cnt == 10'd100);
always @(posedge clk_25M) begin
   if(iw_25M_rst) 
         phy_rst_delay_cnt <= 10'd0;
   else begin
		 if(phy_rst_delay_cnt == 10'd100)
			phy_rst_delay_cnt <= phy_rst_delay_cnt;
		 else
		    phy_rst_delay_cnt <= phy_rst_delay_cnt + 1'b1;
   end
end

endmodule
