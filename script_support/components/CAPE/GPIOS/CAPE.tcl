# Creating SmartDesign CAPE
set sd_name {CAPE}
create_smartdesign -sd_name ${sd_name}

#-------------------------------------------------------------------------------
# Create APB Bus
#-------------------------------------------------------------------------------
create_and_configure_core -core_vlnv {Actel:DirectCore:CoreAPB3:4.2.100} -component_name {CoreAPB3_CAPE} -params {\
"APBSLOT0ENABLE:false" "APBSLOT1ENABLE:true" "APBSLOT2ENABLE:true" "APBSLOT3ENABLE:false" \
"APBSLOT4ENABLE:false" "APBSLOT5ENABLE:false" "APBSLOT6ENABLE:false" "APBSLOT7ENABLE:false" \
"APBSLOT8ENABLE:false" "APBSLOT9ENABLE:false" "APBSLOT10ENABLE:false" "APBSLOT11ENABLE:false" \
"APBSLOT12ENABLE:false" "APBSLOT13ENABLE:false" "APBSLOT14ENABLE:false" "APBSLOT15ENABLE:false" \
"APB_DWIDTH:32" \
"IADDR_OPTION:0" \
"MADDR_BITS:24" \
"SC_0:false" "SC_1:false" "SC_2:false" "SC_3:false" "SC_4:false" "SC_5:false" \
"SC_6:false" "SC_7:false" "SC_8:false" "SC_9:false" "SC_10:false" "SC_11:false" \
"SC_12:false" "SC_13:false" "SC_14:false" \
"SC_15:false" \
"UPR_NIBBLE_POSN:5"}

sd_instantiate_component -sd_name {CAPE} -component_name {CoreAPB3_CAPE} -instance_name {} 

#-------------------------------------------------------------------------------
# Create APB Bus Converter
#-------------------------------------------------------------------------------
sd_instantiate_component -sd_name ${sd_name} -component_name {APB_BUS_CONVERTER} -instance_name {APB_BUS_CONVERTER_0}

#-------------------------------------------------------------------------------
# Add Default Cape GPIOs
#-------------------------------------------------------------------------------
sd_instantiate_component -sd_name ${sd_name} -component_name {CAPE_DEFAULT_GPIOS} -instance_name {CAPE_DEFAULT_GPIOS}

sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {CAPE_DEFAULT_GPIOS:GPIO_OUT} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {CAPE_DEFAULT_GPIOS:GPIO_OE} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {CAPE_DEFAULT_GPIOS:GPIO_IN} -port_name {} 

sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_0_PAD} -new_port_name {P8_PIN3_USER_LED_0}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_1_PAD} -new_port_name {P8_PIN4_USER_LED_1}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_2_PAD} -new_port_name {P8_PIN5_USER_LED_2}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_3_PAD} -new_port_name {P8_PIN6_USER_LED_3}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_4_PAD} -new_port_name {P8_PIN7_USER_LED_4}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_5_PAD} -new_port_name {P8_PIN8_USER_LED_5}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_6_PAD} -new_port_name {P8_PIN9_USER_LED_6}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_7_PAD} -new_port_name {P8_PIN10_USER_LED_7}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_8_PAD} -new_port_name {P8_PIN11_USER_LED_8}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_9_PAD} -new_port_name {P8_PIN12_USER_LED_9}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_10_PAD} -new_port_name {P8_PIN13_USER_LED_10}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_11_PAD} -new_port_name {P8_PIN14_USER_LED_11}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_12_PAD} -new_port_name {P8_PIN15}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_13_PAD} -new_port_name {P8_PIN16}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_14_PAD} -new_port_name {P8_PIN17}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_15_PAD} -new_port_name {P8_PIN18}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_16_PAD} -new_port_name {P8_PIN19}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_17_PAD} -new_port_name {P8_PIN20}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_18_PAD} -new_port_name {P8_PIN21}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_19_PAD} -new_port_name {P8_PIN22}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_20_PAD} -new_port_name {P8_PIN23}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_21_PAD} -new_port_name {P8_PIN24}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_22_PAD} -new_port_name {P8_PIN25}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_23_PAD} -new_port_name {P8_PIN26}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_24_PAD} -new_port_name {P8_PIN27}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_25_PAD} -new_port_name {P8_PIN28}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_26_PAD} -new_port_name {P8_PIN29}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_27_PAD} -new_port_name {P8_PIN30}


