# Creating SmartDesign CAPE_DEFAULT_GPIOS
set sd_name {CAPE_DEFAULT_GPIOS}
create_smartdesign -sd_name ${sd_name}


# Add GPIO BIBUFs
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_0_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_1_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_2_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_3_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_4_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_5_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_6_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_7_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_8_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_9_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_10_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_11_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_12_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_13_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_14_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_15_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_16_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_17_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {GPIO_18_BIBUF}


sd_create_bus_port -sd_name {CAPE_DEFAULT_GPIOS} -port_name {GPIO_OUT} -port_direction {IN} -port_range {[0:18]}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OUT} -pin_slices {"[0:0]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OUT} -pin_slices {"[1:1]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OUT} -pin_slices {"[2:2]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OUT} -pin_slices {"[3:3]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OUT} -pin_slices {"[4:4]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OUT} -pin_slices {"[5:5]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OUT} -pin_slices {"[6:6]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OUT} -pin_slices {"[7:7]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OUT} -pin_slices {"[8:8]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OUT} -pin_slices {"[9:9]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OUT} -pin_slices {"[10:10]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OUT} -pin_slices {"[11:11]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OUT} -pin_slices {"[12:12]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OUT} -pin_slices {"[13:13]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OUT} -pin_slices {"[14:14]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OUT} -pin_slices {"[15:15]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OUT} -pin_slices {"[16:16]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OUT} -pin_slices {"[17:17]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OUT} -pin_slices {"[18:18]"}


sd_create_bus_port -sd_name {CAPE_DEFAULT_GPIOS} -port_name {GPIO_OE} -port_direction {IN} -port_range {[0:18]}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OE} -pin_slices {"[0:0]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OE} -pin_slices {"[1:1]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OE} -pin_slices {"[2:2]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OE} -pin_slices {"[3:3]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OE} -pin_slices {"[4:4]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OE} -pin_slices {"[5:5]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OE} -pin_slices {"[6:6]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OE} -pin_slices {"[7:7]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OE} -pin_slices {"[8:8]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OE} -pin_slices {"[9:9]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OE} -pin_slices {"[10:10]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OE} -pin_slices {"[11:11]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OE} -pin_slices {"[12:12]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OE} -pin_slices {"[13:13]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OE} -pin_slices {"[14:14]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OE} -pin_slices {"[15:15]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OE} -pin_slices {"[16:16]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OE} -pin_slices {"[17:17]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_OE} -pin_slices {"[18:18]"}


