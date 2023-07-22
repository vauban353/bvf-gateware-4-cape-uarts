# Creating SmartDesign P8_GPIO_LCD
set sd_name {P8_GPIO_LCD}
create_smartdesign -sd_name ${sd_name}

auto_promote_pad_pins -promote_all 1

# Add GPIO BIBUFs
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {LCD_GPIO_0_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {LCD_GPIO_1_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {LCD_GPIO_2_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {LCD_GPIO_3_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {LCD_GPIO_4_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {LCD_GPIO_5_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {LCD_GPIO_6_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {LCD_GPIO_7_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {LCD_GPIO_8_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {LCD_GPIO_9_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {LCD_GPIO_10_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {LCD_GPIO_11_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {LCD_GPIO_12_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {LCD_GPIO_13_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {LCD_GPIO_14_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {LCD_GPIO_15_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {LCD_GPIO_16_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {LCD_GPIO_17_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {LCD_GPIO_18_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {LCD_HSYNC_GPIO_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {LCD_AC_BIAS_GPIO_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {LCD_VSYNC_GPIO_BIBUF}
sd_instantiate_macro -sd_name ${sd_name} -macro_name {BIBUF} -instance_name {LCD_PCLK_GPIO_BIBUF}


sd_instantiate_component -sd_name {P8_GPIO_LCD} -component_name {CoreGPIO_LCD} -instance_name {} 

sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OE} -pin_slices {"[22:22]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OE} -pin_slices {"[21:21]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OE} -pin_slices {"[20:20]"} 

sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OE} -pin_slices {"[19:19]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OE} -pin_slices {"[18:18]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OE} -pin_slices {"[17:17]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OE} -pin_slices {"[16:16]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OE} -pin_slices {"[15:15]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OE} -pin_slices {"[14:14]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OE} -pin_slices {"[13:13]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OE} -pin_slices {"[12:12]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OE} -pin_slices {"[11:11]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OE} -pin_slices {"[10:10]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OE} -pin_slices {"[9:9]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OE} -pin_slices {"[8:8]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OE} -pin_slices {"[7:7]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OE} -pin_slices {"[6:6]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OE} -pin_slices {"[5:5]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OE} -pin_slices {"[4:4]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OE} -pin_slices {"[3:3]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OE} -pin_slices {"[2:2]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OE} -pin_slices {"[1:1]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OE} -pin_slices {"[0:0]"} 

sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OUT} -pin_slices {"[22:22]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OUT} -pin_slices {"[21:21]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OUT} -pin_slices {"[20:20]"} 

sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OUT} -pin_slices {"[19:19]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OUT} -pin_slices {"[18:18]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OUT} -pin_slices {"[17:17]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OUT} -pin_slices {"[16:16]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OUT} -pin_slices {"[15:15]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OUT} -pin_slices {"[14:14]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OUT} -pin_slices {"[13:13]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OUT} -pin_slices {"[12:12]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OUT} -pin_slices {"[11:11]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OUT} -pin_slices {"[10:10]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OUT} -pin_slices {"[9:9]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OUT} -pin_slices {"[8:8]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OUT} -pin_slices {"[7:7]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OUT} -pin_slices {"[6:6]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OUT} -pin_slices {"[5:5]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OUT} -pin_slices {"[4:4]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OUT} -pin_slices {"[3:3]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OUT} -pin_slices {"[2:2]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OUT} -pin_slices {"[1:1]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_OUT} -pin_slices {"[0:0]"} 

sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_IN} -pin_slices {"[22:22]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_IN} -pin_slices {"[21:21]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_IN} -pin_slices {"[20:20]"} 

sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_IN} -pin_slices {"[19:19]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_IN} -pin_slices {"[18:18]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_IN} -pin_slices {"[17:17]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_IN} -pin_slices {"[16:16]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_IN} -pin_slices {"[15:15]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_IN} -pin_slices {"[14:14]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_IN} -pin_slices {"[13:13]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_IN} -pin_slices {"[12:12]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_IN} -pin_slices {"[11:11]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_IN} -pin_slices {"[10:10]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_IN} -pin_slices {"[9:9]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_IN} -pin_slices {"[8:8]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_IN} -pin_slices {"[7:7]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_IN} -pin_slices {"[6:6]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_IN} -pin_slices {"[5:5]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_IN} -pin_slices {"[4:4]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_IN} -pin_slices {"[3:3]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_IN} -pin_slices {"[2:2]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_IN} -pin_slices {"[1:1]"} 
sd_create_pin_slices -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:GPIO_IN} -pin_slices {"[0:0]"} 


sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OUT[0:0]" "LCD_GPIO_0_BIBUF:D"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_IN[0:0]" "LCD_GPIO_0_BIBUF:Y"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OE[0:0]" "LCD_GPIO_0_BIBUF:E"} 

sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OUT[1:1]" "LCD_GPIO_1_BIBUF:D"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_IN[1:1]" "LCD_GPIO_1_BIBUF:Y"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OE[1:1]" "LCD_GPIO_1_BIBUF:E"} 

sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OUT[2:2]" "LCD_GPIO_2_BIBUF:D"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_IN[2:2]" "LCD_GPIO_2_BIBUF:Y"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OE[2:2]" "LCD_GPIO_2_BIBUF:E"} 

sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OUT[3:3]" "LCD_GPIO_3_BIBUF:D"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_IN[3:3]" "LCD_GPIO_3_BIBUF:Y"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OE[3:3]" "LCD_GPIO_3_BIBUF:E"} 

sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OUT[4:4]" "LCD_GPIO_4_BIBUF:D"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_IN[4:4]" "LCD_GPIO_4_BIBUF:Y"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OE[4:4]" "LCD_GPIO_4_BIBUF:E"} 

sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OUT[5:5]" "LCD_GPIO_5_BIBUF:D"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_IN[5:5]" "LCD_GPIO_5_BIBUF:Y"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OE[5:5]" "LCD_GPIO_5_BIBUF:E"} 

sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OUT[6:6]" "LCD_GPIO_6_BIBUF:D"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_IN[6:6]" "LCD_GPIO_6_BIBUF:Y"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OE[6:6]" "LCD_GPIO_6_BIBUF:E"} 

sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OUT[7:7]" "LCD_GPIO_7_BIBUF:D"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_IN[7:7]" "LCD_GPIO_7_BIBUF:Y"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OE[7:7]" "LCD_GPIO_7_BIBUF:E"} 

sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OUT[8:8]" "LCD_GPIO_8_BIBUF:D"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_IN[8:8]" "LCD_GPIO_8_BIBUF:Y"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OE[8:8]" "LCD_GPIO_8_BIBUF:E"} 

sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OUT[9:9]" "LCD_GPIO_9_BIBUF:D"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_IN[9:9]" "LCD_GPIO_9_BIBUF:Y"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OE[9:9]" "LCD_GPIO_9_BIBUF:E"} 

sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OUT[10:10]" "LCD_GPIO_10_BIBUF:D"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_IN[10:10]" "LCD_GPIO_10_BIBUF:Y"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OE[10:10]" "LCD_GPIO_10_BIBUF:E"} 

sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OUT[11:11]" "LCD_GPIO_11_BIBUF:D"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_IN[11:11]" "LCD_GPIO_11_BIBUF:Y"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OE[11:11]" "LCD_GPIO_11_BIBUF:E"} 

sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OUT[12:12]" "LCD_GPIO_12_BIBUF:D"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_IN[12:12]" "LCD_GPIO_12_BIBUF:Y"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OE[12:12]" "LCD_GPIO_12_BIBUF:E"} 

sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OUT[13:13]" "LCD_GPIO_13_BIBUF:D"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_IN[13:13]" "LCD_GPIO_13_BIBUF:Y"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OE[13:13]" "LCD_GPIO_13_BIBUF:E"} 

sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OUT[14:14]" "LCD_GPIO_14_BIBUF:D"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_IN[14:14]" "LCD_GPIO_14_BIBUF:Y"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OE[14:14]" "LCD_GPIO_14_BIBUF:E"} 

sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OUT[15:15]" "LCD_GPIO_15_BIBUF:D"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_IN[15:15]" "LCD_GPIO_15_BIBUF:Y"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OE[15:15]" "LCD_GPIO_15_BIBUF:E"} 

sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OUT[16:16]" "LCD_HSYNC_GPIO_BIBUF:D"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_IN[16:16]" "LCD_HSYNC_GPIO_BIBUF:Y"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OE[16:16]" "LCD_HSYNC_GPIO_BIBUF:E"} 

sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OUT[17:17]" "LCD_AC_BIAS_GPIO_BIBUF:D"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_IN[17:17]" "LCD_AC_BIAS_GPIO_BIBUF:Y"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OE[17:17]" "LCD_AC_BIAS_GPIO_BIBUF:E"} 

sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OUT[18:18]" "LCD_VSYNC_GPIO_BIBUF:D"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_IN[18:18]" "LCD_VSYNC_GPIO_BIBUF:Y"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OE[18:18]" "LCD_VSYNC_GPIO_BIBUF:E"} 

sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OUT[19:19]" "LCD_PCLK_GPIO_BIBUF:D"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_IN[19:19]" "LCD_PCLK_GPIO_BIBUF:Y"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OE[19:19]" "LCD_PCLK_GPIO_BIBUF:E"} 




sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OUT[20:20]" "LCD_GPIO_16_BIBUF:D"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_IN[20:20]" "LCD_GPIO_16_BIBUF:Y"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OE[20:20]" "LCD_GPIO_16_BIBUF:E"} 

sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OUT[21:21]" "LCD_GPIO_17_BIBUF:D"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_IN[21:21]" "LCD_GPIO_17_BIBUF:Y"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OE[21:21]" "LCD_GPIO_17_BIBUF:E"} 

sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OUT[22:22]" "LCD_GPIO_18_BIBUF:D"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_IN[22:22]" "LCD_GPIO_18_BIBUF:Y"} 
sd_connect_pins -sd_name {P8_GPIO_LCD} -pin_names {"CoreGPIO_LCD_0:GPIO_OE[22:22]" "LCD_GPIO_18_BIBUF:E"} 






sd_rename_port -sd_name {P8_GPIO_LCD} -current_port_name {PAD} -new_port_name {LCD_DATA0}
sd_rename_port -sd_name {P8_GPIO_LCD} -current_port_name {PAD_0} -new_port_name {LCD_DATA1}
sd_rename_port -sd_name {P8_GPIO_LCD} -current_port_name {PAD_1} -new_port_name {LCD_DATA2}
sd_rename_port -sd_name {P8_GPIO_LCD} -current_port_name {PAD_2} -new_port_name {LCD_DATA3}
sd_rename_port -sd_name {P8_GPIO_LCD} -current_port_name {PAD_3} -new_port_name {LCD_DATA4}
sd_rename_port -sd_name {P8_GPIO_LCD} -current_port_name {PAD_4} -new_port_name {LCD_DATA5}
sd_rename_port -sd_name {P8_GPIO_LCD} -current_port_name {PAD_5} -new_port_name {LCD_DATA6}
sd_rename_port -sd_name {P8_GPIO_LCD} -current_port_name {PAD_6} -new_port_name {LCD_DATA7}
sd_rename_port -sd_name {P8_GPIO_LCD} -current_port_name {PAD_7} -new_port_name {LCD_DATA8}
sd_rename_port -sd_name {P8_GPIO_LCD} -current_port_name {PAD_8} -new_port_name {LCD_DATA9}
sd_rename_port -sd_name {P8_GPIO_LCD} -current_port_name {PAD_9} -new_port_name {LCD_DATA10}
sd_rename_port -sd_name {P8_GPIO_LCD} -current_port_name {PAD_10} -new_port_name {LCD_DATA11}
sd_rename_port -sd_name {P8_GPIO_LCD} -current_port_name {PAD_11} -new_port_name {LCD_DATA12}
sd_rename_port -sd_name {P8_GPIO_LCD} -current_port_name {PAD_12} -new_port_name {LCD_DATA13}
sd_rename_port -sd_name {P8_GPIO_LCD} -current_port_name {PAD_13} -new_port_name {LCD_DATA14}
sd_rename_port -sd_name {P8_GPIO_LCD} -current_port_name {PAD_14} -new_port_name {LCD_DATA15}

sd_rename_port -sd_name {P8_GPIO_LCD} -current_port_name {PAD_15} -new_port_name {P8_19}
sd_rename_port -sd_name {P8_GPIO_LCD} -current_port_name {PAD_16} -new_port_name {P9_14}
sd_rename_port -sd_name {P8_GPIO_LCD} -current_port_name {PAD_17} -new_port_name {P9_16}
sd_rename_port -sd_name {P8_GPIO_LCD} -current_port_name {PAD_18} -new_port_name {LCD_PCLK}


sd_rename_port -sd_name {P8_GPIO_LCD} -current_port_name {PAD_19} -new_port_name {LCD_HSYNC}
sd_rename_port -sd_name {P8_GPIO_LCD} -current_port_name {PAD_20} -new_port_name {LCD_AC_BIAS}
sd_rename_port -sd_name {P8_GPIO_LCD} -current_port_name {PAD_21} -new_port_name {LCD_VSYNC}


sd_connect_pin_to_port -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:PRESETN} -port_name {} 
sd_connect_pin_to_port -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:PCLK} -port_name {} 
sd_connect_pin_to_port -sd_name {P8_GPIO_LCD} -pin_name {CoreGPIO_LCD_0:APB_bif} -port_name {} 

sd_mark_pins_unused -sd_name {P8_GPIO_LCD} -pin_names {CoreGPIO_LCD_0:INT} 


# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign P8_GPIO_LCD
generate_component -component_name ${sd_name}
