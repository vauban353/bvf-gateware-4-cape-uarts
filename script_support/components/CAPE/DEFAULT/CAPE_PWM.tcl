# Creating SmartDesign CAPE_PWM
set sd_name {CAPE_PWM}
create_smartdesign -sd_name ${sd_name}


create_and_configure_core -core_vlnv {Actel:DirectCore:corepwm:4.5.100} -component_name {corepwm_C1} -params {\
"APB_DWIDTH:32" "CONFIG_MODE:0" \
"DAC_MODE1:false" "DAC_MODE2:false" "DAC_MODE3:false" "DAC_MODE4:false" "DAC_MODE5:false" \
"DAC_MODE6:false" "DAC_MODE7:false" "DAC_MODE8:false" "DAC_MODE9:false" "DAC_MODE10:false" \
"DAC_MODE11:false" "DAC_MODE12:false" "DAC_MODE13:false" "DAC_MODE14:false" "DAC_MODE15:false" \
"DAC_MODE16:false" \
"FIXED_PERIOD:1" "FIXED_PERIOD_EN:false" "FIXED_PRESCALE:0" "FIXED_PRESCALE_EN:false" \
"FIXED_PWM_NEGEDGE1:0" "FIXED_PWM_NEGEDGE2:0" "FIXED_PWM_NEGEDGE3:0" "FIXED_PWM_NEGEDGE4:0" "FIXED_PWM_NEGEDGE5:0" \
"FIXED_PWM_NEGEDGE6:0" "FIXED_PWM_NEGEDGE7:0" "FIXED_PWM_NEGEDGE8:0" "FIXED_PWM_NEGEDGE9:0" "FIXED_PWM_NEGEDGE10:0" \
"FIXED_PWM_NEGEDGE11:0" "FIXED_PWM_NEGEDGE12:0" "FIXED_PWM_NEGEDGE13:0" "FIXED_PWM_NEGEDGE14:0" "FIXED_PWM_NEGEDGE15:0" \
"FIXED_PWM_NEGEDGE16:0" \
"FIXED_PWM_NEG_EN1:false" "FIXED_PWM_NEG_EN2:false" "FIXED_PWM_NEG_EN3:false" "FIXED_PWM_NEG_EN4:false" "FIXED_PWM_NEG_EN5:false" \
"FIXED_PWM_NEG_EN6:false" "FIXED_PWM_NEG_EN7:false" "FIXED_PWM_NEG_EN8:false" "FIXED_PWM_NEG_EN9:false" "FIXED_PWM_NEG_EN10:false" \
"FIXED_PWM_NEG_EN11:false" "FIXED_PWM_NEG_EN12:false" "FIXED_PWM_NEG_EN13:false" "FIXED_PWM_NEG_EN14:false" "FIXED_PWM_NEG_EN15:false" \
"FIXED_PWM_NEG_EN16:false" \
"FIXED_PWM_POSEDGE1:0" "FIXED_PWM_POSEDGE2:0" "FIXED_PWM_POSEDGE3:0" "FIXED_PWM_POSEDGE4:0" "FIXED_PWM_POSEDGE5:0" \
"FIXED_PWM_POSEDGE6:0" "FIXED_PWM_POSEDGE7:0" "FIXED_PWM_POSEDGE8:0" "FIXED_PWM_POSEDGE9:0" "FIXED_PWM_POSEDGE10:0" \
"FIXED_PWM_POSEDGE11:0" "FIXED_PWM_POSEDGE12:0" "FIXED_PWM_POSEDGE13:0" "FIXED_PWM_POSEDGE14:0" "FIXED_PWM_POSEDGE15:0" \
"FIXED_PWM_POSEDGE16:0" \
"FIXED_PWM_POS_EN1:false" "FIXED_PWM_POS_EN2:false" "FIXED_PWM_POS_EN3:false" "FIXED_PWM_POS_EN4:false" "FIXED_PWM_POS_EN5:false" \
"FIXED_PWM_POS_EN6:true" "FIXED_PWM_POS_EN7:true" "FIXED_PWM_POS_EN8:true" "FIXED_PWM_POS_EN9:true" "FIXED_PWM_POS_EN10:true" \
"FIXED_PWM_POS_EN11:true" "FIXED_PWM_POS_EN12:true" "FIXED_PWM_POS_EN13:true" "FIXED_PWM_POS_EN14:true" "FIXED_PWM_POS_EN15:true" \
"FIXED_PWM_POS_EN16:true" \
"PWM_NUM:5" \
"PWM_STRETCH_VALUE1:false" "PWM_STRETCH_VALUE2:false" "PWM_STRETCH_VALUE3:false" "PWM_STRETCH_VALUE4:false" "PWM_STRETCH_VALUE5:false" \
"PWM_STRETCH_VALUE6:false" "PWM_STRETCH_VALUE7:false" "PWM_STRETCH_VALUE8:false" "PWM_STRETCH_VALUE9:false" "PWM_STRETCH_VALUE10:false" \
"PWM_STRETCH_VALUE11:false" "PWM_STRETCH_VALUE12:false" "PWM_STRETCH_VALUE13:false" "PWM_STRETCH_VALUE14:false" "PWM_STRETCH_VALUE15:false" \
"PWM_STRETCH_VALUE16:false" \
"SEPARATE_PWM_CLK:false" \
"SHADOW_REG_EN1:false" "SHADOW_REG_EN2:false" "SHADOW_REG_EN3:false" "SHADOW_REG_EN4:false" "SHADOW_REG_EN5:false" \
"SHADOW_REG_EN6:false" "SHADOW_REG_EN7:false" "SHADOW_REG_EN8:false" "SHADOW_REG_EN9:false" \
"SHADOW_REG_EN10:false" "SHADOW_REG_EN11:false" "SHADOW_REG_EN12:false" "SHADOW_REG_EN13:false" \
"SHADOW_REG_EN14:false" "SHADOW_REG_EN15:false" "SHADOW_REG_EN16:false" \
"TACHINT_ACT_LEVEL:false" \
"TACH_EDGE1:false" "TACH_EDGE2:false" "TACH_EDGE3:false" "TACH_EDGE4:false" "TACH_EDGE5:false" \
"TACH_EDGE6:false" "TACH_EDGE7:false" "TACH_EDGE8:false" "TACH_EDGE9:false" "TACH_EDGE10:false" \
"TACH_EDGE11:false" "TACH_EDGE12:false" "TACH_EDGE13:false" "TACH_EDGE14:false" "TACH_EDGE15:false" \
"TACH_EDGE16:false" \
"TACH_NUM:1"} 

