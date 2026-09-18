`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/14 21:48:01
// Design Name: 
// Module Name: iic_module
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module iic_module#(
    parameter eeprom_memory = 1024
)(
    input          iw_sys_clk           ,   
    input          iw_sys_rst           ,   
    
    input          iw_iic_clk           ,
    input          iw_iic_rst           ,

    input          iw_iic_en            ,
    input  [  6:0] iw_iic_slave_address ,
    input  [ 16:0] iw_iic_byte_address  ,
    input  [  7:0] iw_iic_mode          , 
    input  [  8:0] iw_iic_sda_num       , 
    input  [511:0] iw_iic_sdo_data      , 
    output [511:0] ow_iic_sdi_data      , 
    output reg     or_iic_sdi_data_rdy  ,
    output reg     or_IIC_WR_done       ,
    
    output         iw_IIC_SDI           ,
    output reg     r_IIC_SDO            ,
    output         ow_IIC_SCL           ,     
    inout          io_IIC_SDA
);

// ---------------- localparam ---------------- //
localparam s_IDLE                   = 4'd0  ;
localparam s_slave_address          = 4'd1 ;
localparam s_wr_first_word_address  = 4'd2 ;
localparam s_wr_second_word_address = 4'd3 ;
localparam s_wr_data                = 4'd4 ;
localparam s_rd_data                = 4'd5 ;

localparam IDLE  = 4'd0  ;
localparam START = 4'd1  ;
localparam BIT0  = 4'd2  ;
localparam BIT1  = 4'd3  ;
localparam BIT2  = 4'd4  ;
localparam BIT3  = 4'd5  ;
localparam BIT4  = 4'd6  ;
localparam BIT5  = 4'd7  ;
localparam BIT6  = 4'd8  ;
localparam BIT7  = 4'd9  ;
localparam ACK   = 4'd10 ;
localparam STOP  = 4'd11 ;

localparam L_IIC_WR  = 1'b0  ;
localparam L_IIC_RD  = 1'b1  ;

// ---------------- reg ---------------- //
reg [3:0] s_state   = s_IDLE ;
reg [3:0] s_state_r = s_IDLE ;

reg [3:0] s_iic   = IDLE ;
reg [3:0] s_iic_r = IDLE ;

reg         r_iic_valid          = 1'b0     ;
reg [  6:0] r_iic_slave_address  = 1'b0     ;
reg [ 16:0] r_iic_byte_address   = 1'b0     ;
reg         r_iic_RW             = L_IIC_WR ;
reg [  8:0] r_iic_sda_num        = 1'b0     ;
reg [  8:0] r_iic_sda_cnt        = 1'b0     ;
reg [  8:0] r_iic_sdi_cnt        = 1'b0     ;
reg [511:0] r_iic_sdo_data_cache = 1'b0     ;
reg [511:0] r_iic_sdi_data       = 1'b0     ;

reg         r_IIC_ACK = 1'b0 ;
//reg         r_IIC_SDO = 1'b0 ;
reg         r_IIC_T   = L_IIC_WR ;
reg         r_IIC_rrd = 1'b0 ;

reg         r_IIC_SCL_valid = 1'b0 ;

reg         r_write_cycle_valid = 1'b0 ;
reg [ 10:0] r_write_cycle_cnt = 1'b0 ;
// ---------------- wire ---------------- //
wire s_state_en = s_state == s_state_r ? 1'b0 :1'b1 ;
wire s_iic_en   = s_iic   == s_iic_r   ? 1'b0 :1'b1 ;
wire s_en       = s_state_en && s_iic_en ;

// ---------------- assign ---------------- //
assign ow_iic_sdi_data = r_iic_sdi_data ;
assign ow_IIC_SCL = r_IIC_SCL_valid ? iw_iic_clk : 1'b1 ;
// ---------------- always ---------------- //
always@(posedge iw_iic_clk)begin
    if(iw_iic_rst)begin
        r_iic_valid          <= 1'b0     ;
        r_iic_slave_address  <= 1'b0     ;
        r_iic_byte_address   <= 1'b0     ;
        r_iic_RW             <= L_IIC_WR ;
        r_iic_sda_num        <= 1'b0     ;
        r_iic_sdo_data_cache <= 1'b0     ;
    end
    else if(iw_iic_en)begin
        r_iic_valid          <= 1'b1                 ;
        r_iic_slave_address  <= iw_iic_slave_address ;
        r_iic_byte_address   <= iw_iic_byte_address  ;
        r_iic_RW             <= iw_iic_mode[0]       ;
        r_iic_sda_num        <= iw_iic_sda_num       ;
        r_iic_sdo_data_cache <= iw_iic_sdo_data      ;
    end
    else if(s_iic == STOP)begin
        r_iic_valid <= 1'b0 ;
    end
end

// 第一段状态机 状态转移
always@(posedge iw_iic_clk)begin
    if(iw_iic_rst)begin
        s_state   <= s_IDLE ;
        s_iic     <= IDLE   ;
        r_IIC_rrd <= 1'b0   ;
    end
    else begin
        case(s_state)
            s_IDLE : if(iw_iic_en)s_state <= s_slave_address ;
            
            s_slave_address : begin
                case(s_iic)
                    IDLE    : s_iic <= START ;
                    START   : s_iic <= BIT0  ;
                    BIT0    : s_iic <= BIT1  ;
                    BIT1    : s_iic <= BIT2  ;
                    BIT2    : s_iic <= BIT3  ;
                    BIT3    : s_iic <= BIT4  ;
                    BIT4    : s_iic <= BIT5  ;
                    BIT5    : s_iic <= BIT6  ;
                    BIT6    : s_iic <= BIT7  ;
                    BIT7    : s_iic <= ACK   ;
                    ACK     : begin 
                        s_iic <= BIT0 ; 
                        if(r_IIC_rrd) s_state <= s_rd_data ; 
                        else if(eeprom_memory <= 16) s_state <= s_wr_second_word_address ; 
                        else s_state <= s_wr_first_word_address ; 
                    end
                    STOP    : s_iic <= IDLE  ;
                    default : s_iic <= IDLE  ;
                endcase
            end

            s_wr_first_word_address : begin
                case(s_iic)
                    IDLE    : s_iic <= START ;
                    START   : s_iic <= BIT0  ;
                    BIT0    : s_iic <= BIT1  ;
                    BIT1    : s_iic <= BIT2  ;
                    BIT2    : s_iic <= BIT3  ;
                    BIT3    : s_iic <= BIT4  ;
                    BIT4    : s_iic <= BIT5  ;
                    BIT5    : s_iic <= BIT6  ;
                    BIT6    : s_iic <= BIT7  ;
                    BIT7    : s_iic <= ACK   ;
                    ACK     : begin s_iic <= BIT0 ; s_state <= s_wr_second_word_address ; end
                    STOP    : s_iic <= IDLE  ;
                    default : s_iic <= IDLE  ;
                endcase
            end
            
            s_wr_second_word_address : begin
                case(s_iic)
                    IDLE    : s_iic <= START ;
                    START   : s_iic <= BIT0  ;
                    BIT0    : s_iic <= BIT1  ;
                    BIT1    : s_iic <= BIT2  ;
                    BIT2    : s_iic <= BIT3  ;
                    BIT3    : s_iic <= BIT4  ;
                    BIT4    : s_iic <= BIT5  ;
                    BIT5    : s_iic <= BIT6  ;
                    BIT6    : s_iic <= BIT7  ;
                    BIT7    : s_iic <= ACK   ;
                    ACK     : begin
                        if(r_iic_RW && !r_IIC_rrd)begin
                            s_state   <= s_slave_address ;
                            s_iic     <= STOP  ;
                            r_IIC_rrd <= 1'b1  ;
                        end
                        else begin
                            s_state <= s_wr_data ;
                            s_iic   <= BIT0      ;
                        end
                    end
                    STOP    : s_iic <= IDLE  ;
                    default : s_iic <= IDLE  ;
                endcase
            end
            
            s_wr_data : begin
                case(s_iic)
                    IDLE    : s_iic <= START ;
                    START   : s_iic <= BIT0  ;
                    BIT0    : s_iic <= BIT1  ;
                    BIT1    : s_iic <= BIT2  ;
                    BIT2    : s_iic <= BIT3  ;
                    BIT3    : s_iic <= BIT4  ;
                    BIT4    : s_iic <= BIT5  ;
                    BIT5    : s_iic <= BIT6  ;
                    BIT6    : s_iic <= BIT7  ;
                    BIT7    : s_iic <= ACK   ;
                    ACK     : begin if(!r_iic_sda_cnt) s_iic <= STOP ; else s_iic <= BIT0 ; end
                    STOP    : begin s_iic <= IDLE ; s_state <= s_IDLE ; end
                    default : s_iic <= IDLE  ;
                endcase
            end
            
            s_rd_data : begin
                case(s_iic)
                    IDLE    : s_iic <= START ;
                    START   : s_iic <= BIT0  ;
                    BIT0    : s_iic <= BIT1  ;
                    BIT1    : s_iic <= BIT2  ;
                    BIT2    : s_iic <= BIT3  ;
                    BIT3    : s_iic <= BIT4  ;
                    BIT4    : s_iic <= BIT5  ;
                    BIT5    : s_iic <= BIT6  ;
                    BIT6    : s_iic <= BIT7  ;
                    BIT7    : s_iic <= ACK   ;
                    ACK     : begin if(!r_iic_sda_cnt) s_iic <= STOP ; else s_iic <= BIT0 ; end
                    STOP    : begin s_iic <= IDLE ; s_state <= s_IDLE ; r_IIC_rrd <= 1'b0 ; end
                    default : s_iic <= IDLE  ;
                endcase
            end
            
            default : ;
        endcase
    end
end

// 第二段状态机 赋值
always@(negedge iw_iic_clk)begin
    if(iw_iic_rst)begin
        r_IIC_SDO      <= 1'b1 ;
        r_IIC_ACK     <= 1'b0 ;
    end
    else begin
        case(s_state)
            s_IDLE : r_IIC_SDO <= 1'b1 ;
            
            s_slave_address : begin
                case(s_iic)
                    IDLE    : r_IIC_SDO <= 1'b1 ; 
                    START   : r_IIC_SDO <= 1'b0 ; 
                    BIT0    : r_IIC_SDO <= r_iic_slave_address[6] ;
                    BIT1    : r_IIC_SDO <= r_iic_slave_address[5] ;
                    BIT2    : r_IIC_SDO <= r_iic_slave_address[4] ;
                    BIT3    : r_IIC_SDO <= r_iic_slave_address[3] ;
                    BIT4    : if(eeprom_memory == 16) r_IIC_SDO <= r_iic_byte_address[10] ; else r_IIC_SDO <= r_iic_slave_address[2] ;
                    BIT5    : if(eeprom_memory == 16 || eeprom_memory == 8) r_IIC_SDO <= r_iic_byte_address[ 9] ; else r_IIC_SDO <= r_iic_slave_address[1] ;
                    BIT6    : if(eeprom_memory == 1024) r_IIC_SDO <= r_iic_byte_address[16] ; 
                              else if(eeprom_memory == 16 || eeprom_memory == 8 || eeprom_memory == 4) r_IIC_SDO <= r_iic_byte_address[8] ; 
                              else r_IIC_SDO <= r_iic_slave_address[0] ;
                    BIT7    : if(r_iic_RW && r_IIC_rrd) r_IIC_SDO <= L_IIC_RD ; else r_IIC_SDO <= L_IIC_WR ;
                    ACK     : r_IIC_ACK <= iw_IIC_SDI ;
                    STOP    : r_IIC_SDO <= 1'b0 ;                               
                    default : r_IIC_SDO <= 1'b1 ;
                endcase
            end

            s_wr_first_word_address : begin
                case(s_iic)
                    IDLE    : r_IIC_SDO <= 1'b1 ; 
                    START   : r_IIC_SDO <= 1'b0 ;
                    BIT0    : r_IIC_SDO <= r_iic_byte_address[15] ;
                    BIT1    : r_IIC_SDO <= r_iic_byte_address[14] ;
                    BIT2    : r_IIC_SDO <= r_iic_byte_address[13] ;
                    BIT3    : r_IIC_SDO <= r_iic_byte_address[12] ;
                    BIT4    : r_IIC_SDO <= r_iic_byte_address[11] ;
                    BIT5    : r_IIC_SDO <= r_iic_byte_address[10] ;
                    BIT6    : r_IIC_SDO <= r_iic_byte_address[ 9] ;
                    BIT7    : r_IIC_SDO <= r_iic_byte_address[ 8] ;
                    ACK     : r_IIC_ACK <= iw_IIC_SDI ;
                    STOP    : r_IIC_SDO <= 1'b0 ;                               
                    default : r_IIC_SDO <= 1'b1 ;
                endcase
            end
            
            s_wr_second_word_address : begin
                case(s_iic)
                    IDLE    : r_IIC_SDO <= 1'b1 ; 
                    START   : r_IIC_SDO <= 1'b0 ;
                    BIT0    : r_IIC_SDO <= r_iic_byte_address[7] ;
                    BIT1    : r_IIC_SDO <= r_iic_byte_address[6] ;
                    BIT2    : r_IIC_SDO <= r_iic_byte_address[5] ;
                    BIT3    : r_IIC_SDO <= r_iic_byte_address[4] ;
                    BIT4    : r_IIC_SDO <= r_iic_byte_address[3] ;
                    BIT5    : r_IIC_SDO <= r_iic_byte_address[2] ;
                    BIT6    : r_IIC_SDO <= r_iic_byte_address[1] ;
                    BIT7    : r_IIC_SDO <= r_iic_byte_address[0] ;
                    ACK     : r_IIC_ACK <= iw_IIC_SDI ;
                    STOP    : r_IIC_SDO <= 1'b0 ;                               
                    default : r_IIC_SDO <= 1'b1 ;
                endcase
            end
            
            s_wr_data : begin
                case(s_iic)
                    IDLE    : r_IIC_SDO <= 1'b1 ;                               
                    START   : r_IIC_SDO <= 1'b0 ;                               
                    BIT0    : r_IIC_SDO <= r_iic_sdo_data_cache[r_iic_sda_num - r_iic_sda_cnt] ;
                    BIT1    : r_IIC_SDO <= r_iic_sdo_data_cache[r_iic_sda_num - r_iic_sda_cnt] ;
                    BIT2    : r_IIC_SDO <= r_iic_sdo_data_cache[r_iic_sda_num - r_iic_sda_cnt] ;
                    BIT3    : r_IIC_SDO <= r_iic_sdo_data_cache[r_iic_sda_num - r_iic_sda_cnt] ;
                    BIT4    : r_IIC_SDO <= r_iic_sdo_data_cache[r_iic_sda_num - r_iic_sda_cnt] ;
                    BIT5    : r_IIC_SDO <= r_iic_sdo_data_cache[r_iic_sda_num - r_iic_sda_cnt] ;
                    BIT6    : r_IIC_SDO <= r_iic_sdo_data_cache[r_iic_sda_num - r_iic_sda_cnt] ;
                    BIT7    : r_IIC_SDO <= r_iic_sdo_data_cache[r_iic_sda_num - r_iic_sda_cnt] ;
                    ACK     : r_IIC_ACK <= iw_IIC_SDI ;                                                 
                    STOP    : r_IIC_SDO <= 1'b0 ;                               
                    default : r_IIC_SDO <= 1'b1 ;                               
                endcase
            end
            
            s_rd_data : begin
                case(s_iic)
                    IDLE    : r_IIC_SDO <= 1'b1 ; 
                    START   : r_IIC_SDO <= 1'b0 ;
                    BIT0    : ;
                    BIT1    : ;
                    BIT2    : ;
                    BIT3    : ;
                    BIT4    : ;
                    BIT5    : ;
                    BIT6    : ;
                    BIT7    : ;
                    ACK     : if(!r_iic_sda_cnt)r_IIC_SDO <= 1'b1 ; else r_IIC_SDO <= 1'b0 ;
                    STOP    : r_IIC_SDO <= 1'b0 ;                               
                    default : r_IIC_SDO <= 1'b1 ; 
                endcase
            end
            
            default : ;
        endcase
    end
end

always@(posedge iw_iic_clk)begin
    if(iw_iic_rst)begin
        r_iic_sdi_data <= 1'b0 ;
    end
    else begin
        case(s_state)
            s_rd_data : begin
                case(s_iic)
                    IDLE    :  ; 
                    START   :  ;
                    BIT0    : r_iic_sdi_data[r_iic_sda_num - r_iic_sdi_cnt] <= iw_IIC_SDI ;
                    BIT1    : r_iic_sdi_data[r_iic_sda_num - r_iic_sdi_cnt] <= iw_IIC_SDI ;
                    BIT2    : r_iic_sdi_data[r_iic_sda_num - r_iic_sdi_cnt] <= iw_IIC_SDI ;
                    BIT3    : r_iic_sdi_data[r_iic_sda_num - r_iic_sdi_cnt] <= iw_IIC_SDI ;
                    BIT4    : r_iic_sdi_data[r_iic_sda_num - r_iic_sdi_cnt] <= iw_IIC_SDI ;
                    BIT5    : r_iic_sdi_data[r_iic_sda_num - r_iic_sdi_cnt] <= iw_IIC_SDI ;
                    BIT6    : r_iic_sdi_data[r_iic_sda_num - r_iic_sdi_cnt] <= iw_IIC_SDI ;
                    BIT7    : r_iic_sdi_data[r_iic_sda_num - r_iic_sdi_cnt] <= iw_IIC_SDI ;
                    ACK     : ;
                    STOP    : ;                               
                    default : ; 
                endcase
            end
            
            default : ;
        endcase
    end
end

always@(negedge iw_iic_clk)begin
    if(s_state == s_rd_data && s_iic == STOP)begin
        or_iic_sdi_data_rdy <= 1'b1 ;
    end
    else begin
        or_iic_sdi_data_rdy <= 1'b0 ;
    end
end

// r_iic_sda_cnt
always@(negedge iw_iic_clk)begin
    if(iw_iic_rst)begin
		r_iic_sda_cnt <= 1'b0 ;
	end
	if(s_state == s_wr_data || s_state == s_rd_data)begin
        if(s_iic == BIT7 && r_iic_sda_cnt == r_iic_sda_num)begin
            r_iic_sda_cnt <= 1'b0 ;
        end
        else if(s_iic == BIT0 || s_iic == BIT1 || s_iic == BIT2 || s_iic == BIT3 || s_iic == BIT4 || s_iic == BIT5 || s_iic == BIT6 || s_iic == BIT7)begin
            r_iic_sda_cnt <= r_iic_sda_cnt + 1'b1 ;
        end
	end
	else begin
	   r_iic_sda_cnt <= 1'b0 ;
	end
end

// r_iic_sdi_cnt
always@(negedge iw_iic_clk)begin
    if(iw_iic_rst)begin
		r_iic_sdi_cnt <= 1'b0 ;
	end
	else begin
        r_iic_sdi_cnt <= r_iic_sda_cnt ;
	end
end

// r_IIC_SCL_valid
always@(posedge iw_iic_clk)begin
    if(iw_iic_rst)begin
		r_IIC_SCL_valid <= 1'b0 ;
	end
	else if(s_iic == START)begin
		r_IIC_SCL_valid <= 1'b1 ;
	end
	else if(s_iic == STOP)begin
	   r_IIC_SCL_valid <= 1'b0 ;
	end
end

// r_IIC_T
always@(negedge iw_iic_clk)begin
    if(iw_iic_rst)begin
		r_IIC_T <= L_IIC_WR ;
	end
	else if(s_state == s_rd_data && s_iic == ACK)begin
		r_IIC_T <= L_IIC_WR ;
	end
	else if(s_state == s_rd_data && s_iic == STOP)begin
		r_IIC_T <= L_IIC_WR ;
	end
	else if(s_state == s_rd_data)begin
		r_IIC_T <= L_IIC_RD ;
	end
	else if(s_iic == ACK)begin
	    r_IIC_T <= L_IIC_RD ;
	end
	else begin
	    r_IIC_T <= L_IIC_WR ;
	end
end

// 状态打一拍
always@(posedge iw_iic_clk)begin
    if(iw_iic_rst)begin
        s_state_r <=  1'b0 ;
        s_iic_r   <= 1'b0 ;
	end
	else begin
	    s_state_r <= s_state ;
		s_iic_r   <= s_iic ;
	end
end

always@(posedge iw_iic_clk)begin
    if(&r_write_cycle_cnt)begin
	    or_IIC_WR_done <= 1'b1 ;
	end
	else begin
        or_IIC_WR_done <= 1'b0 ;
	end
end

always@(posedge iw_iic_clk)begin
    if(iw_iic_rst)begin
        r_write_cycle_valid <= 1'b0 ;
    end
    if(s_state_r == s_wr_data && s_state == s_IDLE)begin
        r_write_cycle_valid <= 1'b1 ;
    end
    else if(&r_write_cycle_cnt)begin
        r_write_cycle_valid <= 1'b0 ;
    end
end

always@(posedge iw_iic_clk)begin
    if(iw_iic_rst)begin
        r_write_cycle_cnt <= 1'b0 ;
    end
    if(r_write_cycle_valid)begin
        r_write_cycle_cnt <= r_write_cycle_cnt + 1'b1 ;
    end
end
// ---------------- module ---------------- //
IOBUF #(
   .DRIVE(12), // Specify the output drive strength
   .IBUF_LOW_PWR("TRUE"),  // Low Power - "TRUE", High Performance = "FALSE" 
   .IOSTANDARD("DEFAULT"), // Specify the I/O standard
   .SLEW("SLOW") // Specify the output slew rate
) IOBUF_inst (
   .O  (iw_IIC_SDI ), // Buffer output
   .IO (io_IIC_SDA ), // Buffer inout port (connect directly to top-level port)
   .I  (r_IIC_SDO  ), // Buffer input
   .T  (r_IIC_T    )  // 3-state enable input, high=input, low=output
);

endmodule