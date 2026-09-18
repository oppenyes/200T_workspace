`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/21 19:28:42
// Design Name: 
// Module Name: test_data_generator_module
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

module test_data_generator_module(
    input         iw_user_clk       ,
    input         iw_user_rst       ,
    input         iw_user_cmd_valid ,
    input  [63:0] iw_user_cmd_data  ,

    input         iw_test_clk          ,
    input         iw_test_rst          ,
    input         iw_test_wdata_rdy    ,
    output [63:0] ow_test_wdata        ,
    output        ow_test_wdata_valid  ,
    
    output        ow_test_rdata_pre_en ,
    output        ow_test_rdata_valid  ,
    input  [63:0] iw_test_rdata        ,
    input         iw_test_rdata_rdy    ,
    
    output        ow_test_rdata_error
);

// -------------------------------- localparam ------------------------------ //
localparam  s_test_data_IDLE  = 2'd0;
localparam  s_test_data_WRITE = 2'd1;
localparam  s_test_data_WAIT  = 2'd2;
localparam  s_test_data_READ  = 2'd3;

// -------------------------------- reg ------------------------------ //
reg        or_test_rdata_pre_en = 1'b0 ;
reg        or_test_rdata_valid  = 1'b0 ;
reg        or_test_rdata_error  = 1'b0 ;

reg [ 1:0] s_test_data          = 1'b0 ;

reg        r_test_data_en    = 1'b0 ;

reg [31:0] r_test_data_depth = 1'b0 ;

reg        r_test_data_valid = 1'b0 ;
reg [15:0] r_test_wdata_1    = 1'b0 ;
reg [15:0] r_test_wdata_0    = 1'b0 ;

reg [15:0] r_test_rdata_1   = 1'b0 ;
reg [15:0] r_test_rdata_0   = 1'b0 ;

// -------------------------------- wire ------------------------------ //
wire [63:0] ow_user_cmd_data ;
wire [31:0] w_test_rdata ;
// -------------------------------- assign ------------------------------ //
assign ow_test_rdata_pre_en = or_test_rdata_pre_en ;
assign ow_test_rdata_valid  = or_test_rdata_valid  ;
assign ow_test_rdata_error  = or_test_rdata_error  ;

assign ow_test_wdata = { r_test_wdata_1 , r_test_wdata_0 } ;
assign w_test_rdata  = { r_test_rdata_1 , r_test_rdata_0 } ;
assign ow_test_wdata_valid = r_test_data_valid ;

assign w_test_wdata_active = r_test_data_valid && iw_test_wdata_rdy ;
assign w_test_rdata_active = or_test_rdata_valid && iw_test_rdata_rdy ;
// -------------------------------- always ------------------------------ //
always@(posedge iw_test_clk)begin
    if(iw_test_rst)begin
        r_test_data_en    <= 1'b0 ;
        or_test_rdata_pre_en <= 1'b0 ;
        r_test_data_depth <= 1'b0 ;
    end
    else if(ow_user_cmd_valid)begin
        case(ow_user_cmd_data[63:32])
            32'hfd_d0b4_00 : begin r_test_data_en <= 1'b1 ; r_test_data_depth <= ow_user_cmd_data[31:0] ; end
            32'hfd_b6c1_00 : begin or_test_rdata_pre_en <= 1'b1 ; end
            default : begin
                r_test_data_en    <= 1'b0 ;
                or_test_rdata_pre_en <= 1'b0 ;
            end
        endcase
    end
    else begin
        r_test_data_en    <= 1'b0 ;
        or_test_rdata_pre_en <= 1'b0 ;
    end
end

always@(posedge iw_test_clk)begin
    if(iw_test_rst)begin
        s_test_data         <= s_test_data_IDLE ;
        r_test_wdata_1      <= 1'b0 ;
        r_test_wdata_0      <= 1'b0 ;
        r_test_rdata_1      <= 1'b0 ;
        r_test_rdata_0      <= 1'b0 ;
        r_test_data_valid   <= 1'b0 ;
        or_test_rdata_valid <= 1'b0 ;
        or_test_rdata_error <= 1'b0 ;
    end
    else begin
        case(s_test_data)
// ----------------------------- s_test_data_IDLE -------------------------------//
            s_test_data_IDLE : begin
                if(r_test_data_en)s_test_data <= s_test_data_WRITE ;
                if(or_test_rdata_pre_en)s_test_data <= s_test_data_READ ;
                r_test_data_valid   <= 1'b0 ;
                r_test_wdata_1      <= 1'b0 ;
                r_test_wdata_0      <= 1'b0 ;
                r_test_rdata_1      <= 1'b0 ;
                r_test_rdata_0      <= 1'b0 ;
                or_test_rdata_error <= 1'b0 ;
            end
// ----------------------------- s_test_data_WRITE -------------------------------//            
            s_test_data_WRITE : begin
                if(w_test_wdata_active && ow_test_wdata == r_test_data_depth)begin
                    s_test_data       <= s_test_data_IDLE ;
                    r_test_data_valid <= 1'b0 ;
                    r_test_wdata_1    <= 1'b0 ;
                    r_test_wdata_0    <= 1'b0 ;
                end
                else begin
                    r_test_data_valid <= 1'b1 ;
                    if(w_test_wdata_active)begin
                        r_test_wdata_0 <= r_test_wdata_0 + 1'b1 ;
                        if(&r_test_wdata_0)r_test_wdata_1 <= r_test_wdata_1 + 1'b1 ;
                    end
                end
            end
// ----------------------------- s_test_data_READ -------------------------------//                
            s_test_data_READ : begin
                if(iw_test_rdata_rdy && iw_test_rdata == r_test_data_depth)begin
                    s_test_data         <= s_test_data_IDLE ;
                    or_test_rdata_valid <= 1'b0 ;
                end
                else begin
                    or_test_rdata_valid <= 1'b1 ;
                end
                
                if(w_test_rdata_active)begin
                    if(w_test_rdata == iw_test_rdata)or_test_rdata_error <= 1'b0 ;
                    else or_test_rdata_error <= 1'b1 ;
                    
                    r_test_rdata_0 <= r_test_rdata_0 + 1'b1 ;
                    if(&r_test_rdata_0)r_test_rdata_1 <= r_test_rdata_1 + 1'b1 ;
                end
            end
            
            default : s_test_data <= s_test_data_IDLE ;
        endcase
    end
end

// -------------------------------- module ------------------------------ //
fifo_bits_cov fifo_bits_cov_inst(
    .wr_clk        (iw_user_clk       ) , // input wire wr_clk
    .din           (iw_user_cmd_data  ) , // input wire [191 : 0] din   
    .wr_en         (iw_user_cmd_valid ) , // input wire wr_en
    .full          (ow_user_cmd_full  ) , // output wire full
  
    .rd_clk        (iw_test_clk       ) , // input wire rd_clk
    .dout          (ow_user_cmd_data  ) , // output wire [191 : 0] dout
    .rd_en         (1'b1       ) , // input wire rd_en
    .empty         (           ) ,  // output wire empty
    .valid         (ow_user_cmd_valid   )    // output wire valid
);

endmodule

