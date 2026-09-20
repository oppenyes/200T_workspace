onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+ila_fft_debug -L xpm -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ila_fft_debug xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {ila_fft_debug.udo}

run -all

endsim

quit -force