sd_instantiate_component -sd_name ${sd_name} -component_name {corepwm_C1} -instance_name {} 

sd_create_pin_slices -sd_name ${sd_name} -pin_name {corepwm_C1_0:PWM} -pin_slices {"[4:4]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {corepwm_C1_0:PWM} -pin_slices {"[3:3]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {corepwm_C1_0:PWM} -pin_slices {"[2:2]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {corepwm_C1_0:PWM} -pin_slices {"[1:1]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {corepwm_C1_0:PWM} -pin_slices {"[0:0]"} 

sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {corepwm_C1_0:APBslave} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {corepwm_C1_0:PRESETN} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {corepwm_C1_0:PCLK} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {corepwm_C1_0:PWM[0:0]} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {corepwm_C1_0:PWM[4:4]} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {corepwm_C1_0:PWM[3:3]} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {corepwm_C1_0:PWM[2:2]} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {corepwm_C1_0:PWM[1:1]} -port_name {} 

sd_rename_port -sd_name ${sd_name} -current_port_name {PWM_3} -new_port_name {PWM_4}
sd_rename_port -sd_name ${sd_name} -current_port_name {PWM_2} -new_port_name {PWM_3}
sd_rename_port -sd_name ${sd_name} -current_port_name {PWM_1} -new_port_name {PWM_2}
sd_rename_port -sd_name ${sd_name} -current_port_name {PWM_0} -new_port_name {PWM_1}
sd_rename_port -sd_name ${sd_name} -current_port_name {PWM} -new_port_name {PWM_0}


# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign CAPE_PWM
generate_component -component_name ${sd_name}
