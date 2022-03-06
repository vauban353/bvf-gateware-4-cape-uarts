# Creating SmartDesign EMMC
set sd_name {EMMC}
create_smartdesign -sd_name ${sd_name}


sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_CMD} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_DQ} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {EMMC_RSTn} -port_direction {OUT}

sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {EMMC_CMD} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {EMMC_CLK} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {EMMC_DQ} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {EMMC_RSTn} -value {GND}

sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {EMMCDATA_0_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {EMMCDATA_1_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {EMMCDATA_2_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {EMMCDATA_3_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {EMMCDATA_4_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {EMMCDATA_5_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {EMMCDATA_6_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {EMMCDATA_7_BIBUF}

sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {EMMCDATA_0_BIBUF:D} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {EMMCDATA_1_BIBUF:D} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {EMMCDATA_2_BIBUF:D} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {EMMCDATA_3_BIBUF:D} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {EMMCDATA_4_BIBUF:D} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {EMMCDATA_5_BIBUF:D} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {EMMCDATA_6_BIBUF:D} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {EMMCDATA_7_BIBUF:D} -value {GND} 

sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {EMMCDATA_0_BIBUF:E} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {EMMCDATA_1_BIBUF:E} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {EMMCDATA_2_BIBUF:E} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {EMMCDATA_3_BIBUF:E} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {EMMCDATA_4_BIBUF:E} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {EMMCDATA_5_BIBUF:E} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {EMMCDATA_6_BIBUF:E} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {EMMCDATA_7_BIBUF:E} -value {GND} 

sd_mark_pins_unused -sd_name ${sd_name} -pin_names {EMMCDATA_0_BIBUF:Y} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {EMMCDATA_1_BIBUF:Y} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {EMMCDATA_2_BIBUF:Y} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {EMMCDATA_3_BIBUF:Y} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {EMMCDATA_4_BIBUF:Y} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {EMMCDATA_5_BIBUF:Y} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {EMMCDATA_6_BIBUF:Y} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {EMMCDATA_7_BIBUF:Y} 

sd_rename_port -sd_name ${sd_name} -current_port_name {PAD} -new_port_name {EMMC_DATA0}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_0} -new_port_name {EMMC_DATA1}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_1} -new_port_name {EMMC_DATA2}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_2} -new_port_name {EMMC_DATA3}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_3} -new_port_name {EMMC_DATA4}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_4} -new_port_name {EMMC_DATA5}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_5} -new_port_name {EMMC_DATA6}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_6} -new_port_name {EMMC_DATA7}


# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign EMMC
generate_component -component_name ${sd_name}