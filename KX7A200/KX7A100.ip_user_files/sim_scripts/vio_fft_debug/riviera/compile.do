vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../../KX7A100.gen/sources_1/ip/vio_fft_debug/hdl/verilog" "+incdir+../../../../KX7A100.gen/sources_1/ip/vio_fft_debug/hdl" \
"D:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../KX7A100.gen/sources_1/ip/vio_fft_debug/hdl/verilog" "+incdir+../../../../KX7A100.gen/sources_1/ip/vio_fft_debug/hdl" \
"../../../../KX7A100.gen/sources_1/ip/vio_fft_debug/sim/vio_fft_debug.v" \

vlog -work xil_defaultlib \
"glbl.v"