#-------------------------------------------------------------------------------
# P8
#-------------------------------------------------------------------------------
sd_instantiate_component -sd_name ${sd_name} -component_name {P8_GPIO_UPPER} -instance_name {P8_GPIO_UPPER_0}

sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {P8_GPIO_UPPER_0:PRESETN} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {P8_GPIO_UPPER_0:PCLK} -port_name {} 

sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_0_PAD} -new_port_name {P8_PIN31}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_1_PAD} -new_port_name {P8_PIN32}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_2_PAD} -new_port_name {P8_PIN33}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_3_PAD} -new_port_name {P8_PIN34}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_4_PAD} -new_port_name {P8_PIN35}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_5_PAD} -new_port_name {P8_PIN36}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_6_PAD} -new_port_name {P8_PIN37}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_7_PAD} -new_port_name {P8_PIN38}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_8_PAD} -new_port_name {P8_PIN39}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_9_PAD} -new_port_name {P8_PIN40}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_10_PAD} -new_port_name {P8_PIN41}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_11_PAD} -new_port_name {P8_PIN42}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_12_PAD} -new_port_name {P8_PIN43}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_13_PAD} -new_port_name {P8_PIN44}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_14_PAD} -new_port_name {P8_PIN45}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_15_PAD} -new_port_name {P8_PIN46}

#-------------------------------------------------------------------------------
# P9
#-------------------------------------------------------------------------------
sd_instantiate_component -sd_name ${sd_name} -component_name {P9_GPIO} -instance_name {P9_GPIO_0}

sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_0_PAD} -new_port_name {P9_PIN11}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_1_PAD} -new_port_name {P9_PIN12}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_2_PAD} -new_port_name {P9_PIN13}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_3_PAD} -new_port_name {P9_PIN14}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_4_PAD} -new_port_name {P9_PIN15}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_5_PAD} -new_port_name {P9_PIN16}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_6_PAD} -new_port_name {P9_PIN17}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_7_PAD} -new_port_name {P9_PIN18}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_8_PAD} -new_port_name {P9_PIN21}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_9_PAD} -new_port_name {P9_PIN22}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_10_PAD} -new_port_name {P9_PIN23}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_11_PAD} -new_port_name {P9_PIN24}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_12_PAD} -new_port_name {P9_PIN25}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_13_PAD} -new_port_name {P9_PIN26}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_14_PAD} -new_port_name {P9_PIN27}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_15_PAD} -new_port_name {P9_PIN28}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_16_PAD} -new_port_name {P9_PIN29}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_17_PAD} -new_port_name {P9_PIN30}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_18_PAD} -new_port_name {P9_PIN31}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_19_PAD} -new_port_name {P9_PIN41}
sd_rename_port -sd_name ${sd_name} -current_port_name {GPIO_20_PAD} -new_port_name {P9_PIN42}

#-------------------------------------------------------------------------------
# Connections
#-------------------------------------------------------------------------------
sd_connect_pins -sd_name ${sd_name} -pin_names {"PRESETN" "P9_GPIO_0:PRESETN"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCLK" "P9_GPIO_0:PCLK"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"P8_GPIO_UPPER_0:APB_bif" "CoreAPB3_CAPE_0:APBmslave1"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"P9_GPIO_0:APB_bif" "CoreAPB3_CAPE_0:APBmslave2"} 

sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {APB_BUS_CONVERTER_0:APB_SLAVE} -port_name {} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"APB_BUS_CONVERTER_0:APB_MASTER" "CoreAPB3_CAPE_0:APB3mmaster"} 


# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign CAPE
generate_component -component_name ${sd_name}
