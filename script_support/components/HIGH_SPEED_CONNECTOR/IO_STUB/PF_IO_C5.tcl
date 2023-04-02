# Exporting Component Description of PF_IO_C5 to TCL
# Family: PolarFireSoC
# Part Number: MPFS025T-FCVG484_EVALE
# Create and Configure the core component PF_IO_C5
create_and_configure_core -core_vlnv {Actel:SgCore:PF_IO:*} -component_name {PF_IO_C5} -params {\
"DIFFERENTIAL:true"  \
"DIRECTION:2"  \
"DYN_DELAY_LINE_EN:false"  \
"INPUT_MODE:2"  \
"LVDS_FAILSAFE_EN:false"  \
"OUTPUT_ENABLE_MODE:2"  \
"OUTPUT_MODE:2"   }
# Exporting Component Description of PF_IO_C5 to TCL done
