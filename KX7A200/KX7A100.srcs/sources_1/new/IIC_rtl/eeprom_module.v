`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/16 22:25:30
// Design Name: 
// Module Name: eeprom_module
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

module eeprom_module#(
    parameter eeprom_memory = 1024
)(
    input          iw_sys_clk           ,
    input          iw_sys_rst           ,
    
    input  [63:0]  iw_user_cmd_data     ,
    input          iw_user_cmd_valid    ,

    input          iw_iic_clk           ,
    input          iw_iic_rst           ,
    
    output         iw_IIC_SDI           ,
    output         ow_IIC_SDO           ,
    
    output         ow_IIC_SCL           ,     
    inout          io_IIC_SDA
);

// ---------------- localparam ---------------- //
localparam [63:0] tx = 64'hc0_ee_d4_c2_d6_f1_0d_0a ;

// ---------------- reg ---------------- //
reg         r_iic_en            = 1'b0 ;         
reg [  6:0] r_iic_slave_address = 1'b0 ;
reg [ 16:0] r_iic_byte_address  = 1'b0 ;
reg [  7:0] r_iic_mode          = 1'b0 ; // [0] R/W
reg [  8:0] r_iic_sda_num       = 1'b0 ;
reg [511:0] r_iic_sdo_data      = 1'b0 ;

// ---------------- wire ---------------- //
wire [63:0] ow_user_cmd_data ;

wire         iw_iic_en            ;         
wire [  6:0] iw_iic_slave_address ;
wire [ 16:0] iw_iic_byte_address  ;
wire [  7:0] iw_iic_mode          ;
wire [  8:0] iw_iic_sda_num       ;
wire [511:0] iw_iic_sdo_data      ;

// ---------------- assign ---------------- //
assign iw_iic_en            = r_iic_en            ;         
assign iw_iic_slave_address = r_iic_slave_address ;
assign iw_iic_byte_address  = r_iic_byte_address  ;
assign iw_iic_mode          = r_iic_mode          ;
assign iw_iic_sda_num       = r_iic_sda_num       ;
assign iw_iic_sdo_data      = r_iic_sdo_data      ;

// ---------------- always ---------------- //
always@(posedge iw_iic_clk)begin
    if(iw_iic_rst)begin
        r_iic_en            <= 1'b0 ;
        r_iic_slave_address <= 1'b0 ;
        r_iic_byte_address  <= 1'b0 ;
        r_iic_mode          <= 1'b0 ;
        r_iic_sda_num       <= 1'b0 ;
        r_iic_sdo_data      <= 1'b0 ;
    end
    else if(ow_user_cmd_data_rdy)begin // ÃüÁî¿ØÖÆ ÓÅÏÈ
        case(ow_user_cmd_data)
            64'h4c45_44_30_b4f2_bfaa : begin
                r_iic_en            <= 1'b1 ;
                r_iic_slave_address <= 7'b1010_00_0 ;
                r_iic_byte_address  <= 17'b0_0000_0011_0100_0000 ;
                r_iic_mode          <= 8'b0000_0000 ;
                r_iic_sda_num       <= 9'd63 ;
                r_iic_sdo_data      <= tx ;
            end
            64'h4c45_44_31_b4f2_bfaa : begin
                r_iic_en            <= 1'b1 ;
                r_iic_slave_address <= 7'b1010_00_0 ;
                r_iic_byte_address  <= 17'b0_0000_0011_0100_0000 ;
                r_iic_mode          <= 8'b0000_0001 ;
                r_iic_sda_num       <= 9'd63 ;
                r_iic_sdo_data      <= tx ;
            end
            64'h4c45_44_32_b4f2_bfaa : begin
                r_iic_en            <= 1'b1 ;
                r_iic_slave_address <= 7'b1010_00_0 ;
                r_iic_byte_address  <= 17'b0_0000_0011_0100_0001 ;
                r_iic_mode          <= 8'b0000_0001 ;
                r_iic_sda_num       <= 9'd63 ;
                r_iic_sdo_data      <= tx ;
            end
            default : begin
                r_iic_en            <= 1'b0 ;
                r_iic_slave_address <= 1'b0 ;
                r_iic_byte_address  <= 1'b0 ;
                r_iic_mode          <= 1'b0 ;
                r_iic_sda_num       <= 1'b0 ;
                r_iic_sdo_data      <= 1'b0 ;
            end
        endcase
    end
    else begin
        r_iic_en            <= 1'b0 ;
        r_iic_slave_address <= 1'b0 ;
        r_iic_byte_address  <= 1'b0 ;
        r_iic_mode          <= 1'b0 ;
        r_iic_sda_num       <= 1'b0 ;
        r_iic_sdo_data      <= 1'b0 ;
    end
end

// ---------------- module ---------------- //
iic_module#(
    .eeprom_memory        (eeprom_memory        )
)iic_module_inst(
    .iw_sys_clk           (iw_sys_clk           ) ,   
    .iw_sys_rst           (iw_sys_rst           ) ,   

    .iw_iic_clk           (iw_iic_clk           ) ,
    .iw_iic_rst           (iw_iic_rst           ) ,

    .iw_iic_en            (iw_iic_en            ) ,
    .iw_iic_slave_address (iw_iic_slave_address ) , // [  6:0]
    .iw_iic_byte_address  (iw_iic_byte_address  ) , // [ 15:0]
    .iw_iic_mode          (iw_iic_mode          ) , // [  7:0]
    .iw_iic_sda_num       (iw_iic_sda_num       ) , // [  8:0]
    .iw_iic_sdo_data      (iw_iic_sdo_data      ) , // [511:0]
    .ow_iic_sdi_data      (ow_iic_sdi_data      ) , // [511:0]
    .or_iic_sdi_data_rdy  (ow_iic_sdi_data_rdy  ) , //
    .or_IIC_WR_done       (ow_IIC_WR_done       ) ,
    
    .iw_IIC_SDI           (iw_IIC_SDI           ) ,
    .r_IIC_SDO            (ow_IIC_SDO           ) ,
    
    .ow_IIC_SCL           (ow_IIC_SCL           ) ,     
    .io_IIC_SDA           (io_IIC_SDA           ) 
);

fifo_bits_cov user_cmd_cov_iic_clk_inst(
    .wr_clk        (iw_sys_clk        ) , 
    .din           (iw_user_cmd_data  ) , 
    .wr_en         (iw_user_cmd_valid ) , 
    .full          (                  ) , 
  
    .rd_clk        (iw_iic_clk        ) , 
    .dout          (ow_user_cmd_data  ) , 
    .rd_en         (1'b1              ) , 
    .empty         (                  ) ,  
    .valid         (ow_user_cmd_data_rdy)    
);

endmodule
