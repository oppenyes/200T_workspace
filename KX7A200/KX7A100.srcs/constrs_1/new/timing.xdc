# 15.625 MHz -> 100 MHz: overflow synchronizer first stage.
set_false_path -to [get_pins -quiet -of_objects [get_cells -quiet -hierarchical -filter {NAME =~ *rx_fifo_overflow_sync1_r_reg}] -filter {REF_PIN_NAME == D}]

# 100 MHz -> 15.625 MHz: CLEAR synchronizer first stage.
set_false_path -to [get_pins -quiet -of_objects [get_cells -quiet -hierarchical -filter {NAME =~ *dataset_clear_sync1_r_reg}] -filter {REF_PIN_NAME == D}]