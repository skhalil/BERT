set_property SRC_FILE_INFO {cfile:c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.xdc rfile:../project_3.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.xdc id:1 order:EARLY scoped_inst:design_1_i/clk_wiz_1/inst} [current_design]
set_property SRC_FILE_INFO {cfile:c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0.xdc rfile:../project_3.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0.xdc id:2 order:EARLY scoped_inst:design_1_i/h_microblaze/microblaze_0/U0} [current_design]
set_property SRC_FILE_INFO {cfile:c:/SharedProjects/Sadias_Directory/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0.xdc rfile:../project_3.srcs/sources_1/bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0.xdc id:3 order:EARLY scoped_inst:design_1_i/h_microblaze/mdm_1/U0} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1_p]] 0.050000000000000003
set_property src_info {type:SCOPED_XDC file:2 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_ip_msg_config -idlist { PDCN-1569 CDC-1 CDC-4 CDC-7 TIMING-9 TIMING-10 }
set_property src_info {type:SCOPED_XDC file:3 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_ip_msg_config -idlist { CDC-1 CDCM-1 REQP-1851 TIMING-2 TIMING-4 TIMING-9 TIMING-10 TIMING-14 }
