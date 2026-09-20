vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr "+incdir+../../../../KX7A100.gen/sources_1/ip/vio_fft_debug/hdl/verilog" "+incdir+../../../../KX7A100.gen/sources_1/ip/vio_fft_debug/hdl" \
"../../../../KX7A100.gen/sources_1/ip/vio_fft_debug/sim/vio_fft_debug.v" \


vlog -work xil_defaultlib \
"glbl.v"

