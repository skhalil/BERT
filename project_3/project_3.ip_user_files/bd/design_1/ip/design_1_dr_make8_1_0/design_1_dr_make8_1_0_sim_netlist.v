// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Mon Jan 29 16:43:43 2018
// Host        : rwy_idl_desktop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Projects/Bean/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_dr_make8_1_0/design_1_dr_make8_1_0_sim_netlist.v
// Design      : design_1_dr_make8_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_dr_make8_1_0,dr_make8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dr_make8,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module design_1_dr_make8_1_0
   (clk,
    rst,
    locked,
    din,
    dv,
    dout,
    wen);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) input rst;
  input locked;
  input [1:0]din;
  input [1:0]dv;
  output [7:0]dout;
  output wen;

  wire clk;
  wire [1:0]din;
  wire [7:0]dout;
  wire [1:0]dv;
  wire locked;
  wire rst;
  wire wen;

  design_1_dr_make8_1_0_dr_make8 U0
       (.clk(clk),
        .din(din),
        .dout(dout),
        .dv(dv),
        .locked(locked),
        .rst(rst),
        .wen(wen));
endmodule

(* ORIG_REF_NAME = "dr_make8" *) 
module design_1_dr_make8_1_0_dr_make8
   (dout,
    wen,
    rst,
    locked,
    dv,
    clk,
    din);
  output [7:0]dout;
  output wen;
  input rst;
  input locked;
  input [1:0]dv;
  input clk;
  input [1:0]din;

  wire clk;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire [1:0]din;
  wire [7:0]dout;
  wire [1:0]dv;
  wire en_i_1_n_0;
  wire locked;
  wire [7:0]p_1_in;
  wire \reg[7]_i_1_n_0 ;
  wire rst;
  wire wen;

  LUT6 #(
    .INIT(64'h000000004C4C334C)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(dv[0]),
        .I4(dv[1]),
        .I5(\reg[7]_i_1_n_0 ),
        .O(\count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000552A662A)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(dv[0]),
        .I4(dv[1]),
        .I5(\reg[7]_i_1_n_0 ),
        .O(\count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000005A707870)) 
    \count[2]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(dv[0]),
        .I4(dv[1]),
        .I5(\reg[7]_i_1_n_0 ),
        .O(\count[2]_i_1_n_0 ));
  FDRE \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00008000)) 
    en_i_1
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(locked),
        .I4(rst),
        .O(en_i_1_n_0));
  FDRE en_reg
       (.C(clk),
        .CE(1'b1),
        .D(en_i_1_n_0),
        .Q(wen),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \reg[0]_i_1 
       (.I0(din[0]),
        .I1(dv[0]),
        .I2(dv[1]),
        .I3(din[1]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \reg[1]_i_1 
       (.I0(dout[0]),
        .I1(dv[0]),
        .I2(dv[1]),
        .I3(din[0]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \reg[2]_i_1 
       (.I0(dout[1]),
        .I1(dv[0]),
        .I2(dv[1]),
        .I3(dout[0]),
        .O(p_1_in[2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \reg[3]_i_1 
       (.I0(dout[2]),
        .I1(dv[0]),
        .I2(dv[1]),
        .I3(dout[1]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \reg[4]_i_1 
       (.I0(dout[3]),
        .I1(dv[0]),
        .I2(dv[1]),
        .I3(dout[2]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \reg[5]_i_1 
       (.I0(dout[4]),
        .I1(dv[0]),
        .I2(dv[1]),
        .I3(dout[3]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \reg[6]_i_1 
       (.I0(dout[5]),
        .I1(dv[0]),
        .I2(dv[1]),
        .I3(dout[4]),
        .O(p_1_in[6]));
  LUT2 #(
    .INIT(4'hB)) 
    \reg[7]_i_1 
       (.I0(rst),
        .I1(locked),
        .O(\reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \reg[7]_i_2 
       (.I0(dout[6]),
        .I1(dv[0]),
        .I2(dv[1]),
        .I3(dout[5]),
        .O(p_1_in[7]));
  FDRE \reg_reg[0] 
       (.C(clk),
        .CE(dv[0]),
        .D(p_1_in[0]),
        .Q(dout[0]),
        .R(\reg[7]_i_1_n_0 ));
  FDRE \reg_reg[1] 
       (.C(clk),
        .CE(dv[0]),
        .D(p_1_in[1]),
        .Q(dout[1]),
        .R(\reg[7]_i_1_n_0 ));
  FDRE \reg_reg[2] 
       (.C(clk),
        .CE(dv[0]),
        .D(p_1_in[2]),
        .Q(dout[2]),
        .R(\reg[7]_i_1_n_0 ));
  FDRE \reg_reg[3] 
       (.C(clk),
        .CE(dv[0]),
        .D(p_1_in[3]),
        .Q(dout[3]),
        .R(\reg[7]_i_1_n_0 ));
  FDRE \reg_reg[4] 
       (.C(clk),
        .CE(dv[0]),
        .D(p_1_in[4]),
        .Q(dout[4]),
        .R(\reg[7]_i_1_n_0 ));
  FDRE \reg_reg[5] 
       (.C(clk),
        .CE(dv[0]),
        .D(p_1_in[5]),
        .Q(dout[5]),
        .R(\reg[7]_i_1_n_0 ));
  FDRE \reg_reg[6] 
       (.C(clk),
        .CE(dv[0]),
        .D(p_1_in[6]),
        .Q(dout[6]),
        .R(\reg[7]_i_1_n_0 ));
  FDRE \reg_reg[7] 
       (.C(clk),
        .CE(dv[0]),
        .D(p_1_in[7]),
        .Q(dout[7]),
        .R(\reg[7]_i_1_n_0 ));
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
