puts "======== Add M.2 option: DEFAULT_NO_UART ========"


source script_support/components/M2/DEFAULT_NO_UART/PCIE_INITIATOR.tcl 
source script_support/components/M2/DEFAULT_NO_UART/RECONFIGURATION_INTERFACE.tcl 
source script_support/components/M2/DEFAULT_NO_UART/PF_PCIE_C0.tcl 
source script_support/components/FIC_1_INITIATOR.tcl 
source script_support/components/M2/DEFAULT_NO_UART/M2_INTERFACE.tcl

#-------------------------------------------------------------------------------
# Modify the CLOCKS_AND_RESET block to add the required PCIe clocks generation.
#-------------------------------------------------------------------------------

source script_support/components/CLOCKS_AND_RESETS/ADD_PCIE_CLOCKS_AND_RESETS.tcl 
sd_update_instance -sd_name ${top_level_name} -instance_name {CLOCKS_AND_RESETS}

#-------------------------------------------------------------------------------
# Create the M.2 interface block.
# This block will be stiched up to the rest of the design in the calling script.
#-------------------------------------------------------------------------------

set sd_name ${top_level_name}


#-------------------------------------------------------------------------------

#sd_create_scalar_port -sd_name ${sd_name} -port_name {M2_UART_TXD} -port_direction {OUT}
#sd_create_scalar_port -sd_name ${sd_name} -port_name {M2_UART_RXD} -port_direction {IN}
#
#sd_create_scalar_port -sd_name ${sd_name} -port_name {M2_UART_RTS} -port_direction {OUT}
#sd_create_scalar_port -sd_name ${sd_name} -port_name {M2_UART_CTS} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {M2_PERST0n} -port_direction {OUT}

#-------------------------------------------------------------------------------

sd_instantiate_component -sd_name ${sd_name} -component_name {M2_INTERFACE} -instance_name {M2_INTERFACE_0} 

#-------------------------------------------------------------------------------
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_1_ACLK" "M2_INTERFACE_0:ACLK"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:FIC_1_AXI4_TARGET" "M2_INTERFACE_0:AXI4_INITIATOR"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:FIC_1_AXI4_INITIATOR" "M2_INTERFACE_0:AXI_TARGET"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:M2_APB_MTARGET" "M2_INTERFACE_0:APB_TARGET"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:CLKS_TO_XCVR" "M2_INTERFACE_0:CLKS_FROM_TXPLL_TO_PCIE_0"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_3_PCLK" "M2_INTERFACE_0:PCLK"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_3_FABRIC_RESET_N" "M2_INTERFACE_0:PRESETN"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:FIC_1_FABRIC_RESET_N" "M2_INTERFACE_0:ARESETN"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:PCIe_REFERENCE_CLK" "M2_INTERFACE_0:PCIE_REF_CLK"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:PCIe_CLK_125MHz" "M2_INTERFACE_0:PCIE_0_TL_CLK_125MHz"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:PCIE_INIT_DONE" "M2_INTERFACE_0:PCIE_INIT_DONE"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"M2_INTERFACE_0:PCIE_INTERRUPT" "BVF_RISCV_SUBSYSTEM:PCIE_INT"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"M2_INTERFACE_0:M2_PERST0n" "M2_PERST0n"}

#sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:M2_UART_RXD" "M2_UART_RXD" }
#sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:M2_UART_TXD" "M2_UART_TXD" }
#sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:M2_UART_RTS" "M2_UART_RTS" }
#sd_connect_pins -sd_name ${sd_name} -pin_names {"BVF_RISCV_SUBSYSTEM:M2_UART_CTS" "M2_UART_CTS" }

sd_rename_port -sd_name ${sd_name} -current_port_name {PCIESS_LANE_RXD0_N} -new_port_name {M2_PER0_N}
sd_rename_port -sd_name ${sd_name} -current_port_name {PCIESS_LANE_RXD0_P} -new_port_name {M2_PER0_P}
sd_rename_port -sd_name ${sd_name} -current_port_name {PCIESS_LANE_TXD0_N} -new_port_name {M2_PET0_N}
sd_rename_port -sd_name ${sd_name} -current_port_name {PCIESS_LANE_TXD0_P} -new_port_name {M2_PET0_P}


