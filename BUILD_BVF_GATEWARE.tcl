#
# This is based on the Icicle Kit Refernece Design TCL script
#

#
# // Check Libero version and path length to verify project can be created
#

set libero_release [split [get_libero_version] .]

if {[string compare [lindex $libero_release 0] "2022"] == 0 && [string compare [lindex $libero_release 1] "3"] == 0} {
    puts "Libero v2022.2 detected."
} else {
    error "Incorrect Libero version detected. Please use Libero v2022.2 to run these scripts."
}

if { [lindex $tcl_platform(os) 0]  == "Windows" } {
    if {[string length [pwd]] < 90} {
        puts "Project path length ok."
    } else {
        error "Path to project is too long, please reduce the path and try again."
    }
}

#
# // Process arguments
#

if { $::argc > 0 } {
    set i 1
    foreach arg $::argv {
        if {[string match "*:*" $arg]} {
            set temp [split $arg ":"]
            puts "Setting parameter [lindex $temp 0] to [lindex $temp 1]"
            set [lindex $temp 0] "[lindex $temp 1]"
        } else {
            set $arg 1
            puts "set $arg to 1"
        }
        incr i
    }
} else {
    puts "no command line argument passed"
}

#
# // Set required variables and add functions
#

set install_loc [defvar_get -name ACTEL_SW_DIR]
set mss_config_loc "$install_loc/bin64/pfsoc_mss"
set local_dir [pwd]
set constraint_path ./script_support/constraints
set project_name "BVF_GATEWARE_025T"

if {[info exists CAPE_OPTION]} {
    set cape_option "$CAPE_OPTION"
} else {
    set cape_option "DEFAULT"
}
puts "Cape options selected: $cape_option"

if {[info exists M2_OPTION]} {
    set m2_option "$M2_OPTION"
} else {
    set m2_option "DEFAULT"
}
puts "M.2 option selected: $m2_option"

if {[info exists HIGH_SPEED_CONN_OPTION]} {
    set high_speed_conn_option "$HIGH_SPEED_CONN_OPTION"
} else {
    set high_speed_conn_option "NONE"
}
puts "High speed connector option option selected: $high_speed_conn_option"

if {[info exists MIPI_CSI_OPTION]} {
    set mipi_csi_option "$MIPI_CSI_OPTION"
} else {
    set mipi_csi_option "NONE"
}
puts "MIPI CSI option option selected: $mipi_csi_option"

if {[info exists PROJECT_LOCATION]} {
    set project_dir "$PROJECT_LOCATION"
} else {
    set project_dir "$local_dir/$project_name"
}


source ./script_support/additional_configurations/functions.tcl

#
# // Create Libero project
#

new_project \
    -location $project_dir \
    -name $project_name \
    -project_description {} \
    -block_mode 0 \
    -standalone_peripheral_initialization 0 \
    -instantiate_in_smartdesign 1 \
    -ondemand_build_dh 1 \
    -use_relative_path 0 \
    -linked_files_root_dir_env {} \
    -hdl {VERILOG} \
    -family {PolarFireSoC} \
    -die {MPFS025T} \
    -package {FCVG484} \
    -speed {STD} \
    -die_voltage {1.0} \
    -part_range {EXT} \
    -adv_options {IO_DEFT_STD:LVCMOS 1.8V} \
    -adv_options {RESTRICTPROBEPINS:0} \
    -adv_options {RESTRICTSPIPINS:0} \
    -adv_options {SYSTEM_CONTROLLER_SUSPEND_MODE:0} \
    -adv_options {TARGETDEVICESFORMIGRATION:MPFS095T;MPFS160T;MPFS095TL;MPFS160TL;} \
    -adv_options {TEMPR:EXT} \
    -adv_options {VCCI_1.2_VOLTR:EXT} \
    -adv_options {VCCI_1.5_VOLTR:EXT} \
    -adv_options {VCCI_1.8_VOLTR:EXT} \
    -adv_options {VCCI_2.5_VOLTR:EXT} \
    -adv_options {VCCI_3.3_VOLTR:EXT} \
    -adv_options {VOLTR:EXT}

#
# // Download required cores
#

