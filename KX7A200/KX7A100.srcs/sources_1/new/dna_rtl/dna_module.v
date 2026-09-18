`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/09/01 16:36:12
// Design Name: 
// Module Name: dna_module
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

module dna_module(
    input         iw_sys_clk ,
    input         iw_sys_rst ,
  
    input         iw_locked  ,

    output        ow_dna_ok
);

// ---------------- localparam ---------------- //
// ---------------- reg ---------------- //
reg       r_read  = 1'b0 ;
reg       r_shift = 1'b0 ;

reg [6:0] r_cnt       = 1'b0 ;
reg       r_cnt_valid = 1'b0 ;

reg [127:0] r_dna = 1'b0 ;
// ---------------- wire ---------------- //
wire        w_dna ;
wire [56:0] ow_dna ;
// ---------------- assign ---------------- //
assign ow_dna = r_dna[56:0] ;
// ---------------- always ---------------- //
always@(posedge iw_sys_clk)begin
    if(iw_sys_rst)begin
        r_read  <= 1'b0 ;
        r_shift <= 1'b0 ;
    end
    else begin
        if(r_cnt == 7'd0)begin
            r_read  <= 1'b1 ;
            r_shift <= 1'b0 ;
        end
        if(r_cnt == 7'd1)begin
            r_read  <= 1'b0 ;
            r_shift <= 1'b1 ;
        end
        if(&r_cnt)begin
            r_read  <= 1'b0 ;
            r_shift <= 1'b0 ;
        end
    end
end

always@(posedge iw_sys_clk)begin
    if(!iw_locked)begin
        r_cnt       <= 1'b0 ;
        r_cnt_valid <= 1'b0 ;
    end
    else if(iw_locked)begin
        if(&r_cnt)r_cnt_valid <= 1'b0 ;
        else r_cnt_valid <= 1'b1 ;
        
        if(r_cnt_valid && !(&r_cnt))begin
            r_cnt <= r_cnt + 1'b1 ;
        end
    end
end

always@(posedge iw_sys_clk)begin
    if(!iw_locked)begin
        r_dna <= 1'b0 ;
    end
    else if(r_cnt_valid)begin
        case(r_cnt)
            2  : r_dna[56] <= w_dna ;
            3  : r_dna[55] <= w_dna ;
            4  : r_dna[54] <= w_dna ;
            5  : r_dna[53] <= w_dna ;
            6  : r_dna[52] <= w_dna ;
            7  : r_dna[51] <= w_dna ;
            8  : r_dna[50] <= w_dna ;
            9  : r_dna[49] <= w_dna ;
            10 : r_dna[48] <= w_dna ;
            11 : r_dna[47] <= w_dna ;
            12 : r_dna[46] <= w_dna ;
            13 : r_dna[45] <= w_dna ;
            14 : r_dna[44] <= w_dna ;
            15 : r_dna[43] <= w_dna ;
            16 : r_dna[42] <= w_dna ;
            17 : r_dna[41] <= w_dna ;
            18 : r_dna[40] <= w_dna ;
            19 : r_dna[39] <= w_dna ;
            20 : r_dna[38] <= w_dna ;
            21 : r_dna[37] <= w_dna ;
            22 : r_dna[36] <= w_dna ;
            23 : r_dna[35] <= w_dna ;
            24 : r_dna[34] <= w_dna ;
            25 : r_dna[33] <= w_dna ;
            26 : r_dna[32] <= w_dna ;
            27 : r_dna[31] <= w_dna ;
            28 : r_dna[30] <= w_dna ;
            29 : r_dna[29] <= w_dna ;
            30 : r_dna[28] <= w_dna ;
            31 : r_dna[27] <= w_dna ;
            32 : r_dna[26] <= w_dna ;
            33 : r_dna[25] <= w_dna ;
            34 : r_dna[24] <= w_dna ;
            35 : r_dna[23] <= w_dna ;
            36 : r_dna[22] <= w_dna ;
            37 : r_dna[21] <= w_dna ;
            38 : r_dna[20] <= w_dna ;
            39 : r_dna[19] <= w_dna ;
            40 : r_dna[18] <= w_dna ;
            41 : r_dna[17] <= w_dna ;
            42 : r_dna[16] <= w_dna ;
            43 : r_dna[15] <= w_dna ;
            44 : r_dna[14] <= w_dna ;
            45 : r_dna[13] <= w_dna ;
            46 : r_dna[12] <= w_dna ;
            47 : r_dna[11] <= w_dna ;
            48 : r_dna[10] <= w_dna ;
            49 : r_dna[ 9] <= w_dna ;
            50 : r_dna[ 8] <= w_dna ;
            51 : r_dna[ 7] <= w_dna ;
            52 : r_dna[ 6] <= w_dna ;
            53 : r_dna[ 5] <= w_dna ;
            54 : r_dna[ 4] <= w_dna ;
            55 : r_dna[ 3] <= w_dna ;
            56 : r_dna[ 2] <= w_dna ;
            57 : r_dna[ 1] <= w_dna ;
            58 : r_dna[ 0] <= w_dna ;
            default : ;
        endcase
    end
end
// ---------------- module ---------------- //
vio_dna vio_dna_inst(
    .clk (iw_sys_clk) ,
    
    .probe_in0 (ow_dna)
);
// ---------------- Language Templates ---------------- //
DNA_PORT #(
   .SIM_DNA_VALUE(57'h123456789abcdef)  // Specifies a sample 57-bit DNA value for simulation
)
DNA_PORT_inst (
   .DOUT  (w_dna      ) , // 1-bit output: DNA output data.
   .CLK   (iw_sys_clk ) , // 1-bit input: Clock input.
   .DIN   (1'b0       ) , // 1-bit input: User data input pin.
   .READ  (r_read     ) , // 1-bit input: Active high load DNA, active low read input.
   .SHIFT (r_shift    )   // 1-bit input: Active high shift enable input.
);

endmodule
