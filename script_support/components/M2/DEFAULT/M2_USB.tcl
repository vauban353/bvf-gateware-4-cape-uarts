# Creating SmartDesign M2_USB
set sd_name {M2_USB}
create_smartdesign -sd_name ${sd_name}


sd_create_scalar_port -sd_name ${sd_name} -port_name {USB1_CLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB1_DIR} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB1_NXT} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {USB1_STP} -port_direction {OUT}

sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND3} -instance_name {AND3_0}
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND3_0:Y" "USB1_STP"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND3_0:A" "USB1_CLK"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND3_0:B" "USB1_NXT"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"AND3_0:C" "USB1_DIR"} 

sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {USBDATA_0_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {USBDATA_1_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {USBDATA_2_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {USBDATA_3_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {USBDATA_4_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {USBDATA_5_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {USBDATA_6_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {USBDATA_7_BIBUF}

sd_connect_pins_to_constant -sd_name {M2_USB} -pin_names {USBDATA_0_BIBUF:D} -value {GND} 
sd_connect_pins_to_constant -sd_name {M2_USB} -pin_names {USBDATA_1_BIBUF:D} -value {GND} 
sd_connect_pins_to_constant -sd_name {M2_USB} -pin_names {USBDATA_2_BIBUF:D} -value {GND} 
sd_connect_pins_to_constant -sd_name {M2_USB} -pin_names {USBDATA_3_BIBUF:D} -value {GND} 
sd_connect_pins_to_constant -sd_name {M2_USB} -pin_names {USBDATA_4_BIBUF:D} -value {GND} 
sd_connect_pins_to_constant -sd_name {M2_USB} -pin_names {USBDATA_5_BIBUF:D} -value {GND} 
sd_connect_pins_to_constant -sd_name {M2_USB} -pin_names {USBDATA_6_BIBUF:D} -value {GND} 
sd_connect_pins_to_constant -sd_name {M2_USB} -pin_names {USBDATA_7_BIBUF:D} -value {GND} 

sd_connect_pins_to_constant -sd_name {M2_USB} -pin_names {USBDATA_0_BIBUF:E} -value {GND} 
sd_connect_pins_to_constant -sd_name {M2_USB} -pin_names {USBDATA_1_BIBUF:E} -value {GND} 
sd_connect_pins_to_constant -sd_name {M2_USB} -pin_names {USBDATA_2_BIBUF:E} -value {GND} 
sd_connect_pins_to_constant -sd_name {M2_USB} -pin_names {USBDATA_3_BIBUF:E} -value {GND} 
sd_connect_pins_to_constant -sd_name {M2_USB} -pin_names {USBDATA_4_BIBUF:E} -value {GND} 
sd_connect_pins_to_constant -sd_name {M2_USB} -pin_names {USBDATA_5_BIBUF:E} -value {GND} 
sd_connect_pins_to_constant -sd_name {M2_USB} -pin_names {USBDATA_6_BIBUF:E} -value {GND} 
sd_connect_pins_to_constant -sd_name {M2_USB} -pin_names {USBDATA_7_BIBUF:E} -value {GND} 

sd_mark_pins_unused -sd_name {M2_USB} -pin_names {USBDATA_0_BIBUF:Y} 
sd_mark_pins_unused -sd_name {M2_USB} -pin_names {USBDATA_1_BIBUF:Y} 
sd_mark_pins_unused -sd_name {M2_USB} -pin_names {USBDATA_2_BIBUF:Y} 
sd_mark_pins_unused -sd_name {M2_USB} -pin_names {USBDATA_3_BIBUF:Y} 
sd_mark_pins_unused -sd_name {M2_USB} -pin_names {USBDATA_4_BIBUF:Y} 
sd_mark_pins_unused -sd_name {M2_USB} -pin_names {USBDATA_5_BIBUF:Y} 
sd_mark_pins_unused -sd_name {M2_USB} -pin_names {USBDATA_6_BIBUF:Y} 
sd_mark_pins_unused -sd_name {M2_USB} -pin_names {USBDATA_7_BIBUF:Y} 

sd_rename_port -sd_name ${sd_name} -current_port_name {PAD} -new_port_name {USB1_DATA0}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_0} -new_port_name {USB1_DATA1}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_1} -new_port_name {USB1_DATA2}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_2} -new_port_name {USB1_DATA3}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_3} -new_port_name {USB1_DATA4}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_4} -new_port_name {USB1_DATA5}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_5} -new_port_name {USB1_DATA6}
sd_rename_port -sd_name ${sd_name} -current_port_name {PAD_6} -new_port_name {USB1_DATA7}


# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign M2_USB
generate_component -component_name ${sd_name}
