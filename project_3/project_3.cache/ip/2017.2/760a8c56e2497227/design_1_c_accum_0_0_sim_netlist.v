// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Mon Jan 29 16:19:23 2018
// Host        : rwy_idl_desktop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_c_accum_0_0_sim_netlist.v
// Design      : design_1_c_accum_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_accum_0_0,c_accum_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_accum_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (B,
    CLK,
    SCLR,
    Q);
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) input [3:0]B;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 sclr_intf RST" *) input SCLR;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) output [31:0]Q;

  wire [3:0]B;
  wire CLK;
  wire [31:0]Q;
  wire SCLR;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_WIDTH = "4" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCALE = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_accum_v12_0_10 U0
       (.ADD(1'b1),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b1),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule

(* C_ADD_MODE = "0" *) (* C_AINIT_VAL = "0" *) (* C_BYPASS_LOW = "0" *) 
(* C_B_TYPE = "1" *) (* C_B_WIDTH = "4" *) (* C_CE_OVERRIDES_SCLR = "0" *) 
(* C_HAS_BYPASS = "0" *) (* C_HAS_CE = "0" *) (* C_HAS_C_IN = "0" *) 
(* C_HAS_SCLR = "1" *) (* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) 
(* C_IMPLEMENTATION = "1" *) (* C_LATENCY = "2" *) (* C_OUT_WIDTH = "32" *) 
(* C_SCALE = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_accum_v12_0_10
   (B,
    CLK,
    ADD,
    C_IN,
    CE,
    BYPASS,
    SCLR,
    SSET,
    SINIT,
    Q);
  input [3:0]B;
  input CLK;
  input ADD;
  input C_IN;
  input CE;
  input BYPASS;
  input SCLR;
  input SSET;
  input SINIT;
  output [31:0]Q;

  wire [3:0]B;
  wire CLK;
  wire [31:0]Q;
  wire SCLR;

  (* C_ADD_MODE = "0" *) 
  (* C_AINIT_VAL = "0" *) 
  (* C_BYPASS_LOW = "0" *) 
  (* C_B_TYPE = "1" *) 
  (* C_B_WIDTH = "4" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_BYPASS = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_C_IN = "0" *) 
  (* C_HAS_SCLR = "1" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "1" *) 
  (* C_LATENCY = "2" *) 
  (* C_OUT_WIDTH = "32" *) 
  (* C_SCALE = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "virtex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_accum_v12_0_10_viv i_synth
       (.ADD(1'b0),
        .B(B),
        .BYPASS(1'b0),
        .CE(1'b0),
        .CLK(CLK),
        .C_IN(1'b0),
        .Q(Q),
        .SCLR(SCLR),
        .SINIT(1'b0),
        .SSET(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
diPtVWlnEQlDIhjhor7BEA/UfupFRaLEfcxJCCQe/w6Y3G0ifuCpm958x8CrExCrOwED5XVqMZfz
jIQ01d6uBQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
fCDpNlCtSK5PRG3+2AN+CFSAgS1SQ3I03X4L+FVH+PquT+U2dS6PzXeqM065RNzHg0demi+R6Y4K
aO4/DOSn/QnY+HfaUAJVSusW3qxo5qBB0Qh1SV3AoMBl55RpUFQ6nfhlV4EnbtNPFvinwBIwYdV/
aI2LcC+z/WosL5rY+J4=

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
2uYAR6xeIoH/qLFew9dssZHRgXkVOUxXS4I3GmAjqbrKR+lsCka3WVePYWnr3ixWzdGZZiTSi7Ho
HjkgSROKtN/X8cjvSKGFpLZ9nGS1eE+V9Q6+mGbTJaigZsCBeWu8uHIrTK48Lk6eTIUpkgHKH9cF
74UkL+xbJX+EsKgfU38=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
HF8Z3nFILScxgqu78NlWMhbwUOLQoETOR3eckGGxSjXvBfUvuH8EE0Bbbvpjt8I73ooFeDbtFDwr
ObibvxHaWPCJOU8SNu5BChG712OdTw4hM9NKV3CdcA0NQtr7FAzw1KOJdm+A2VFM294p+LfbY5RO
hAXqJ5ggsFKIeZCl2EPy07pGxN2H8J7uXz3s6NBiMxcYt6sn6ZPz1bn/3CKaxJpxlMs2cHP+XO/5
TSvqNlLzmmZCX3bjFD1+N2/+quexm3btp0tSdCBvx4RjIZl+y7sNpOv8PddYn/qjRKE4hsLUFh94
ItTy2E8L02KWlxGSm97+COHDU6WFjCPLunE8mA==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fhzxqcQHrfctfsthTxe5udFTcQVgAF5XaDvD6ExTPv7C2dYYgzHqKhlkuNYDX6zglRr8BP4hEuL0
5kxJxgPn6bP6znEjkTQH8BV/Wqv9L7nSSEWcYjJUOUqS488cUFJ5bvP9u4z3c9w9dgo7m6dOxwuQ
av9WnVUKimMkqzPZF5FlNsOECpDW6WOI+lVKifsz+iW1u/EpCC44M2buq1ayqpGKqblH42XaNEmA
+9yfc2PPHcHD/UD+zjQbtm3WniUnXfZGQipjK8PY6eoDNf1F1PmGS+/bfkGYh7F1yGdlIdhGqzse
jk2ciiYCNhFVFEyveVYDXdV7jAAxN4JB+JVONw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinx_2016_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kt5EQPO+0A69ny+WSh/LRgOpUZZ89h0C5b4hOKY71AVifYQK8MZv10cqNjCOysUrAfJXJYyPHwwj
p8c4D2LLwqWFZdw43EbhZxtZwH2dIQ/mo1Tf1Ab9d6CMQT/HowKUpM5RCgXB5FVRbumsEmn3lUG4
zL5NSU3dU2UTrg7NiC3AsvxfoJYijh9zYUi93FViOQGeRjxUMan/HFjVKGCc/Inif8oM/j9H5VNE
fe0QHtTJ23MbH/3kxzXeNRU0dS+8WzxftiouoBCsFPjg0+c25tutUn0EtfrnTvI6yJmJctYCGbl9
xGyoduVTXFYSbR01Bo6LDNdg5Qbkr2BD7rT37w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
oahUR0dXvLnMSq9gHenjQfZsFTXPCrS95mBvrtq/oEBvynSsHJVDyLvxBA5sd843e9zDgFFNYgRv
2EFL7L4lX1JdTsqmYMNrj9bYKGCbQn+12eq3Y90CVMQzzqfv0uhhfodtIr7JflvOmhsRv29VMZVY
doULgs6fAbBzzoPHzblRzqEa0kBHW6nn9DasdG9b4wOf4mDfkbQrdqitwImHjmAZiS1EyraUkbi9
gaXi1NVyL2jJkk2nOvuDUzpVSykhPF45GNs0eGYYioPc8ZRk6llmB/zuEGpo139bY4XloE8UBO+w
/KMEp6QzLoDg8GM2gY3pGVC3pye8L2emvpjrrw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
gabGmE2TXdP5Z5RsUQtN98fqDwPsgZZKapwBgDzMYzG4XaBz1Kq1ffPdik+Wt8iBJ3cBa0MQbHAq
PGkhQoPLSE8J8T+1rihni83BGx+xAqQzo2nXLFlEY9u3+JbnKsna+8jFUWAr3NaJRHsQE47wksoa
QGOKimD2tCYxgO4kItGMwQb428fgf8UC+NeVBG69yelJn5huf1E+pEv7Lbc8Ttog2l2s1pP/Ema3
4nXX6gs/tSGnoAj8vXTTPZxNr18ZtDYXe4VNsJCXtkRCaUzRK1RFzIcnKh8MbP6ROTEaYDdJTO5r
T+3hH/NRolGrhQk3Ug++Aelxx0wf+8VZMc3vqA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10880)
`pragma protect data_block
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
`pragma protect end_protected
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
