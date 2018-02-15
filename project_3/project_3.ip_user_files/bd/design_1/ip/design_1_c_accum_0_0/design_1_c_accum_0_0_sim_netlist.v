// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
// Date        : Mon Jan 29 16:19:24 2018
// Host        : rwy_idl_desktop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Projects/Bean/BERT/project_3/project_3.srcs/sources_1/bd/design_1/ip/design_1_c_accum_0_0/design_1_c_accum_0_0_sim_netlist.v
// Design      : design_1_c_accum_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_c_accum_0_0,c_accum_v12_0_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_accum_v12_0_10,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module design_1_c_accum_0_0
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
  design_1_c_accum_0_0_c_accum_v12_0_10 U0
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
(* C_VERBOSITY = "0" *) (* C_XDEVICEFAMILY = "virtex7" *) (* ORIG_REF_NAME = "c_accum_v12_0_10" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module design_1_c_accum_0_0_c_accum_v12_0_10
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
  design_1_c_accum_0_0_c_accum_v12_0_10_viv i_synth
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
cWLMIiZdSnabYB3xJg2R1YVxzXiS037ymCtmzA/muByAYwQnsmu/XiQIVcKR5s5fzwT3rpFkO0Te
31tWG2uaFHcxn/Uo8ZPkuNd0WSrUl377hX3wHW4QfXuPWp9I+SHHdpefZxkIRDBGm9oywEqaGgRv
bG/HpNaVbzi2CjxdtghYxd9DyS0U3vZM3lVG//aS2TZBsbPx+2mcIEJVIoad0UysjE190JAu/1o7
6GvhgtZpmYsiiqmvp0T6UF3bH9uPK+iMeRu6XOKSDn/vxuP4gQWDhbcLeQ+0D6ubHw2dqa8o5e1v
PduGwwCz3dfInf9CsicH9/0xS/RtBxOqFOZn+g==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="base64", line_length=76, bytes=256)
`pragma protect key_block
azmizahlL+WLV7PHkl56wd8MbtWw/lR5gXs5/GJj97cBTfw6a6oN2y2zybyEsCPfwpMrEeqFdu05
IINisdnlBCu++zi89T3JPkzSS8XtdN/ak+tLZi6eP/4MRzuO2WbC+Ot0W3NWiHPMcCX2H7XZQuAe
6npYlIdOlTa8dzT8+Am2sr/17ILIH5uvXTIlNeaqYTp8fKAxomTTsWAYcLcYP8D+tE/l5ZHkqgSY
9KBQIW4n0iR1On7RdX2ueT1vVzsBysixQySO/ai9RfJvXQ8mF/M7UNIOC/RpWapRKLwL9/sEd0wQ
mA1Qje5Wox1ILdNHj8WmXTUqXGY4MmwG2y9hzA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 10928)
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
