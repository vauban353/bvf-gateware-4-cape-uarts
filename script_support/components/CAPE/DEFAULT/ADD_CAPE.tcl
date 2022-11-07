puts "======== Add cape option: DEFAULT ========"

#-------------------------------------------------------------------------------
# Build cape's submodules
#-------------------------------------------------------------------------------
source script_support/components/CAPE/DEFAULT/APB_BUS_CONVERTER.tcl
source script_support/components/CAPE/DEFAULT/P8_GPIO_LCD.tcl
source script_support/components/CAPE/DEFAULT/CAPE_DEFAULT_GPIOS.tcl
source script_support/components/CAPE/DEFAULT/CAPE_PWM.tcl
source script_support/components/CAPE/DEFAULT/CAPE.tcl

#-------------------------------------------------------------------------------
# Build the Cape module
#-------------------------------------------------------------------------------
set sd_name {B_V_F_BASE_DESIGN}

#-------------------------------------------------------------------------------
# Cape pins
#-------------------------------------------------------------------------------
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_19} -port_direction {OUT}

sd_create_scalar_port -sd_name ${sd_name} -port_name {P9_11} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P9_13} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P9_14} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P9_16} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P9_42} -port_direction {OUT}

#-------------------------------------------------------------------------------
# Instantiate.
#-------------------------------------------------------------------------------

sd_instantiate_component -sd_name ${sd_name} -component_name {CAPE} -instance_name {CAPE}

#-------------------------------------------------------------------------------
# Connections.
#-------------------------------------------------------------------------------

# Clocks and resets
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_3_PCLK" "CAPE:PCLK"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_3_FABRIC_RESET_N" "CAPE:PRESETN" }

sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:MMUART_4_TXD" "P9_13"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:MMUART_4_RXD" "P9_11"}

sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:GPIO_2_F2M" "CAPE:GPIO_IN"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:GPIO_2_M2F" "CAPE:GPIO_OUT"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:GPIO_2_OE_M2F" "CAPE:GPIO_OE"} 


sd_connect_pins -sd_name ${sd_name} -pin_names {"CAPE:P8_19" "P8_19"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAPE:P9_14" "P9_14"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAPE:P9_16" "P9_16"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"CAPE:P9_42" "P9_42"}

sd_connect_pins -sd_name ${sd_name} -pin_names {"CAPE:APB_SLAVE" "BVF_RISCV_SUBSYSTEM:CAPE_APB_MTARGET"}

