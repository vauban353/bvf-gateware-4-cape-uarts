set sd_name {B_V_F_BASE_DESIGN}

#-------------------------------------------------------------------------------
# Cape pins
#-------------------------------------------------------------------------------
sd_create_scalar_port -sd_name ${sd_name} -port_name {P9_11} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P9_13} -port_direction {OUT}


#-------------------------------------------------------------------------------
# Instantiate.
#-------------------------------------------------------------------------------

#-------------------------------------------------------------------------------
# Connections.
#-------------------------------------------------------------------------------


# Clocks and resets
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_3_PCLK" "CAPE:PCLK"}
#sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_3_FABRIC_RESET_N" "CAPE:PRESETN" }


sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:MMUART_4_TXD" "P9_13"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:MMUART_4_RXD" "P9_11"}



#-------------------------------------------------------------------------------

sd_mark_pins_unused -sd_name {B_V_F_BASE_DESIGN} -pin_names {BVF_RISCV_SUBSYSTEM:CAPE_APB_MTARGET} 

#-------------------------------------------------------------------------------

sd_connect_pins_to_constant -sd_name {B_V_F_BASE_DESIGN} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_F2M_0} -value {GND}
sd_connect_pins_to_constant -sd_name {B_V_F_BASE_DESIGN} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_F2M_1} -value {GND}
sd_connect_pins_to_constant -sd_name {B_V_F_BASE_DESIGN} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_F2M_2} -value {GND}
sd_connect_pins_to_constant -sd_name {B_V_F_BASE_DESIGN} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_F2M_3} -value {GND}
sd_connect_pins_to_constant -sd_name {B_V_F_BASE_DESIGN} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_F2M_4} -value {GND}
sd_connect_pins_to_constant -sd_name {B_V_F_BASE_DESIGN} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_F2M_5} -value {GND}
sd_connect_pins_to_constant -sd_name {B_V_F_BASE_DESIGN} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_F2M_6} -value {GND}
sd_connect_pins_to_constant -sd_name {B_V_F_BASE_DESIGN} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_F2M_7} -value {GND}
sd_connect_pins_to_constant -sd_name {B_V_F_BASE_DESIGN} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_F2M_8} -value {GND}
sd_connect_pins_to_constant -sd_name {B_V_F_BASE_DESIGN} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_F2M_9} -value {GND}
sd_connect_pins_to_constant -sd_name {B_V_F_BASE_DESIGN} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_F2M_10} -value {GND}
sd_connect_pins_to_constant -sd_name {B_V_F_BASE_DESIGN} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_F2M_11} -value {GND}
sd_connect_pins_to_constant -sd_name {B_V_F_BASE_DESIGN} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_F2M_12} -value {GND}
sd_connect_pins_to_constant -sd_name {B_V_F_BASE_DESIGN} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_F2M_13} -value {GND}
sd_connect_pins_to_constant -sd_name {B_V_F_BASE_DESIGN} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_F2M_14} -value {GND}
sd_connect_pins_to_constant -sd_name {B_V_F_BASE_DESIGN} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_F2M_15} -value {GND}
sd_connect_pins_to_constant -sd_name {B_V_F_BASE_DESIGN} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_F2M_16} -value {GND}
sd_connect_pins_to_constant -sd_name {B_V_F_BASE_DESIGN} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_F2M_17} -value {GND}
sd_connect_pins_to_constant -sd_name {B_V_F_BASE_DESIGN} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_F2M_18} -value {GND}


#-------------------------------------------------------------------------------

sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_OE_M2F_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_OE_M2F_1}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_OE_M2F_2}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_OE_M2F_3}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_OE_M2F_4}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_OE_M2F_5}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_OE_M2F_6}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_OE_M2F_7}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_OE_M2F_8}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_OE_M2F_9}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_OE_M2F_10}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_OE_M2F_11}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_OE_M2F_12}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_OE_M2F_13}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_OE_M2F_14}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_OE_M2F_15}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_OE_M2F_16}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_OE_M2F_17}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_OE_M2F_18}


sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F_1}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F_2}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F_3}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F_4}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F_5}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F_6}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F_7}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F_8}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F_9}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F_10}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F_11}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F_12}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F_13}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F_14}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F_15}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F_16}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F_17}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {BVF_RISCV_SUBSYSTEM:GPIO_2_M2F_18}