download_core -vlnv {Actel:SgCore:PF_OSC:1.0.102} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:SgCore:PF_CCC:*} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:DirectCore:CORERESET_PF:2.3.100} -location {www.microchip-ip.com/repositories/DirectCore}
download_core -vlnv {Microsemi:SgCore:PFSOC_INIT_MONITOR:1.0.304} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:DirectCore:COREAXI4INTERCONNECT:2.8.103} -location {www.microchip-ip.com/repositories/DirectCore}
download_core -vlnv {Actel:SgCore:PF_CLK_DIV:1.0.103} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:SgCore:PF_DRI:1.1.104} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:SgCore:PF_NGMUX:1.0.101} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:SgCore:PF_PCIE:*} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:SgCore:PF_TX_PLL:2.0.300} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:SgCore:PF_XCVR_REF_CLK:1.0.103} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:DirectCore:CoreAPB3:4.2.100} -location {www.microchip-ip.com/repositories/DirectCore}
#download_core -vlnv {Actel:DirectCore:COREAXI4DMACONTROLLER:2.0.100} -location {www.microchip-ip.com/repositories/DirectCore}
download_core -vlnv {Actel:DirectCore:CoreGPIO:3.2.102} -location {www.microchip-ip.com/repositories/DirectCore}
download_core -vlnv {Actel:SystemBuilder:PF_SRAM_AHBL_AXI:1.2.108} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:Simulation:CLK_GEN:1.0.1} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:Simulation:RESET_GEN:1.0.1} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:DirectCore:corepwm:4.5.100} -location {www.microchip-ip.com/repositories/DirectCore} 
download_core -vlnv {Actel:DirectCore:COREI2C:7.2.101} -location {www.microchip-ip.com/repositories/DirectCore} 
download_core -vlnv {Actel:DirectCore:CoreUARTapb:5.7.100} -location {www.microchip-ip.com/repositories/DirectCore} 
download_core -vlnv {Actel:SystemBuilder:PF_IOD_GENERIC_RX:2.1.109} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:SgCore:PF_IO:2.0.104} -location {www.microchip-ip.com/repositories/SgCore}
download_core -vlnv {Actel:SystemBuilder:PF_XCVR_ERM:3.1.200} -location {www.microchip-ip.com/repositories/SgCore}

#
# // Generate base design
#

source ./script_support/B_V_F_recursive.tcl

#
# // Import I/O constraints
#

set import_pdc_files "-io_pdc \"./constraints/base_design.pdc\""
set place_route_pdc_files "-file \"${project_dir}/constraint/io/base_design.pdc\""

import_files \
    -convert_EDN_to_HDL 0 \
    -io_pdc "${constraint_path}/base_design.pdc" \
    -io_pdc "./script_support/components/CAPE/$cape_option/constraints/cape.pdc" \
    -io_pdc "./script_support/components/M2/$m2_option/constraints/M2.pdc" \
    -io_pdc "./script_support/components/HIGH_SPEED_CONNECTOR/$high_speed_conn_option/constraints/HIGH_SPEED_CONNECTOR.pdc" \
    -io_pdc "./script_support/components/MIPI_CSI/$mipi_csi_option/constraints/MIPI_CSI_INTERFACE.pdc" 

#
# // Associate imported constraints with the design flow
#

organize_tool_files \
    -tool {PLACEROUTE} \
    -file "${project_dir}/constraint/io/base_design.pdc" \
    -file "${project_dir}/constraint/io/cape.pdc" \
    -file "${project_dir}/constraint/io/M2.pdc" \
    -file "${project_dir}/constraint/io/HIGH_SPEED_CONNECTOR.pdc" \
    -file "${project_dir}/constraint/io/MIPI_CSI_INTERFACE.pdc" \
    -module {BVF_GATEWARE::work} \
    -input_type {constraint}


#
# // Derive timing constraints
#

build_design_hierarchy
derive_constraints_sdc 

#
# // Run the design flow and add eNVM clients if required
#

if !{[info exists ONLY_CREATE_DESIGN]} {
    run_tool -name {SYNTHESIZE}
    run_tool -name {PLACEROUTE}
#    run_tool -name {VERIFYTIMING}
    if {[info exists HSS_IMAGE_PATH]} {
        create_eNVM_config "$local_dir/script_support/components/MSS/ENVM.cfg" "$HSS_IMAGE_PATH"
        run_tool -name {GENERATEPROGRAMMINGDATA}
        configure_envm -cfg_file {script_support/components/MSS/ENVM.cfg}
    } else {
        run_tool -name {GENERATEPROGRAMMINGDATA}
    }
    source ./script_support/export_flashproexpress.tcl
} 

save_project 