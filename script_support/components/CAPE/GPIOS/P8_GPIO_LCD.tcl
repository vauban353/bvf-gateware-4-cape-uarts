# Creating SmartDesign P8_GPIO_UPPER
set sd_name {P8_GPIO_UPPER}
create_smartdesign -sd_name ${sd_name}

auto_promote_pad_pins -promote_all 1

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


sd_instantiate_component -sd_name ${sd_name} -component_name {CoreGPIO_P8_UPPER} -instance_name {} 

sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {"[15:15]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {"[14:14]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {"[13:13]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {"[12:12]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {"[11:11]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {"[10:10]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {"[9:9]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {"[8:8]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {"[7:7]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {"[6:6]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {"[5:5]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {"[4:4]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {"[3:3]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {"[2:2]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {"[1:1]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OE} -pin_slices {"[0:0]"} 

sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {"[15:15]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {"[14:14]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {"[13:13]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {"[12:12]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {"[11:11]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {"[10:10]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {"[9:9]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {"[8:8]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {"[7:7]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {"[6:6]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {"[5:5]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {"[4:4]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {"[3:3]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {"[2:2]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {"[1:1]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_OUT} -pin_slices {"[0:0]"} 

sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {"[15:15]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {"[14:14]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {"[13:13]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {"[12:12]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {"[11:11]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {"[10:10]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {"[9:9]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {"[8:8]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {"[7:7]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {"[6:6]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {"[5:5]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {"[4:4]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {"[3:3]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {"[2:2]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {"[1:1]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:GPIO_IN} -pin_slices {"[0:0]"} 


sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[0:0]" "GPIO_0_BIBUF:D"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[0:0]" "GPIO_0_BIBUF:Y"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[0:0]" "GPIO_0_BIBUF:E"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[1:1]" "GPIO_1_BIBUF:D"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[1:1]" "GPIO_1_BIBUF:Y"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[1:1]" "GPIO_1_BIBUF:E"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[2:2]" "GPIO_2_BIBUF:D"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[2:2]" "GPIO_2_BIBUF:Y"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[2:2]" "GPIO_2_BIBUF:E"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[3:3]" "GPIO_3_BIBUF:D"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[3:3]" "GPIO_3_BIBUF:Y"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[3:3]" "GPIO_3_BIBUF:E"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[4:4]" "GPIO_4_BIBUF:D"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[4:4]" "GPIO_4_BIBUF:Y"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[4:4]" "GPIO_4_BIBUF:E"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[5:5]" "GPIO_5_BIBUF:D"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[5:5]" "GPIO_5_BIBUF:Y"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[5:5]" "GPIO_5_BIBUF:E"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[6:6]" "GPIO_6_BIBUF:D"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[6:6]" "GPIO_6_BIBUF:Y"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[6:6]" "GPIO_6_BIBUF:E"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[7:7]" "GPIO_7_BIBUF:D"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[7:7]" "GPIO_7_BIBUF:Y"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[7:7]" "GPIO_7_BIBUF:E"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[8:8]" "GPIO_8_BIBUF:D"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[8:8]" "GPIO_8_BIBUF:Y"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[8:8]" "GPIO_8_BIBUF:E"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[9:9]" "GPIO_9_BIBUF:D"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[9:9]" "GPIO_9_BIBUF:Y"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[9:9]" "GPIO_9_BIBUF:E"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[10:10]" "GPIO_10_BIBUF:D"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[10:10]" "GPIO_10_BIBUF:Y"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[10:10]" "GPIO_10_BIBUF:E"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[11:11]" "GPIO_11_BIBUF:D"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[11:11]" "GPIO_11_BIBUF:Y"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[11:11]" "GPIO_11_BIBUF:E"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[12:12]" "GPIO_12_BIBUF:D"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[12:12]" "GPIO_12_BIBUF:Y"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[12:12]" "GPIO_12_BIBUF:E"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[13:13]" "GPIO_13_BIBUF:D"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[13:13]" "GPIO_13_BIBUF:Y"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[13:13]" "GPIO_13_BIBUF:E"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[14:14]" "GPIO_14_BIBUF:D"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[14:14]" "GPIO_14_BIBUF:Y"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[14:14]" "GPIO_14_BIBUF:E"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OUT[15:15]" "GPIO_15_BIBUF:D"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_IN[15:15]" "GPIO_15_BIBUF:Y"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CoreGPIO_P8_UPPER_0:GPIO_OE[15:15]" "GPIO_15_BIBUF:E"} 

sd_rename_port -sd_name ${sd_name} -current_port_name {PAD} -new_port_name {GPIO_0_PAD}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_0} -new_port_name {GPIO_1_PAD}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_1} -new_port_name {GPIO_2_PAD}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_2} -new_port_name {GPIO_3_PAD}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_3} -new_port_name {GPIO_4_PAD}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_4} -new_port_name {GPIO_5_PAD}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_5} -new_port_name {GPIO_6_PAD}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_6} -new_port_name {GPIO_7_PAD}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_7} -new_port_name {GPIO_8_PAD}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_8} -new_port_name {GPIO_9_PAD}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_9} -new_port_name {GPIO_10_PAD}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_10} -new_port_name {GPIO_11_PAD}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_11} -new_port_name {GPIO_12_PAD}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_12} -new_port_name {GPIO_13_PAD}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_13} -new_port_name {GPIO_14_PAD}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_14} -new_port_name {GPIO_15_PAD}


sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:PRESETN} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:PCLK} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {CoreGPIO_P8_UPPER_0:APB_bif} -port_name {} 

sd_mark_pins_unused -sd_name ${sd_name} -pin_names {CoreGPIO_P8_UPPER_0:INT} 


# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign P8_GPIO_UPPER
generate_component -component_name ${sd_name}
