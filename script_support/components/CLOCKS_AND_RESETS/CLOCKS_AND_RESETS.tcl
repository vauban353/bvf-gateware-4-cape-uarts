# Creating SmartDesign CLOCKS_AND_RESETS
set sd_name {CLOCKS_AND_RESETS}
create_smartdesign -sd_name ${sd_name}

# Disable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 0

# Create top level Scalar Ports
sd_create_scalar_port -sd_name ${sd_name} -port_name {EXT_RST_N} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {MSS_DLL_LOCKS} -port_direction {IN}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_0A_REFCLK_N} -port_direction {IN} -port_is_pad {1}
sd_create_scalar_port -sd_name ${sd_name} -port_name {XCVR_0A_REFCLK_P} -port_direction {IN} -port_is_pad {1}

sd_create_scalar_port -sd_name ${sd_name} -port_name {ADC_MCLK_4_915MHz} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {BIT_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_ACLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_ACLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_ACLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_PCLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_0_FABRIC_RESET_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_1_FABRIC_RESET_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_2_FABRIC_RESET_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {FIC_3_FABRIC_RESET_N} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {LOCK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIe_CLK_125MHz} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {PCIe_REFERENCE_CLK} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {REF_CLK_TO_LANE} -port_direction {OUT}



# Create top level Bus interface Ports
sd_create_bif_port -sd_name ${sd_name} -port_name {CLKS_TO_XCVR} -port_bif_vlnv {Actel:busdef.clock:PF_TXPLL_XCVR_CLK:1.0} -port_bif_role {master} -port_bif_mapping {\
"LOCK:LOCK" \
"BIT_CLK:BIT_CLK" \
"REF_CLK_TO_LANE:REF_CLK_TO_LANE" } 

# Add CLK_160MHz_to_CLK_80MHz instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CLK_DIV} -instance_name {CLK_160MHz_to_CLK_80MHz}



# Add FIC_0_RESET instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET} -instance_name {FIC_0_RESET}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_0_RESET:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_0_RESET:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_0_RESET:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_0_RESET:FF_US_RESTORE} -value {GND}



# Add FIC_1_RESET instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET} -instance_name {FIC_1_RESET}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_1_RESET:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_1_RESET:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_1_RESET:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_1_RESET:FF_US_RESTORE} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FIC_1_RESET:PLL_POWERDOWN_B}



# Add FIC_2_RESET_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET} -instance_name {FIC_2_RESET_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_2_RESET_0:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_2_RESET_0:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_2_RESET_0:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_2_RESET_0:FF_US_RESTORE} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FIC_2_RESET_0:PLL_POWERDOWN_B}



# Add FIC_3_RESET_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {CORERESET} -instance_name {FIC_3_RESET_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_3_RESET_0:BANK_x_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_3_RESET_0:BANK_y_VDDI_STATUS} -value {VCC}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_3_RESET_0:SS_BUSY} -value {GND}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {FIC_3_RESET_0:FF_US_RESTORE} -value {GND}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {FIC_3_RESET_0:PLL_POWERDOWN_B}



# Add FIC_PLL_LOCKs instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND2} -instance_name {FIC_PLL_LOCKs}



# Add FPGA_CCC_C0_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {FPGA_CCC_C0} -instance_name {FPGA_CCC_C0_0}



# Add GLITCHLESS_MUX instance
sd_instantiate_component -sd_name ${sd_name} -component_name {GLITCHLESS_MUX} -instance_name {GLITCHLESS_MUX}



# Add INIT_MONITOR_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {INIT_MONITOR} -instance_name {INIT_MONITOR_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:USRAM_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:SRAM_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:XCVR_INIT_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:USRAM_INIT_FROM_SNVM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:USRAM_INIT_FROM_UPROM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:USRAM_INIT_FROM_SPI_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:SRAM_INIT_FROM_SNVM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:SRAM_INIT_FROM_UPROM_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:SRAM_INIT_FROM_SPI_DONE}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {INIT_MONITOR_0:AUTOCALIB_DONE}



# Add OSCILLATOR_160MHz instance
sd_instantiate_component -sd_name ${sd_name} -component_name {OSCILLATOR_160MHz} -instance_name {OSCILLATOR_160MHz}



# Add PCIe_CLK_LOCK instance
sd_instantiate_macro -sd_name ${sd_name} -macro_name {AND2} -instance_name {PCIe_CLK_LOCK}



# Add PCIE_REF_CLK_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PCIE_REF_CLK} -instance_name {PCIE_REF_CLK_0}



# Add PF_CCC_ADC_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {PF_CCC_ADC} -instance_name {PF_CCC_ADC_0}
sd_mark_pins_unused -sd_name ${sd_name} -pin_names {PF_CCC_ADC_0:PLL_LOCK_0}
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {PF_CCC_ADC_0:PLL_POWERDOWN_N_0} -value {VCC}



# Add TRANSMIT_PLL_0 instance
sd_instantiate_component -sd_name ${sd_name} -component_name {TRANSMIT_PLL} -instance_name {TRANSMIT_PLL_0}



# Add scalar net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"ADC_MCLK_4_915MHz" "PF_CCC_ADC_0:OUT0_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_160MHz_to_CLK_80MHz:CLK_IN" "OSCILLATOR_160MHz:RCOSC_160MHZ_CLK_DIV" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLK_160MHz_to_CLK_80MHz:CLK_OUT" "GLITCHLESS_MUX:CLK0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"EXT_RST_N" "FIC_0_RESET:EXT_RST_N" "FIC_1_RESET:EXT_RST_N" "FIC_2_RESET_0:EXT_RST_N" "FIC_3_RESET_0:EXT_RST_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_ACLK" "FIC_0_RESET:CLK" "FPGA_CCC_C0_0:OUT0_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_1_ACLK" "FIC_1_RESET:CLK" "FPGA_CCC_C0_0:OUT1_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_2_ACLK" "FIC_2_RESET_0:CLK" "FPGA_CCC_C0_0:OUT2_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_PCLK" "FIC_3_RESET_0:CLK" "FPGA_CCC_C0_0:OUT3_FABCLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_FABRIC_RESET_N" "FIC_0_RESET:FABRIC_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_RESET:FPGA_POR_N" "FIC_1_RESET:FPGA_POR_N" "FIC_2_RESET_0:FPGA_POR_N" "FIC_3_RESET_0:FPGA_POR_N" "INIT_MONITOR_0:FABRIC_POR_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_RESET:INIT_DONE" "FIC_1_RESET:INIT_DONE" "FIC_2_RESET_0:INIT_DONE" "FIC_3_RESET_0:INIT_DONE" "INIT_MONITOR_0:DEVICE_INIT_DONE" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_RESET:PLL_LOCK" "FIC_1_RESET:PLL_LOCK" "FIC_2_RESET_0:PLL_LOCK" "FIC_3_RESET_0:PLL_LOCK" "FIC_PLL_LOCKs:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_0_RESET:PLL_POWERDOWN_B" "FPGA_CCC_C0_0:PLL_POWERDOWN_N_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_1_FABRIC_RESET_N" "FIC_1_RESET:FABRIC_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_2_FABRIC_RESET_N" "FIC_2_RESET_0:FABRIC_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_3_FABRIC_RESET_N" "FIC_3_RESET_0:FABRIC_RESET_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_PLL_LOCKs:A" "FPGA_CCC_C0_0:PLL_LOCK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FIC_PLL_LOCKs:B" "MSS_DLL_LOCKS" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"FPGA_CCC_C0_0:REF_CLK_0" "OSCILLATOR_160MHz:RCOSC_160MHZ_GL" "PF_CCC_ADC_0:REF_CLK_0" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GLITCHLESS_MUX:CLK1" "TRANSMIT_PLL_0:CLK_125" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GLITCHLESS_MUX:CLK_OUT" "PCIe_CLK_125MHz" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"GLITCHLESS_MUX:SEL" "PCIe_CLK_LOCK:Y" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"INIT_MONITOR_0:PCIE_INIT_DONE" "PCIe_CLK_LOCK:B" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_REF_CLK_0:REF_CLK" "PCIe_REFERENCE_CLK" "TRANSMIT_PLL_0:REF_CLK" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_REF_CLK_0:REF_CLK_PAD_N" "XCVR_0A_REFCLK_N" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIE_REF_CLK_0:REF_CLK_PAD_P" "XCVR_0A_REFCLK_P" }
sd_connect_pins -sd_name ${sd_name} -pin_names {"PCIe_CLK_LOCK:A" "TRANSMIT_PLL_0:PLL_LOCK" }


# Add bus interface net connections
sd_connect_pins -sd_name ${sd_name} -pin_names {"CLKS_TO_XCVR" "TRANSMIT_PLL_0:CLKS_TO_XCVR" }

# Re-enable auto promotion of pins of type 'pad'
auto_promote_pad_pins -promote_all 1
# Save the smartDesign
save_smartdesign -sd_name ${sd_name}
# Generate SmartDesign CLOCKS_AND_RESETS
generate_component -component_name ${sd_name}
