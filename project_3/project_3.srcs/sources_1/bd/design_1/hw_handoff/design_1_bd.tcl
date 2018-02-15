
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# address_counter, count_ones_8, data_recovery, dr_make8, dr_make8, serial_pipeline_delay

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7vx485tffg1761-2
   set_property BOARD_PART xilinx.com:vc707:part0:1.3 [current_project]
}


# CHANGE DESIGN NAME HERE
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: microblaze_0_local_memory
proc create_hier_cell_microblaze_0_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_microblaze_0_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 lmb_bram ]
  set_property -dict [ list \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: h_microblaze
proc create_hier_cell_h_microblaze { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_h_microblaze() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:aximm_rtl:1.0 M03_AXI
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 UART

  # Create pins
  create_bd_pin -dir I -type clk Clk
  create_bd_pin -dir I dcm_locked
  create_bd_pin -dir I -type rst ext_reset_in
  create_bd_pin -dir I -from 1 -to 0 -type intr intr
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn

  # Create instance: axi_timer_0, and set properties
  set axi_timer_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_0 ]

  # Create instance: axi_uartlite_0, and set properties
  set axi_uartlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0 ]
  set_property -dict [ list \
CONFIG.UARTLITE_BOARD_INTERFACE {rs232_uart} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_uartlite_0

  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]

  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:10.0 microblaze_0 ]
  set_property -dict [ list \
CONFIG.C_DEBUG_ENABLED {1} \
CONFIG.C_D_AXI {1} \
CONFIG.C_D_LMB {1} \
CONFIG.C_I_LMB {1} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_intc, and set properties
  set microblaze_0_axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 microblaze_0_axi_intc ]
  set_property -dict [ list \
CONFIG.C_HAS_FAST {1} \
 ] $microblaze_0_axi_intc

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_0_axi_periph ]
  set_property -dict [ list \
CONFIG.NUM_MI {4} \
 ] $microblaze_0_axi_periph

  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory $hier_obj microblaze_0_local_memory

  # Create instance: rst_clk_wiz_1_100M, and set properties
  set rst_clk_wiz_1_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_1_100M ]
  set_property -dict [ list \
CONFIG.RESET_BOARD_INTERFACE {reset} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $rst_clk_wiz_1_100M

  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins UART] [get_bd_intf_pins axi_uartlite_0/UART]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins M03_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_dp [get_bd_intf_pins microblaze_0/M_AXI_DP] [get_bd_intf_pins microblaze_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M01_AXI [get_bd_intf_pins axi_uartlite_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M02_AXI [get_bd_intf_pins axi_timer_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net microblaze_0_debug [get_bd_intf_pins mdm_1/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net microblaze_0_intc_axi [get_bd_intf_pins microblaze_0_axi_intc/s_axi] [get_bd_intf_pins microblaze_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_interrupt [get_bd_intf_pins microblaze_0/INTERRUPT] [get_bd_intf_pins microblaze_0_axi_intc/interrupt]

  # Create port connections
  connect_bd_net -net clk_wiz_1_locked [get_bd_pins dcm_locked] [get_bd_pins rst_clk_wiz_1_100M/dcm_locked]
  connect_bd_net -net intr_1 [get_bd_pins intr] [get_bd_pins microblaze_0_axi_intc/intr]
  connect_bd_net -net mdm_1_debug_sys_rst [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins rst_clk_wiz_1_100M/mb_debug_sys_rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins Clk] [get_bd_pins axi_timer_0/s_axi_aclk] [get_bd_pins axi_uartlite_0/s_axi_aclk] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_intc/processor_clk] [get_bd_pins microblaze_0_axi_intc/s_axi_aclk] [get_bd_pins microblaze_0_axi_periph/ACLK] [get_bd_pins microblaze_0_axi_periph/M00_ACLK] [get_bd_pins microblaze_0_axi_periph/M01_ACLK] [get_bd_pins microblaze_0_axi_periph/M02_ACLK] [get_bd_pins microblaze_0_axi_periph/M03_ACLK] [get_bd_pins microblaze_0_axi_periph/S00_ACLK] [get_bd_pins microblaze_0_local_memory/LMB_Clk] [get_bd_pins rst_clk_wiz_1_100M/slowest_sync_clk]
  connect_bd_net -net reset_1 [get_bd_pins ext_reset_in] [get_bd_pins rst_clk_wiz_1_100M/ext_reset_in]
  connect_bd_net -net rst_clk_wiz_1_100M_bus_struct_reset [get_bd_pins microblaze_0_local_memory/SYS_Rst] [get_bd_pins rst_clk_wiz_1_100M/bus_struct_reset]
  connect_bd_net -net rst_clk_wiz_1_100M_interconnect_aresetn [get_bd_pins microblaze_0_axi_periph/ARESETN] [get_bd_pins rst_clk_wiz_1_100M/interconnect_aresetn]
  connect_bd_net -net rst_clk_wiz_1_100M_mb_reset [get_bd_pins microblaze_0/Reset] [get_bd_pins microblaze_0_axi_intc/processor_rst] [get_bd_pins rst_clk_wiz_1_100M/mb_reset]
  connect_bd_net -net rst_clk_wiz_1_100M_peripheral_aresetn [get_bd_pins peripheral_aresetn] [get_bd_pins axi_timer_0/s_axi_aresetn] [get_bd_pins axi_uartlite_0/s_axi_aresetn] [get_bd_pins microblaze_0_axi_intc/s_axi_aresetn] [get_bd_pins microblaze_0_axi_periph/M00_ARESETN] [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] [get_bd_pins microblaze_0_axi_periph/M02_ARESETN] [get_bd_pins microblaze_0_axi_periph/M03_ARESETN] [get_bd_pins microblaze_0_axi_periph/S00_ARESETN] [get_bd_pins rst_clk_wiz_1_100M/peripheral_aresetn]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: h_bert
proc create_hier_cell_h_bert { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_h_bert() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 31 -to 0 -type data Q
  create_bd_pin -dir I -type rst SCLR
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir I clk90
  create_bd_pin -dir I data
  create_bd_pin -dir O -from 0 -to 0 douta
  create_bd_pin -dir I notclk
  create_bd_pin -dir I notclk90
  create_bd_pin -dir I -type rst rst
  create_bd_pin -dir I -type rst rst1
  create_bd_pin -dir O tc

  # Create instance: address_counter_0, and set properties
  set block_name address_counter
  set block_cell_name address_counter_0
  if { [catch {set address_counter_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $address_counter_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_0 ]
  set_property -dict [ list \
CONFIG.Byte_Size {9} \
CONFIG.Coe_File {../../../../../../5b_bitstream.coe} \
CONFIG.Enable_32bit_Address {false} \
CONFIG.Enable_A {Always_Enabled} \
CONFIG.Load_Init_File {true} \
CONFIG.Memory_Type {Single_Port_ROM} \
CONFIG.Port_A_Write_Rate {0} \
CONFIG.Read_Width_A {1} \
CONFIG.Read_Width_B {1} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
CONFIG.Use_Byte_Write_Enable {false} \
CONFIG.Use_RSTA_Pin {false} \
CONFIG.Write_Depth_A {14440} \
CONFIG.Write_Width_A {1} \
CONFIG.Write_Width_B {1} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: c_accum_0, and set properties
  set c_accum_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_accum:12.0 c_accum_0 ]
  set_property -dict [ list \
CONFIG.Bypass {false} \
CONFIG.Implementation {DSP48} \
CONFIG.Input_Type {Unsigned} \
CONFIG.Input_Width {4} \
CONFIG.Latency {2} \
CONFIG.Latency_Configuration {Automatic} \
CONFIG.Output_Width {32} \
CONFIG.SCLR {true} \
 ] $c_accum_0

  # Create instance: count_ones_8_0, and set properties
  set block_name count_ones_8
  set block_cell_name count_ones_8_0
  if { [catch {set count_ones_8_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $count_ones_8_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: data_recovery_0, and set properties
  set block_name data_recovery
  set block_cell_name data_recovery_0
  if { [catch {set data_recovery_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $data_recovery_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: dr_make8_0, and set properties
  set block_name dr_make8
  set block_cell_name dr_make8_0
  if { [catch {set dr_make8_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $dr_make8_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: dr_make8_1, and set properties
  set block_name dr_make8
  set block_cell_name dr_make8_1
  if { [catch {set dr_make8_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $dr_make8_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: serial_pipeline_delay_0, and set properties
  set block_name serial_pipeline_delay
  set block_cell_name serial_pipeline_delay_0
  if { [catch {set serial_pipeline_delay_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $serial_pipeline_delay_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
CONFIG.C_OPERATION {xor} \
CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_1

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [ list \
CONFIG.CONST_WIDTH {2} \
 ] $xlconstant_2

  # Create port connections
  connect_bd_net -net SCLR_1 [get_bd_pins SCLR] [get_bd_pins c_accum_0/SCLR]
  connect_bd_net -net address_counter_0_address [get_bd_pins address_counter_0/address] [get_bd_pins blk_mem_gen_0/addra]
  connect_bd_net -net address_counter_0_tc [get_bd_pins tc] [get_bd_pins address_counter_0/tc]
  connect_bd_net -net blk_mem_gen_0_douta [get_bd_pins douta] [get_bd_pins blk_mem_gen_0/douta] [get_bd_pins serial_pipeline_delay_0/delayin]
  connect_bd_net -net c_accum_0_Q [get_bd_pins Q] [get_bd_pins c_accum_0/Q]
  connect_bd_net -net clk_wiz_1_clk [get_bd_pins clk] [get_bd_pins address_counter_0/clk] [get_bd_pins blk_mem_gen_0/clka] [get_bd_pins c_accum_0/CLK] [get_bd_pins count_ones_8_0/clk] [get_bd_pins data_recovery_0/clk] [get_bd_pins dr_make8_0/clk] [get_bd_pins dr_make8_1/clk] [get_bd_pins serial_pipeline_delay_0/clk]
  connect_bd_net -net clk_wiz_1_clk90 [get_bd_pins clk90] [get_bd_pins data_recovery_0/clk90]
  connect_bd_net -net clk_wiz_1_notclk [get_bd_pins notclk] [get_bd_pins data_recovery_0/notclk]
  connect_bd_net -net clk_wiz_1_notclk90 [get_bd_pins notclk90] [get_bd_pins data_recovery_0/notclk90]
  connect_bd_net -net count_ones_8_0_count [get_bd_pins c_accum_0/B] [get_bd_pins count_ones_8_0/count]
  connect_bd_net -net data_recovery_0_dv [get_bd_pins data_recovery_0/dv] [get_bd_pins dr_make8_0/dv]
  connect_bd_net -net data_recovery_0_sdata [get_bd_pins data_recovery_0/sdata] [get_bd_pins dr_make8_0/din]
  connect_bd_net -net dr_make8_0_dout [get_bd_pins dr_make8_0/dout] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net dr_make8_1_dout [get_bd_pins dr_make8_1/dout] [get_bd_pins util_vector_logic_1/Op2]
  connect_bd_net -net rst1_1 [get_bd_pins rst1] [get_bd_pins address_counter_0/rst]
  connect_bd_net -net serial_pipeline_delay_0_delayout [get_bd_pins dr_make8_1/din] [get_bd_pins serial_pipeline_delay_0/delayout]
  connect_bd_net -net util_ds_buf_0_IBUF_OUT [get_bd_pins data] [get_bd_pins data_recovery_0/data]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins rst] [get_bd_pins count_ones_8_0/rst] [get_bd_pins data_recovery_0/rst] [get_bd_pins dr_make8_0/rst] [get_bd_pins dr_make8_1/rst]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins count_ones_8_0/regword] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins dr_make8_0/locked] [get_bd_pins dr_make8_1/locked] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins dr_make8_1/dv] [get_bd_pins xlconstant_2/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set rs232_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 rs232_uart ]
  set sys_diff_clock [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 sys_diff_clock ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {200000000} \
 ] $sys_diff_clock

  # Create ports
  set in_n [ create_bd_port -dir I in_n ]
  set in_p [ create_bd_port -dir I in_p ]
  set out_n [ create_bd_port -dir O -from 0 -to 0 out_n ]
  set out_p [ create_bd_port -dir O -from 0 -to 0 out_p ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
CONFIG.C_ALL_INPUTS {1} \
CONFIG.C_GPIO2_WIDTH {10} \
CONFIG.C_GPIO_WIDTH {32} \
CONFIG.C_IS_DUAL {1} \
CONFIG.GPIO2_BOARD_INTERFACE {Custom} \
CONFIG.GPIO_BOARD_INTERFACE {Custom} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_gpio_0

  # Create instance: clk_wiz_1, and set properties
  set clk_wiz_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.4 clk_wiz_1 ]
  set_property -dict [ list \
CONFIG.CLKOUT2_JITTER {112.316} \
CONFIG.CLKOUT2_PHASE_ERROR {89.971} \
CONFIG.CLKOUT2_USED {true} \
CONFIG.CLKOUT3_JITTER {112.316} \
CONFIG.CLKOUT3_PHASE_ERROR {89.971} \
CONFIG.CLKOUT3_REQUESTED_PHASE {90} \
CONFIG.CLKOUT3_USED {true} \
CONFIG.CLKOUT4_JITTER {112.316} \
CONFIG.CLKOUT4_PHASE_ERROR {89.971} \
CONFIG.CLKOUT4_REQUESTED_PHASE {180} \
CONFIG.CLKOUT4_USED {true} \
CONFIG.CLKOUT5_JITTER {112.316} \
CONFIG.CLKOUT5_PHASE_ERROR {89.971} \
CONFIG.CLKOUT5_REQUESTED_PHASE {270} \
CONFIG.CLKOUT5_USED {true} \
CONFIG.CLK_IN1_BOARD_INTERFACE {sys_diff_clock} \
CONFIG.CLK_OUT1_PORT {ublaze_clk} \
CONFIG.CLK_OUT2_PORT {clk} \
CONFIG.CLK_OUT3_PORT {clk90} \
CONFIG.CLK_OUT4_PORT {notclk} \
CONFIG.CLK_OUT5_PORT {notclk90} \
CONFIG.MMCM_CLKOUT1_DIVIDE {10} \
CONFIG.MMCM_CLKOUT2_DIVIDE {10} \
CONFIG.MMCM_CLKOUT2_PHASE {90.000} \
CONFIG.MMCM_CLKOUT3_DIVIDE {10} \
CONFIG.MMCM_CLKOUT3_PHASE {180.000} \
CONFIG.MMCM_CLKOUT4_DIVIDE {10} \
CONFIG.MMCM_CLKOUT4_PHASE {270.000} \
CONFIG.MMCM_DIVCLK_DIVIDE {1} \
CONFIG.NUM_OUT_CLKS {5} \
CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} \
CONFIG.RESET_BOARD_INTERFACE {reset} \
CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz_1

  # Create instance: h_bert
  create_hier_cell_h_bert [current_bd_instance .] h_bert

  # Create instance: h_microblaze
  create_hier_cell_h_microblaze [current_bd_instance .] h_microblaze

  # Create instance: microblaze_0_xlconcat, and set properties
  set microblaze_0_xlconcat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 microblaze_0_xlconcat ]

  # Create instance: util_ds_buf_0, and set properties
  set util_ds_buf_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_0 ]

  # Create instance: util_ds_buf_1, and set properties
  set util_ds_buf_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_1 ]
  set_property -dict [ list \
CONFIG.C_BUF_TYPE {OBUFDS} \
 ] $util_ds_buf_1

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
CONFIG.C_OPERATION {not} \
CONFIG.C_SIZE {1} \
CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_0

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $xlconstant_3

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {9} \
CONFIG.DIN_TO {2} \
CONFIG.DIN_WIDTH {10} \
CONFIG.DOUT_WIDTH {8} \
 ] $xlslice_0

  # Create instance: xlslice_bit0, and set properties
  set xlslice_bit0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_bit0 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {1} \
CONFIG.DIN_TO {1} \
CONFIG.DIN_WIDTH {10} \
CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_bit0

  # Create instance: xlslice_bit1, and set properties
  set xlslice_bit1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_bit1 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {0} \
CONFIG.DIN_TO {0} \
CONFIG.DIN_WIDTH {10} \
CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_bit1

  # Create interface connections
  connect_bd_intf_net -intf_net h_microblaze_M03_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins h_microblaze/M03_AXI]
  connect_bd_intf_net -intf_net h_microblaze_UART [get_bd_intf_ports rs232_uart] [get_bd_intf_pins h_microblaze/UART]
  connect_bd_intf_net -intf_net sys_diff_clock_1 [get_bd_intf_ports sys_diff_clock] [get_bd_intf_pins clk_wiz_1/CLK_IN1_D]

  # Create port connections
  connect_bd_net -net axi_gpio_0_gpio2_io_o [get_bd_pins axi_gpio_0/gpio2_io_o] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_bit0/Din] [get_bd_pins xlslice_bit1/Din]
  connect_bd_net -net clk_wiz_1_clk [get_bd_pins clk_wiz_1/clk] [get_bd_pins h_bert/clk]
  connect_bd_net -net clk_wiz_1_clk90 [get_bd_pins clk_wiz_1/clk90] [get_bd_pins h_bert/clk90]
  connect_bd_net -net clk_wiz_1_locked [get_bd_pins clk_wiz_1/locked] [get_bd_pins h_microblaze/dcm_locked]
  connect_bd_net -net clk_wiz_1_notclk [get_bd_pins clk_wiz_1/notclk] [get_bd_pins h_bert/notclk]
  connect_bd_net -net clk_wiz_1_notclk90 [get_bd_pins clk_wiz_1/notclk90] [get_bd_pins h_bert/notclk90]
  connect_bd_net -net h_bert_Q [get_bd_pins axi_gpio_0/gpio_io_i] [get_bd_pins h_bert/Q]
  connect_bd_net -net h_bert_douta [get_bd_pins h_bert/douta] [get_bd_pins util_ds_buf_1/OBUF_IN]
  connect_bd_net -net h_bert_tc [get_bd_pins h_bert/tc] [get_bd_pins microblaze_0_xlconcat/In0]
  connect_bd_net -net h_microblaze_peripheral_aresetn [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins h_microblaze/peripheral_aresetn] [get_bd_pins util_vector_logic_0/Op1]
  connect_bd_net -net in_n_1 [get_bd_ports in_n] [get_bd_pins util_ds_buf_0/IBUF_DS_N]
  connect_bd_net -net in_p_1 [get_bd_ports in_p] [get_bd_pins util_ds_buf_0/IBUF_DS_P]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins clk_wiz_1/ublaze_clk] [get_bd_pins h_microblaze/Clk]
  connect_bd_net -net microblaze_0_xlconcat_dout [get_bd_pins h_microblaze/intr] [get_bd_pins microblaze_0_xlconcat/dout]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins clk_wiz_1/reset] [get_bd_pins h_microblaze/ext_reset_in]
  connect_bd_net -net util_ds_buf_0_IBUF_OUT [get_bd_pins h_bert/data] [get_bd_pins util_ds_buf_0/IBUF_OUT]
  connect_bd_net -net util_ds_buf_1_OBUF_DS_N [get_bd_ports out_n] [get_bd_pins util_ds_buf_1/OBUF_DS_N]
  connect_bd_net -net util_ds_buf_1_OBUF_DS_P [get_bd_ports out_p] [get_bd_pins util_ds_buf_1/OBUF_DS_P]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins h_bert/rst] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins microblaze_0_xlconcat/In1] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net xlslice_bit0_Dout [get_bd_pins h_bert/SCLR] [get_bd_pins xlslice_bit0/Dout]
  connect_bd_net -net xlslice_bit1_Dout [get_bd_pins h_bert/rst1] [get_bd_pins xlslice_bit1/Dout]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces h_microblaze/microblaze_0/Data] [get_bd_addr_segs axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41C00000 [get_bd_addr_spaces h_microblaze/microblaze_0/Data] [get_bd_addr_segs h_microblaze/axi_timer_0/S_AXI/Reg] SEG_axi_timer_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40600000 [get_bd_addr_spaces h_microblaze/microblaze_0/Data] [get_bd_addr_segs h_microblaze/axi_uartlite_0/S_AXI/Reg] SEG_axi_uartlite_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00000000 [get_bd_addr_spaces h_microblaze/microblaze_0/Data] [get_bd_addr_segs h_microblaze/microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00010000 -offset 0x00000000 [get_bd_addr_spaces h_microblaze/microblaze_0/Instruction] [get_bd_addr_segs h_microblaze/microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces h_microblaze/microblaze_0/Data] [get_bd_addr_segs h_microblaze/microblaze_0_axi_intc/S_AXI/Reg] SEG_microblaze_0_axi_intc_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


