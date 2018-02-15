// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Mon Jan 29 16:43:43 2018
// Host        : rwy_idl_desktop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Projects/Bean/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_data_recovery_0_0/design_1_data_recovery_0_0_sim_netlist.v
// Design      : design_1_data_recovery_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_data_recovery_0_0,data_recovery,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "data_recovery,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module design_1_data_recovery_0_0
   (clk,
    clk90,
    notclk,
    notclk90,
    data,
    rst,
    sdata,
    dv);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  input clk90;
  input notclk;
  input notclk90;
  input data;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) input rst;
  output [1:0]sdata;
  output [1:0]dv;

  wire clk;
  wire clk90;
  wire data;
  wire [1:0]dv;
  wire notclk;
  wire notclk90;
  wire rst;
  wire [1:0]sdata;

  design_1_data_recovery_0_0_data_recovery U0
       (.clk(clk),
        .clk90(clk90),
        .data(data),
        .dv(dv),
        .notclk(notclk),
        .notclk90(notclk90),
        .rst(rst),
        .sdata(sdata));
endmodule

(* ORIG_REF_NAME = "data_recovery" *) 
module design_1_data_recovery_0_0_data_recovery
   (sdata,
    dv,
    data,
    clk,
    rst,
    clk90,
    notclk,
    notclk90);
  output [1:0]sdata;
  output [1:0]dv;
  input data;
  input clk;
  input rst;
  input clk90;
  input notclk;
  input notclk90;

  wire aan;
  wire aan0;
  wire aap;
  wire aap_i_1_n_0;
  wire [3:0]az;
  wire bbn;
  wire bbn0;
  wire bbp;
  wire bbp_i_1_n_0;
  wire [3:0]bz;
  wire ccn;
  wire ccn0;
  wire ccp;
  wire ccp_i_1_n_0;
  wire clk;
  wire clk90;
  wire [3:0]cz;
  wire data;
  wire ddn;
  wire ddn0;
  wire ddp;
  wire ddp_i_1_n_0;
  wire [1:0]dv;
  wire \dvalid[0]_i_1_n_0 ;
  wire \dvalid[1]_i_1_n_0 ;
  wire [3:0]dz;
  wire notclk;
  wire notclk90;
  wire pipe_ce0;
  wire pipe_ce00;
  wire rst;
  wire [1:0]sdata;
  wire \sdata[0]_i_1_n_0 ;
  wire \sdata[0]_i_2_n_0 ;
  wire \sdata[0]_i_3_n_0 ;
  wire \sdata[1]_i_1_n_0 ;
  wire usea;
  wire usea0;
  wire useaaa;
  wire useb;
  wire useb0;
  wire useb_i_2_n_0;
  wire usebbb;
  wire usec;
  wire usec0;
  wire useccc;
  wire used;
  wire used0;
  wire used_i_2_n_0;
  wire useddd;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    aan_i_1
       (.I0(az[1]),
        .I1(az[2]),
        .O(aan0));
  FDCE aan_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(aan0),
        .Q(aan));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    aap_i_1
       (.I0(az[2]),
        .I1(az[1]),
        .O(aap_i_1_n_0));
  FDCE aap_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(aap_i_1_n_0),
        .Q(aap));
  FDPE \az_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(az[2]),
        .PRE(rst),
        .Q(az[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    bbn_i_1
       (.I0(bz[1]),
        .I1(bz[2]),
        .O(bbn0));
  FDCE bbn_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(bbn0),
        .Q(bbn));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    bbp_i_1
       (.I0(bz[2]),
        .I1(bz[1]),
        .O(bbp_i_1_n_0));
  FDCE bbp_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(bbp_i_1_n_0),
        .Q(bbp));
  FDPE \bz_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(bz[2]),
        .PRE(rst),
        .Q(bz[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ccn_i_1
       (.I0(cz[1]),
        .I1(cz[2]),
        .O(ccn0));
  FDCE ccn_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ccn0),
        .Q(ccn));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ccp_i_1
       (.I0(cz[2]),
        .I1(cz[1]),
        .O(ccp_i_1_n_0));
  FDCE ccp_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ccp_i_1_n_0),
        .Q(ccp));
  FDPE \cz_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(cz[2]),
        .PRE(rst),
        .Q(cz[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ddn_i_1
       (.I0(dz[1]),
        .I1(dz[2]),
        .O(ddn0));
  FDCE ddn_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ddn0),
        .Q(ddn));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    ddp_i_1
       (.I0(dz[2]),
        .I1(dz[1]),
        .O(ddp_i_1_n_0));
  FDCE ddp_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(ddp_i_1_n_0),
        .Q(ddp));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \dvalid[0]_i_1 
       (.I0(useddd),
        .I1(usea),
        .O(\dvalid[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0888)) 
    \dvalid[1]_i_1 
       (.I0(useaaa),
        .I1(used),
        .I2(useddd),
        .I3(usea),
        .O(\dvalid[1]_i_1_n_0 ));
  FDCE \dvalid_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\dvalid[0]_i_1_n_0 ),
        .Q(dv[0]));
  FDCE \dvalid_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\dvalid[1]_i_1_n_0 ),
        .Q(dv[1]));
  FDPE \dz_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(dz[2]),
        .PRE(rst),
        .Q(dz[3]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDC" *) 
  FDCE #(
    .INIT(1'b0)) 
    ff_a0
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(data),
        .Q(az[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDC" *) 
  FDCE #(
    .INIT(1'b0)) 
    ff_a1
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(az[0]),
        .Q(az[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDC" *) 
  FDCE #(
    .INIT(1'b0)) 
    ff_a2
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(az[1]),
        .Q(az[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDC" *) 
  FDCE #(
    .INIT(1'b0)) 
    ff_b0
       (.C(clk90),
        .CE(1'b1),
        .CLR(rst),
        .D(data),
        .Q(bz[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDC" *) 
  FDCE #(
    .INIT(1'b0)) 
    ff_b1
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(bz[0]),
        .Q(bz[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDC" *) 
  FDCE #(
    .INIT(1'b0)) 
    ff_b2
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(bz[1]),
        .Q(bz[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDC" *) 
  FDCE #(
    .INIT(1'b0)) 
    ff_c0
       (.C(notclk),
        .CE(1'b1),
        .CLR(rst),
        .D(data),
        .Q(cz[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDC" *) 
  FDCE #(
    .INIT(1'b0)) 
    ff_c1
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cz[0]),
        .Q(cz[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDC" *) 
  FDCE #(
    .INIT(1'b0)) 
    ff_c2
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(cz[1]),
        .Q(cz[2]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDC" *) 
  FDCE #(
    .INIT(1'b0)) 
    ff_d0
       (.C(notclk90),
        .CE(1'b1),
        .CLR(rst),
        .D(data),
        .Q(dz[0]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDC" *) 
  FDCE #(
    .INIT(1'b0)) 
    ff_d1
       (.C(notclk),
        .CE(1'b1),
        .CLR(rst),
        .D(dz[0]),
        .Q(dz[1]));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* XILINX_LEGACY_PRIM = "FDC" *) 
  FDCE #(
    .INIT(1'b0)) 
    ff_d2
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(dz[1]),
        .Q(dz[2]));
  FDCE pipe_ce0_reg
       (.C(clk),
        .CE(pipe_ce00),
        .CLR(rst),
        .D(pipe_ce00),
        .Q(pipe_ce0));
  LUT4 #(
    .INIT(16'hEFE0)) 
    \sdata[0]_i_1 
       (.I0(\sdata[0]_i_2_n_0 ),
        .I1(\sdata[0]_i_3_n_0 ),
        .I2(pipe_ce0),
        .I3(sdata[0]),
        .O(\sdata[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sdata[0]_i_2 
       (.I0(cz[3]),
        .I1(useccc),
        .I2(bz[3]),
        .I3(usebbb),
        .O(\sdata[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \sdata[0]_i_3 
       (.I0(dz[3]),
        .I1(useddd),
        .I2(useaaa),
        .I3(az[3]),
        .O(\sdata[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF888FFFFF8880000)) 
    \sdata[1]_i_1 
       (.I0(useddd),
        .I1(az[3]),
        .I2(useaaa),
        .I3(dz[3]),
        .I4(pipe_ce0),
        .I5(sdata[1]),
        .O(\sdata[1]_i_1_n_0 ));
  FDPE \sdata_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\sdata[0]_i_1_n_0 ),
        .PRE(rst),
        .Q(sdata[0]));
  FDPE \sdata_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\sdata[1]_i_1_n_0 ),
        .PRE(rst),
        .Q(sdata[1]));
  LUT6 #(
    .INIT(64'h0400FFFF04000400)) 
    usea_i_1
       (.I0(ccn),
        .I1(aan),
        .I2(ddn),
        .I3(bbn),
        .I4(used_i_2_n_0),
        .I5(bbp),
        .O(usea0));
  FDCE usea_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(usea0),
        .Q(usea));
  FDCE useaaa_reg
       (.C(clk),
        .CE(pipe_ce00),
        .CLR(rst),
        .D(usea),
        .Q(useaaa));
  LUT6 #(
    .INIT(64'h400040004000FFFF)) 
    useb_i_1
       (.I0(ddp),
        .I1(aap),
        .I2(ccp),
        .I3(bbp),
        .I4(useb_i_2_n_0),
        .I5(ddn),
        .O(useb0));
  LUT3 #(
    .INIT(8'h7F)) 
    useb_i_2
       (.I0(aan),
        .I1(ccn),
        .I2(bbn),
        .O(useb_i_2_n_0));
  FDCE useb_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(useb0),
        .Q(useb));
  LUT4 #(
    .INIT(16'hFFFE)) 
    usebbb_i_1
       (.I0(useb),
        .I1(usec),
        .I2(usea),
        .I3(used),
        .O(pipe_ce00));
  FDCE usebbb_reg
       (.C(clk),
        .CE(pipe_ce00),
        .CLR(rst),
        .D(useb),
        .Q(usebbb));
  LUT6 #(
    .INIT(64'hF444444444444444)) 
    usec_i_1
       (.I0(useb_i_2_n_0),
        .I1(ddn),
        .I2(aap),
        .I3(ddp),
        .I4(ccp),
        .I5(bbp),
        .O(usec0));
  FDCE usec_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(usec0),
        .Q(usec));
  FDCE useccc_reg
       (.C(clk),
        .CE(pipe_ce00),
        .CLR(rst),
        .D(usec),
        .Q(useccc));
  LUT6 #(
    .INIT(64'h000400040004FFFF)) 
    used_i_1
       (.I0(ccn),
        .I1(aan),
        .I2(ddn),
        .I3(bbn),
        .I4(used_i_2_n_0),
        .I5(bbp),
        .O(used0));
  LUT3 #(
    .INIT(8'hFB)) 
    used_i_2
       (.I0(ccp),
        .I1(aap),
        .I2(ddp),
        .O(used_i_2_n_0));
  FDCE used_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(used0),
        .Q(used));
  FDCE useddd_reg
       (.C(clk),
        .CE(pipe_ce00),
        .CLR(rst),
        .D(used),
        .Q(useddd));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
