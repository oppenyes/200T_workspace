onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib ila_fft_debug_opt

do {wave.do}

view wave
view structure
view signals

do {ila_fft_debug.udo}

run -all

quit -force