sd_create_bus_port -sd_name {CAPE_DEFAULT_GPIOS} -port_name {GPIO_IN} -port_direction {OUT} -port_range {[0:18]}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_IN} -pin_slices {"[0:0]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_IN} -pin_slices {"[1:1]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_IN} -pin_slices {"[2:2]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_IN} -pin_slices {"[3:3]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_IN} -pin_slices {"[4:4]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_IN} -pin_slices {"[5:5]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_IN} -pin_slices {"[6:6]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_IN} -pin_slices {"[7:7]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_IN} -pin_slices {"[8:8]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_IN} -pin_slices {"[9:9]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_IN} -pin_slices {"[10:10]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_IN} -pin_slices {"[11:11]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_IN} -pin_slices {"[12:12]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_IN} -pin_slices {"[13:13]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_IN} -pin_slices {"[14:14]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_IN} -pin_slices {"[15:15]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_IN} -pin_slices {"[16:16]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_IN} -pin_slices {"[17:17]"}
sd_create_pin_slices -sd_name {CAPE_DEFAULT_GPIOS} -pin_name {GPIO_IN} -pin_slices {"[18:18]"}


sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_0_BIBUF:D" "GPIO_OUT[0:0]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_1_BIBUF:D" "GPIO_OUT[1:1]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_2_BIBUF:D" "GPIO_OUT[2:2]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_3_BIBUF:D" "GPIO_OUT[3:3]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_4_BIBUF:D" "GPIO_OUT[4:4]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_5_BIBUF:D" "GPIO_OUT[5:5]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_6_BIBUF:D" "GPIO_OUT[6:6]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_7_BIBUF:D" "GPIO_OUT[7:7]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_8_BIBUF:D" "GPIO_OUT[8:8]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_9_BIBUF:D" "GPIO_OUT[9:9]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_10_BIBUF:D" "GPIO_OUT[10:10]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_11_BIBUF:D" "GPIO_OUT[11:11]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_12_BIBUF:D" "GPIO_OUT[12:12]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_13_BIBUF:D" "GPIO_OUT[13:13]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_14_BIBUF:D" "GPIO_OUT[14:14]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_15_BIBUF:D" "GPIO_OUT[15:15]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_16_BIBUF:D" "GPIO_OUT[16:16]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_17_BIBUF:D" "GPIO_OUT[17:17]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_18_BIBUF:D" "GPIO_OUT[18:18]"}


sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_0_BIBUF:E" "GPIO_OE[0:0]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_1_BIBUF:E" "GPIO_OE[1:1]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_2_BIBUF:E" "GPIO_OE[2:2]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_3_BIBUF:E" "GPIO_OE[3:3]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_4_BIBUF:E" "GPIO_OE[4:4]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_5_BIBUF:E" "GPIO_OE[5:5]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_6_BIBUF:E" "GPIO_OE[6:6]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_7_BIBUF:E" "GPIO_OE[7:7]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_8_BIBUF:E" "GPIO_OE[8:8]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_9_BIBUF:E" "GPIO_OE[9:9]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_10_BIBUF:E" "GPIO_OE[10:10]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_11_BIBUF:E" "GPIO_OE[11:11]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_12_BIBUF:E" "GPIO_OE[12:12]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_13_BIBUF:E" "GPIO_OE[13:13]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_14_BIBUF:E" "GPIO_OE[14:14]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_15_BIBUF:E" "GPIO_OE[15:15]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_16_BIBUF:E" "GPIO_OE[16:16]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_17_BIBUF:E" "GPIO_OE[17:17]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_18_BIBUF:E" "GPIO_OE[18:18]"}


sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_0_BIBUF:Y" "GPIO_IN[0:0]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_1_BIBUF:Y" "GPIO_IN[1:1]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_2_BIBUF:Y" "GPIO_IN[2:2]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_3_BIBUF:Y" "GPIO_IN[3:3]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_4_BIBUF:Y" "GPIO_IN[4:4]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_5_BIBUF:Y" "GPIO_IN[5:5]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_6_BIBUF:Y" "GPIO_IN[6:6]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_7_BIBUF:Y" "GPIO_IN[7:7]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_8_BIBUF:Y" "GPIO_IN[8:8]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_9_BIBUF:Y" "GPIO_IN[9:9]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_10_BIBUF:Y" "GPIO_IN[10:10]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_11_BIBUF:Y" "GPIO_IN[11:11]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_12_BIBUF:Y" "GPIO_IN[12:12]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_13_BIBUF:Y" "GPIO_IN[13:13]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_14_BIBUF:Y" "GPIO_IN[14:14]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_15_BIBUF:Y" "GPIO_IN[15:15]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_16_BIBUF:Y" "GPIO_IN[16:16]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_17_BIBUF:Y" "GPIO_IN[17:17]"}
sd_connect_pins -sd_name {CAPE_DEFAULT_GPIOS} -pin_names {"GPIO_18_BIBUF:Y" "GPIO_IN[18:18]"}


sd_rename_port -sd_name {CAPE_DEFAULT_GPIOS} -current_port_name {PAD} -new_port_name {GPIO_0_PAD}
sd_rename_port -sd_name {CAPE_DEFAULT_GPIOS} -current_port_name {PAD_0} -new_port_name {GPIO_1_PAD}
sd_rename_port -sd_name {CAPE_DEFAULT_GPIOS} -current_port_name {PAD_1} -new_port_name {GPIO_2_PAD}
sd_rename_port -sd_name {CAPE_DEFAULT_GPIOS} -current_port_name {PAD_2} -new_port_name {GPIO_3_PAD}
sd_rename_port -sd_name {CAPE_DEFAULT_GPIOS} -current_port_name {PAD_3} -new_port_name {GPIO_4_PAD}
sd_rename_port -sd_name {CAPE_DEFAULT_GPIOS} -current_port_name {PAD_4} -new_port_name {GPIO_5_PAD}
sd_rename_port -sd_name {CAPE_DEFAULT_GPIOS} -current_port_name {PAD_5} -new_port_name {GPIO_6_PAD}
sd_rename_port -sd_name {CAPE_DEFAULT_GPIOS} -current_port_name {PAD_6} -new_port_name {GPIO_7_PAD}
sd_rename_port -sd_name {CAPE_DEFAULT_GPIOS} -current_port_name {PAD_7} -new_port_name {GPIO_8_PAD}
sd_rename_port -sd_name {CAPE_DEFAULT_GPIOS} -current_port_name {PAD_8} -new_port_name {GPIO_9_PAD}
sd_rename_port -sd_name {CAPE_DEFAULT_GPIOS} -current_port_name {PAD_9} -new_port_name {GPIO_10_PAD}
sd_rename_port -sd_name {CAPE_DEFAULT_GPIOS} -current_port_name {PAD_10} -new_port_name {GPIO_11_PAD}
sd_rename_port -sd_name {CAPE_DEFAULT_GPIOS} -current_port_name {PAD_11} -new_port_name {GPIO_12_PAD}
sd_rename_port -sd_name {CAPE_DEFAULT_GPIOS} -current_port_name {PAD_12} -new_port_name {GPIO_13_PAD}
sd_rename_port -sd_name {CAPE_DEFAULT_GPIOS} -current_port_name {PAD_13} -new_port_name {GPIO_14_PAD}
sd_rename_port -sd_name {CAPE_DEFAULT_GPIOS} -current_port_name {PAD_14} -new_port_name {GPIO_15_PAD}
sd_rename_port -sd_name {CAPE_DEFAULT_GPIOS} -current_port_name {PAD_15} -new_port_name {GPIO_16_PAD}
sd_rename_port -sd_name {CAPE_DEFAULT_GPIOS} -current_port_name {PAD_16} -new_port_name {GPIO_17_PAD}
sd_rename_port -sd_name {CAPE_DEFAULT_GPIOS} -current_port_name {PAD_17} -new_port_name {GPIO_18_PAD}


# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign CAPE_DEFAULT_GPIOS
generate_component -component_name ${sd_name}
