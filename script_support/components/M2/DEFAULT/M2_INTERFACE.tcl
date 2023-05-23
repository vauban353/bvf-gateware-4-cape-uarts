# Creating SmartDesign M2_INTERFACE
set sd_name {M2_INTERFACE}
create_smartdesign -sd_name ${sd_name}

auto_promote_pad_pins -promote_all 1

#-------------------------------------------------------------------------------
# Create top level ports
#-------------------------------------------------------------------------------

sd_create_scalar_port -sd_name ${sd_name} -port_name {PCLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PRESETN} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {ACLK} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {ARESETN} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIE_REF_CLK} -port_direction {IN}

sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIE_INTERRUPT} -port_direction {OUT}

sd_create_scalar_port -sd_name ${sd_name} -port_name {M2_PERST0n} -port_direction {OUT} 

#-------------------------------------------------------------------------------
# Instantiate components
#-------------------------------------------------------------------------------

sd_instantiate_component -sd_name ${sd_name} -component_name {PCIE_INITIATOR} -instance_name {PCIE_INITIATOR}
sd_instantiate_hdl_core -sd_name ${sd_name} -hdl_core_name {AXI_ADDRESS_SHIM} -instance_name {AXI_ADDRESS_SHIM_0} 
sd_instantiate_component -sd_name ${sd_name} -component_name {RECONFIGURATION_INTERFACE} -instance_name {RECONFIGURATION_INTERFACE_0}
sd_instantiate_component -sd_name ${sd_name} -component_name {FIC_1_INITIATOR} -instance_name {FIC1_INITIATOR}

# Add PCIE instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_PCIE_C0} -instance_name {PCIE}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PCIE:PCIE_0_INTERRUPT} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PCIE:PCIE_0_M_RDERR} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PCIE:PCIE_0_S_WDERR} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PCIE:PCIE_0_LTSSM}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PCIE:PCIE_0_M_WDERR}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PCIE:PCIE_0_S_RDERR}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PCIE:PCIE_0_HOT_RST_EXIT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PCIE:PCIE_0_DLUP_EXIT}

#-------------------------------------------------------------------------------
# Connections
#-------------------------------------------------------------------------------

sd_connect_pins -sd_name ${sd_name} -pin_names { "RECONFIGURATION_INTERFACE_0:PCLK" "PCIE:APB_S_PCLK" "PCLK"}
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_INITIATOR:ACLK" "PCIE:AXI_CLK" "ACLK" "FIC1_INITIATOR:ACLK"}

sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_INITIATOR:ARESETN" "PCIE:AXI_CLK_STABLE" "AXI_ADDRESS_SHIM_0:RESETN" "FIC1_INITIATOR:ARESETN" "ARESETN" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"RECONFIGURATION_INTERFACE_0:PRESETN" "PRESETN" "PCIE:APB_S_PRESET_N"}

sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE:AXI_0_MASTER" "AXI_ADDRESS_SHIM_0:AXI4_TARGET" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"AXI_ADDRESS_SHIM_0:AXI4_INITIATOR" "PCIE_INITIATOR:AXI4mmaster0" }

sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE:PCIESS_LANE0_DRI_SLAVE" "RECONFIGURATION_INTERFACE_0:Q0_LANE0_DRI" }

sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_REF_CLK" "PCIE:PCIESS_LANE0_CDR_REF_CLK_0" }

sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_INTERRUPT" "PCIE:PCIE_0_INTERRUPT_OUT" }

sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RECONFIGURATION_INTERFACE_0:PINTERRUPT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RECONFIGURATION_INTERFACE_0:PTIMEOUT}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RECONFIGURATION_INTERFACE_0:BUSERROR}

sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC1_INITIATOR:AXI4mslave0" "PCIE:AXI_0_SLAVE"} 

#-------------------------------------------------------------------------------
# Promote bus and signals to top level
#-------------------------------------------------------------------------------

sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {PCIE_INITIATOR:AXI4mslave0} -port_name {} 
sd_rename_port -sd_name ${sd_name} -current_port_name {AXI4mslave0} -new_port_name {AXI4_INITIATOR} 

sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {RECONFIGURATION_INTERFACE_0:APBS_SLAVE} -port_name {} 
sd_rename_port -sd_name ${sd_name} -current_port_name {APBS_SLAVE} -new_port_name {APB_TARGET} 

sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {PCIE:CLKS_FROM_TXPLL_TO_PCIE_0} -port_name {} 
sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {PCIE:PCIE_0_TL_CLK_125MHz} -port_name {} 

sd_connect_pin_to_port -sd_name {M2_INTERFACE} -pin_name {FIC1_INITIATOR:AXI4mmaster0} -port_name {} 
sd_rename_port -sd_name ${sd_name} -current_port_name {AXI4mmaster0} -new_port_name {AXI_TARGET} 
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {RECONFIGURATION_INTERFACE_0:PLL0_SW_DRI} 


sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {PCIE:INIT_DONE} -port_name {} 
sd_rename_port -sd_name ${sd_name} -current_port_name {INIT_DONE} -new_port_name {PCIE_INIT_DONE} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"M2_PERST0n" "PCIE:PCIE_0_PERST_OUT_N"}

sd_connect_pin_to_port -sd_name ${sd_name} -pin_name {RECONFIGURATION_INTERFACE_0:PSTRB} -port_name {}

#-------------------------------------------------------------------------------

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign M2_INTERFACE
generate_component -component_name ${sd_name}
