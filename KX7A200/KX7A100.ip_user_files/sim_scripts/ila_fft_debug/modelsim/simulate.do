onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm -lib xil_defaultlib xil_defaultlib.ila_fft_debug xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {ila_fft_debug.udo}

run -all

quit -force
