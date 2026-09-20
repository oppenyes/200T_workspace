onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib vio_fft_debug_opt

do {wave.do}

view wave
view structure
view signals

do {vio_fft_debug.udo}

run -all

quit -force
