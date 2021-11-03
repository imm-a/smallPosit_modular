module ILZD5(
  input        clock,
  input        reset,
  input  [4:0] io_in,
  output [2:0] io_out
);
  wire [3:0] _T; // @[LZD.scala 43:32]
  wire [1:0] _T_1; // @[LZD.scala 43:32]
  wire  _T_2; // @[LZD.scala 39:14]
  wire  _T_3; // @[LZD.scala 39:21]
  wire  _T_4; // @[LZD.scala 39:30]
  wire  _T_5; // @[LZD.scala 39:27]
  wire  _T_6; // @[LZD.scala 39:25]
  wire [1:0] _T_7; // @[Cat.scala 29:58]
  wire [1:0] _T_8; // @[LZD.scala 44:32]
  wire  _T_9; // @[LZD.scala 39:14]
  wire  _T_10; // @[LZD.scala 39:21]
  wire  _T_11; // @[LZD.scala 39:30]
  wire  _T_12; // @[LZD.scala 39:27]
  wire  _T_13; // @[LZD.scala 39:25]
  wire [1:0] _T_14; // @[Cat.scala 29:58]
  wire  _T_15; // @[Shift.scala 12:21]
  wire  _T_16; // @[Shift.scala 12:21]
  wire  _T_17; // @[LZD.scala 49:16]
  wire  _T_18; // @[LZD.scala 49:27]
  wire  _T_19; // @[LZD.scala 49:25]
  wire  _T_20; // @[LZD.scala 49:47]
  wire  _T_21; // @[LZD.scala 49:59]
  wire  _T_22; // @[LZD.scala 49:35]
  wire [2:0] _T_24; // @[Cat.scala 29:58]
  wire  _T_25; // @[LZD.scala 44:32]
  wire  _T_27; // @[Shift.scala 12:21]
  wire [1:0] _T_29; // @[Cat.scala 29:58]
  wire [1:0] _T_30; // @[LZD.scala 55:32]
  wire [1:0] _T_31; // @[LZD.scala 55:20]
  assign _T = io_in[4:1]; // @[LZD.scala 43:32]
  assign _T_1 = _T[3:2]; // @[LZD.scala 43:32]
  assign _T_2 = _T_1 != 2'h0; // @[LZD.scala 39:14]
  assign _T_3 = _T_1[1]; // @[LZD.scala 39:21]
  assign _T_4 = _T_1[0]; // @[LZD.scala 39:30]
  assign _T_5 = ~ _T_4; // @[LZD.scala 39:27]
  assign _T_6 = _T_3 | _T_5; // @[LZD.scala 39:25]
  assign _T_7 = {_T_2,_T_6}; // @[Cat.scala 29:58]
  assign _T_8 = _T[1:0]; // @[LZD.scala 44:32]
  assign _T_9 = _T_8 != 2'h0; // @[LZD.scala 39:14]
  assign _T_10 = _T_8[1]; // @[LZD.scala 39:21]
  assign _T_11 = _T_8[0]; // @[LZD.scala 39:30]
  assign _T_12 = ~ _T_11; // @[LZD.scala 39:27]
  assign _T_13 = _T_10 | _T_12; // @[LZD.scala 39:25]
  assign _T_14 = {_T_9,_T_13}; // @[Cat.scala 29:58]
  assign _T_15 = _T_7[1]; // @[Shift.scala 12:21]
  assign _T_16 = _T_14[1]; // @[Shift.scala 12:21]
  assign _T_17 = _T_15 | _T_16; // @[LZD.scala 49:16]
  assign _T_18 = ~ _T_16; // @[LZD.scala 49:27]
  assign _T_19 = _T_15 | _T_18; // @[LZD.scala 49:25]
  assign _T_20 = _T_7[0:0]; // @[LZD.scala 49:47]
  assign _T_21 = _T_14[0:0]; // @[LZD.scala 49:59]
  assign _T_22 = _T_15 ? _T_20 : _T_21; // @[LZD.scala 49:35]
  assign _T_24 = {_T_17,_T_19,_T_22}; // @[Cat.scala 29:58]
  assign _T_25 = io_in[0:0]; // @[LZD.scala 44:32]
  assign _T_27 = _T_24[2]; // @[Shift.scala 12:21]
  assign _T_29 = {1'h1,_T_25}; // @[Cat.scala 29:58]
  assign _T_30 = _T_24[1:0]; // @[LZD.scala 55:32]
  assign _T_31 = _T_27 ? _T_30 : _T_29; // @[LZD.scala 55:20]
  assign io_out = {_T_27,_T_31}; // @[ILZD.scala 15:10]
endmodule
