// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Mon Jan 29 16:19:22 2018
// Host        : rwy_idl_desktop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_count_ones_8_0_0_sim_netlist.v
// Design      : design_1_count_ones_8_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_count_ones_8
   (count,
    rst,
    clk,
    regword);
  output [3:0]count;
  input rst;
  input clk;
  input [7:0]regword;

  wire \c[3]_i_2_n_0 ;
  wire \c[3]_i_3_n_0 ;
  wire \c[3]_i_4_n_0 ;
  wire \c[3]_i_5_n_0 ;
  wire clk;
  wire [3:0]count;
  wire [7:0]regword;
  wire rst;
  wire [3:0]t6_out;

  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \c[0]_i_1 
       (.I0(regword[4]),
        .I1(regword[5]),
        .I2(regword[3]),
        .I3(regword[7]),
        .I4(regword[6]),
        .I5(\c[3]_i_2_n_0 ),
        .O(t6_out[0]));
  LUT6 #(
    .INIT(64'h78E1E187871E1E78)) 
    \c[1]_i_1 
       (.I0(\c[3]_i_3_n_0 ),
        .I1(\c[3]_i_2_n_0 ),
        .I2(\c[3]_i_5_n_0 ),
        .I3(regword[7]),
        .I4(regword[6]),
        .I5(\c[3]_i_4_n_0 ),
        .O(t6_out[1]));
  LUT6 #(
    .INIT(64'h7FF8FEE0FEE0F880)) 
    \c[2]_i_1 
       (.I0(\c[3]_i_2_n_0 ),
        .I1(\c[3]_i_3_n_0 ),
        .I2(\c[3]_i_4_n_0 ),
        .I3(\c[3]_i_5_n_0 ),
        .I4(regword[6]),
        .I5(regword[7]),
        .O(t6_out[2]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \c[3]_i_1 
       (.I0(regword[6]),
        .I1(regword[7]),
        .I2(\c[3]_i_2_n_0 ),
        .I3(\c[3]_i_3_n_0 ),
        .I4(\c[3]_i_4_n_0 ),
        .I5(\c[3]_i_5_n_0 ),
        .O(t6_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \c[3]_i_2 
       (.I0(regword[0]),
        .I1(regword[2]),
        .I2(regword[1]),
        .O(\c[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \c[3]_i_3 
       (.I0(regword[3]),
        .I1(regword[5]),
        .I2(regword[4]),
        .O(\c[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \c[3]_i_4 
       (.I0(regword[5]),
        .I1(regword[4]),
        .I2(regword[3]),
        .O(\c[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \c[3]_i_5 
       (.I0(regword[2]),
        .I1(regword[1]),
        .I2(regword[0]),
        .O(\c[3]_i_5_n_0 ));
  FDRE \c_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(t6_out[0]),
        .Q(count[0]),
        .R(rst));
  FDRE \c_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(t6_out[1]),
        .Q(count[1]),
        .R(rst));
  FDRE \c_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(t6_out[2]),
        .Q(count[2]),
        .R(rst));
  FDRE \c_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(t6_out[3]),
        .Q(count[3]),
        .R(rst));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_count_ones_8_0_0,count_ones_8,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "count_ones_8,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rst,
    clk,
    regword,
    count);
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) input clk;
  input [7:0]regword;
  output [3:0]count;

  wire clk;
  wire [3:0]count;
  wire [7:0]regword;
  wire rst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_count_ones_8 U0
       (.clk(clk),
        .count(count),
        .regword(regword),
        .rst(rst));
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
