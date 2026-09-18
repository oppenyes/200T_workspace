`timescale 1ns / 1ps
//----------------- 2023.10.30 V1.0 ---------------//
module ddr3_module(
//********** DDR MIG APP interface***********//
    input          iw_clk_200M ,
    input          iw_200M_rst ,
    input          iw_ddr3_rst ,
    
    output         ow_ddr3_clk          ,
    output         ow_ddr3_clk_sync_rst ,
    output         ow_init_calib_complete ,
    
    output         ow_ddr3_wr_rdy      , // 用户写反压
    input          iw_ddr3_wr_valid    , // 用户写使能
    input  [511:0] iw_ddr3_wr_data     , // 用户写数据
    output [27:0]  ow_ddr3_wr_addr_cnt , // 用户写地址计数器
    
    output         ow_ddr3_rd_rdy      , // 用户读反压
    input          iw_ddr3_rd_valid    , // 用户读使能
    output         ow_ddr3_rd_data_rdy , // 用户读数据反压
    output [511:0] ow_ddr3_rd_data     , // 用户读数据
    output [27:0]  ow_ddr3_rd_addr_cnt , // 用户读地址计数器
    
    input          iw_ddr3_addr_clear  , // ddr3_addr 复位信号
//***************** DDR *********************//
    inout   [63:0] ddr3_dq      , // DDR3 数据
    inout   [7:0]  ddr3_dqs_n   , // DDR3 dqs负
    inout   [7:0]  ddr3_dqs_p   , // DDR3 dqs正  
    output  [15:0] ddr3_addr    , // DDR3 地址   
    output  [2:0]  ddr3_ba      , // DDR3 banck 选择
    output         ddr3_ras_n   , // DDR3 行选择
    output         ddr3_cas_n   , // DDR3 列选择
    output         ddr3_we_n    , // DDR3 读写选择
    output         ddr3_reset_n , // DDR3 复位
    output  [1:0]  ddr3_ck_p    , // DDR3 时钟正
    output  [1:0]  ddr3_ck_n    , // DDR3 时钟负
    output  [1:0]  ddr3_cke     , // DDR3 时钟使能
    output  [1:0]  ddr3_cs_n    , // DDR3 片选
    output  [7:0]  ddr3_dm      , // DDR3_dm
    output  [1:0]  ddr3_odt     , // DDR3_odt

    output         ow_error_flag   //错误标志位
);

assign ow_ddr3_wr_rdy = ow_app_rdy && ow_app_wdf_rdy ;
assign ow_ddr3_rd_rdy = ow_app_rdy ;

assign ow_ddr3_rd_data_rdy = ow_app_rd_data_valid ;
assign ow_error_flag = iw_ddr3_wr_valid && iw_ddr3_rd_valid ; // 不允许同时读写 ， 同时拉高读写使能报错

//wire define  
wire [ 29:0] iw_app_addr;             //DDR3 地址

wire [  2:0] iw_app_cmd;              //用户读写命令
wire [511:0] ow_app_rd_data;          //用户读数据
wire [511:0] iw_app_wdf_data;         //用户写数据 
wire [ 63:0] iw_app_wdf_mask = 1'b0 ; //写数据屏蔽

assign iw_app_wdf_data = iw_ddr3_wr_data ;
assign ow_ddr3_rd_data = ow_app_rd_data  ;

reg [13:0] r_app_wdf_addr1 = 1'b0 ;
reg [15:0] r_app_wdf_addr0 = 1'b0 ;
reg [13:0] r_app_rd_addr1 = 1'b0 ;
reg [15:0] r_app_rd_addr0 = 1'b0 ;
assign iw_app_addr = iw_ddr3_wr_valid ? { r_app_wdf_addr1 , r_app_wdf_addr0 } : 
                     iw_ddr3_rd_valid ? { r_app_rd_addr1 , r_app_rd_addr0 } : 1'b0 ;
//用户写地址计数器 ow_ddr3_wr_addr_cnt = ow_app_addr / 8 ;
reg [10:0] or_ddr3_wr_addr_cnt1 = 1'b0 ;
reg [15:0] or_ddr3_wr_addr_cnt0 = 1'b0 ;
assign ow_ddr3_wr_addr_cnt = { or_ddr3_wr_addr_cnt1 , or_ddr3_wr_addr_cnt0 } ;
//用户读地址计数器 ow_ddr3_rd_addr_cnt = ow_app_addr / 8 ;
reg [10:0] or_ddr3_rd_addr_cnt1 = 1'b0 ;
reg [15:0] or_ddr3_rd_addr_cnt0 = 1'b0 ;
assign ow_ddr3_rd_addr_cnt = { or_ddr3_rd_addr_cnt1 , or_ddr3_rd_addr_cnt0 } ;

always @(posedge ow_ddr3_clk)begin
    if(ow_ddr3_clk_sync_rst || ow_error_flag || iw_ddr3_addr_clear)begin 
        r_app_wdf_addr1 <= 1'b0 ; r_app_rd_addr1 <= 1'b0 ; 
        r_app_wdf_addr0 <= 1'b0 ; r_app_rd_addr0 <= 1'b0 ;  

        or_ddr3_wr_addr_cnt1 <= 1'b0 ; or_ddr3_rd_addr_cnt1 <= 1'b0 ;     
        or_ddr3_wr_addr_cnt0 <= 1'b0 ; or_ddr3_rd_addr_cnt0 <= 1'b0 ;  
    end
    else if(ow_init_calib_complete)begin //MIG IP核初始化完成
        if(iw_ddr3_wr_valid && ow_ddr3_wr_rdy)begin
            r_app_wdf_addr0 <= r_app_wdf_addr0 + 4'd8;                              //DDR3 地址加8
            if(r_app_wdf_addr0 == 16'hfff8) r_app_wdf_addr1 <= r_app_wdf_addr1 + 4'd1 ; //DDR3 地址加8
            
            or_ddr3_wr_addr_cnt0 <= or_ddr3_wr_addr_cnt0 + 1'b1 ;                                      
            if(or_ddr3_wr_addr_cnt0 == 16'hffff) or_ddr3_wr_addr_cnt1 <= or_ddr3_wr_addr_cnt1 + 4'd1 ; 
        end
        else if(iw_ddr3_wr_valid)begin   
            r_app_wdf_addr1 <= r_app_wdf_addr1 ; // rdy 反压时，app_addr 自保持
            r_app_wdf_addr0 <= r_app_wdf_addr0 ; // rdy 反压时，app_addr 自保持
            
            or_ddr3_wr_addr_cnt1 <= or_ddr3_wr_addr_cnt1 ;    
            or_ddr3_wr_addr_cnt0 <= or_ddr3_wr_addr_cnt0 ;
        end
        
        if(iw_ddr3_rd_valid && ow_ddr3_rd_rdy)begin 
            r_app_rd_addr0 <= r_app_rd_addr0 + 4'd8;                              //DDR3 地址加8
            if(r_app_rd_addr0 == 16'hfff8) r_app_rd_addr1 <= r_app_rd_addr1 + 4'd1 ; //DDR3 地址加8
            
            or_ddr3_rd_addr_cnt0 <= or_ddr3_rd_addr_cnt0 + 1'd1;                                       
            if(or_ddr3_rd_addr_cnt0 == 16'hffff)or_ddr3_rd_addr_cnt1 <= or_ddr3_rd_addr_cnt1 + 4'd1 ; 
        end
        else if(iw_ddr3_rd_valid)begin   
            r_app_rd_addr1 <= r_app_rd_addr1 ; // rdy 反压时，app_addr 自保持
            r_app_rd_addr0 <= r_app_rd_addr0 ; // rdy 反压时，app_addr 自保持
            
            or_ddr3_rd_addr_cnt1 <= or_ddr3_rd_addr_cnt1 ;  
            or_ddr3_rd_addr_cnt0 <= or_ddr3_rd_addr_cnt0 ; 
        end
    end
end

mig_7series_0 mig_7series_0_inst (
// Memory interface ports
    .ddr3_addr           (ddr3_addr              ),  // output [15:0]   ddr3_addr
    .ddr3_ba             (ddr3_ba                ),  // output [2:0]	ddr3_ba
    .ddr3_cas_n          (ddr3_cas_n             ),  // output		    ddr3_cas_n
    .ddr3_ck_n           (ddr3_ck_n              ),  // output [1:0]	ddr3_ck_n
    .ddr3_ck_p           (ddr3_ck_p              ),  // output [1:0]	ddr3_ck_p
    .ddr3_cke            (ddr3_cke               ),  // output [1:0]	ddr3_cke
    .ddr3_ras_n          (ddr3_ras_n             ),  // output			ddr3_ras_n
    .ddr3_reset_n        (ddr3_reset_n           ),  // output			ddr3_reset_n
    .ddr3_we_n           (ddr3_we_n              ),  // output			ddr3_we_n
    .ddr3_dq             (ddr3_dq                ),  // inout [15:0]	ddr3_dq
    .ddr3_dqs_n          (ddr3_dqs_n             ),  // inout [1:0]		ddr3_dqs_n
    .ddr3_dqs_p          (ddr3_dqs_p             ),  // inout [1:0]		ddr3_dqs_p
    .init_calib_complete (ow_init_calib_complete ),  // output			init_calib_complete
    .ddr3_cs_n           (ddr3_cs_n              ),  // output [1:0]	ddr3_cs_n
    .ddr3_dm             (ddr3_dm                ),  // output [1:0]	ddr3_dm
    .ddr3_odt            (ddr3_odt               ),  // output [1:0]	ddr3_odt
// Application interface ports
    .app_addr            (iw_app_addr          ),  // input [29:0]	    app_addr
    .app_cmd             (iw_app_cmd           ),  // input [2:0]	    app_cmd
    .app_en              (iw_app_en            ),  // input			    app_en
    
    .app_wdf_data        (iw_app_wdf_data      ),  // input [511:0]	    app_wdf_data
    .app_wdf_end         (iw_app_wdf_end       ),  // input			    app_wdf_end
    .app_wdf_wren        (iw_app_wdf_wren      ),  // input			    app_wdf_wren
    
    .app_rd_data         (ow_app_rd_data       ),  // output [511:0]	app_rd_data
    .app_rd_data_end     (ow_app_rd_data_end   ),  // output			app_rd_data_end
    .app_rd_data_valid   (ow_app_rd_data_valid ),  // output			app_rd_data_valid
    
    .app_rdy             (ow_app_rdy           ),  // output			app_rdy
    .app_wdf_rdy         (ow_app_wdf_rdy       ),  // output			app_wdf_rdy
    .app_sr_req          (1'b0                 ),  // input			    app_sr_req
    .app_ref_req         (1'b0                 ),  // input			    app_ref_req
    .app_zq_req          (1'b0                 ),  // input			    app_zq_req
    .app_sr_active       (ow_app_sr_active     ),  // output			app_sr_active
    .app_ref_ack         (ow_app_ref_ack       ),  // output			app_ref_ack
    .app_zq_ack          (ow_app_zq_ack        ),  // output			app_zq_ack
    .ui_clk              (ow_ddr3_clk          ),  // output			ui_clk 100MHz
    .ui_clk_sync_rst     (ow_ddr3_clk_sync_rst ),  // output			ui_clk_sync_rst
    .app_wdf_mask        (iw_app_wdf_mask      ),  // input [15:0]		app_wdf_mask
    // System Clock Ports
    .sys_clk_i           (iw_clk_200M ),
    .sys_rst             (iw_200M_rst || iw_ddr3_rst ) // input sys_rst
);

assign iw_app_en = iw_ddr3_wr_valid && ow_ddr3_wr_rdy || iw_ddr3_rd_valid && ow_ddr3_rd_rdy ; //在写状态MIG IP 命令接收和数据接收都准备好,或者在读状态命令接收准备好，此时拉高使能信号
assign iw_app_wdf_wren = iw_ddr3_wr_valid && ow_ddr3_wr_rdy ; //在写状态,命令接收和数据接收都准备好，此时拉高写使能
assign iw_app_wdf_end  = iw_ddr3_wr_valid && ow_ddr3_wr_rdy ; //由于DDR3芯片时钟和用户时钟的分频选择4:1，突发长度为8，故两个信号相同
assign iw_app_cmd = iw_ddr3_rd_valid ? 1'b1 : 1'b0 ; // 写命令为 1'b0 , 读命令为 1'b1 

//wire ddr3_wr_valid = iw_ddr3_wr_valid ;
//ila_ddr3 ila_ddr3_inst(
//	.clk(ow_ddr3_clk), // input wire clk

//	.probe0  (ow_ddr3_clk_sync_rst   ) ,
//	.probe1  (ow_init_calib_complete ) ,
//	.probe2  (ow_app_rdy             ) ,
//	.probe3  (ow_app_wdf_rdy         ) ,
//	.probe4  (iw_app_en              ) ,
//	.probe5  (iw_app_cmd             ) , // [ 2:0]
//	.probe6  (iw_app_addr            ) , // [29:0]
	
//	.probe7  (iw_app_wdf_data        ) , // [511:0]   
//	.probe8  (iw_app_wdf_end         ) , 
//	.probe9  (iw_app_wdf_wren        ) , 

//	.probe10 (ow_app_rd_data         ) , // [511:0]  
//	.probe11 (ow_app_rd_data_end     ) ,
//	.probe12 (ow_app_rd_data_valid   ) ,

//	.probe13 (ow_ddr3_wr_rdy         ) , 
//	.probe14 (ddr3_wr_valid          ) , 
//	.probe15 (ow_ddr3_wr_addr_cnt    ) , // [27:0]  
//	.probe16 (iw_ddr3_rd_valid       ) ,
//	.probe17 (ow_ddr3_rd_addr_cnt    ) , // [27:0]  
//	.probe18 (iw_ddr3_addr_clear     )
//);

endmodule