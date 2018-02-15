# 
# Synthesis run script generated by Vivado
# 

create_project -in_memory -part xc7vx485tffg1761-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.cache/wt [current_project]
set_property parent.project_path C:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part xilinx.com:vc707:part0:1.3 [current_project]
set_property ip_output_repo c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
add_files C:/SharedProjects/Sadias_Directory/BERT/project_3/5b_bitstream.coe
read_vhdl -library xil_defaultlib C:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.vhd
add_files C:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_axi_intc_0/design_1_microblaze_0_axi_intc_0.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_axi_intc_0/design_1_microblaze_0_axi_intc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_axi_intc_0/design_1_microblaze_0_axi_intc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/design_1_dlmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/design_1_dlmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_ilmb_v10_0/design_1_ilmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_ilmb_v10_0/design_1_ilmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/design_1_dlmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/design_1_ilmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_lmb_bram_0/design_1_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_xbar_0/design_1_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_axi_timer_0_0/design_1_axi_timer_0_0.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_axi_timer_0_0/design_1_axi_timer_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_c_accum_0_0/design_1_c_accum_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_util_ds_buf_0_0/design_1_util_ds_buf_0_0_board.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_util_ds_buf_1_0/design_1_util_ds_buf_1_0_board.xdc]
set_property used_in_implementation false [get_files -all C:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/design_1_ooc.xdc]
set_property is_locked true [get_files C:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/design_1.bd]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/constrs_1/new/constraints.xdc
set_property used_in_implementation false [get_files C:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/constrs_1/new/constraints.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top design_1_wrapper -part xc7vx485tffg1761-2


write_checkpoint -force -noxdef design_1_wrapper.dcp

catch { report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb }
