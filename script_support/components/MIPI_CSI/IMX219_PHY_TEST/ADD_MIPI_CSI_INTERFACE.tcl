puts "======== Add MIPI CSI option: IMX219_PHY_TEST ========"

auto_promote_pad_pins -promote_all 1

source script_support/components/MIPI_CSI/IMX219_PHY_TEST/CAM_IOD_TIP_TOP/PF_IOD_GENERIC_RX_C0.tcl
source script_support/components/MIPI_CSI/IMX219_PHY_TEST/CAM_IOD_TIP_TOP/CORERESET_PF_C1.tcl
source script_support/components/MIPI_CSI/IMX219_PHY_TEST/CAM_IOD_TIP_TOP/CORERXIODBITALIGN_C1.tcl
source script_support/components/MIPI_CSI/IMX219_PHY_TEST/CAM_IOD_TIP_TOP/CAM_IOD_TIP_TOP.tcl

source script_support/components/MIPI_CSI/IMX219_PHY_TEST/CORERESET_PF_C2.tcl
source script_support/components/MIPI_CSI/IMX219_PHY_TEST/PF_CCC_C2.tcl
source script_support/components/MIPI_CSI/IMX219_PHY_TEST/mipicsi2rxdecoderPF_C0.tcl
source script_support/components/MIPI_CSI/IMX219_PHY_TEST/IMX219_IF_TOP.tcl


set sd_name ${top_level_name}

sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN32} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN33} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN34} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN35} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN36} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN37} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN38} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN39} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN40} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN41} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN42} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN43} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN44} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN45} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {P8_PIN46} -port_direction {OUT}
sd_create_scalar_port -sd_name ${sd_name} -port_name {CSI1_PWND} -port_direction {OUT}

sd_instantiate_component -sd_name ${sd_name} -component_name {IMX219_IF_TOP} -instance_name {IMX219_IF_TOP_0} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {IMX219_IF_TOP_0:DATA_OUT} -pin_slices {"[7:7]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {IMX219_IF_TOP_0:DATA_OUT} -pin_slices {"[6:6]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {IMX219_IF_TOP_0:DATA_OUT} -pin_slices {"[5:5]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {IMX219_IF_TOP_0:DATA_OUT} -pin_slices {"[4:4]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {IMX219_IF_TOP_0:DATA_OUT} -pin_slices {"[3:3]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {IMX219_IF_TOP_0:DATA_OUT} -pin_slices {"[2:2]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {IMX219_IF_TOP_0:DATA_OUT} -pin_slices {"[1:1]"} 
sd_create_pin_slices -sd_name ${sd_name} -pin_name {IMX219_IF_TOP_0:DATA_OUT} -pin_slices {"[0:0]"} 

sd_connect_pins -sd_name ${sd_name} -pin_names {"CLOCKS_AND_RESETS:DEVICE_INIT_DONE" "IMX219_IF_TOP_0:INIT_DONE"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMX219_IF_TOP_0:CAMCLK_RESET_N" "P8_PIN46"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMX219_IF_TOP_0:CAMERA_CLK" "P8_PIN45"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMX219_IF_TOP_0:FRAME_START" "P8_PIN44"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMX219_IF_TOP_0:FRAME_VALID" "P8_PIN43"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMX219_IF_TOP_0:LINE_VALID" "P8_PIN42"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMX219_IF_TOP_0:PARALLEL_CLOCK" "P8_PIN41"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMX219_IF_TOP_0:DATA_OUT[0:0]" "P8_PIN40"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMX219_IF_TOP_0:DATA_OUT[1:1]" "P8_PIN39"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMX219_IF_TOP_0:DATA_OUT[2:2]" "P8_PIN38"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMX219_IF_TOP_0:DATA_OUT[3:3]" "P8_PIN37"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMX219_IF_TOP_0:DATA_OUT[4:4]" "P8_PIN36"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMX219_IF_TOP_0:DATA_OUT[5:5]" "P8_PIN35"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMX219_IF_TOP_0:DATA_OUT[6:6]" "P8_PIN34"} 
sd_connect_pins -sd_name ${sd_name} -pin_names {"IMX219_IF_TOP_0:DATA_OUT[7:7]" "P8_PIN33"} 

sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {CSI1_PWND} -value {VCC}

sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {P8_PIN32} -value {GND} 
sd_connect_pins_to_constant -sd_name ${sd_name} -pin_names {IMX219_IF_TOP_0:TRNG_RST_N} -value {VCC} 

