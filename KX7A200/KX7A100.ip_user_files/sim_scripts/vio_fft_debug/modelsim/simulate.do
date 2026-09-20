onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -L xpm -lib xil_defaultlib xil_defaultlib.vio_fft_debug xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {vio_fft_debug.udo}

run -all

quit -force
