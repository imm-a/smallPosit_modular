module PositMulDec5_0(
  input        clock,
  input        reset,
  input  [4:0] io_A,
  input  [4:0] io_B,
  output [3:0] io_sigA,
  output [3:0] io_sigB,
  output [2:0] io_decAscale,
  output [2:0] io_decBscale,
  output       io_decAisNar,
  output       io_decBisNar,
  output       io_decAisZero,
  output       io_decBisZero
);
  wire  _T_1; // @[convert.scala 18:24]
  wire  _T_2; // @[convert.scala 18:40]
  wire  _T_3; // @[convert.scala 18:36]
  wire [2:0] _T_4; // @[convert.scala 19:24]
  wire [2:0] _T_5; // @[convert.scala 19:43]
  wire [2:0] _T_6; // @[convert.scala 19:39]
  wire [1:0] _T_7; // @[LZD.scala 43:32]
  wire  _T_8; // @[LZD.scala 39:14]
  wire  _T_9; // @[LZD.scala 39:21]
  wire  _T_10; // @[LZD.scala 39:30]
  wire  _T_11; // @[LZD.scala 39:27]
  wire  _T_12; // @[LZD.scala 39:25]
  wire [1:0] _T_13; // @[Cat.scala 29:58]
  wire  _T_14; // @[LZD.scala 44:32]
  wire  _T_16; // @[Shift.scala 12:21]
  wire  _T_18; // @[LZD.scala 55:32]
  wire  _T_19; // @[LZD.scala 55:20]
  wire [1:0] _T_20; // @[Cat.scala 29:58]
  wire [1:0] _T_21; // @[convert.scala 21:22]
  wire [1:0] _T_22; // @[convert.scala 22:36]
  wire  _T_23; // @[Shift.scala 16:24]
  wire  _T_24; // @[Shift.scala 17:37]
  wire  _T_26; // @[Shift.scala 64:52]
  wire [1:0] _T_27; // @[Cat.scala 29:58]
  wire [1:0] _T_28; // @[Shift.scala 64:27]
  wire [1:0] decA_fraction; // @[Shift.scala 16:10]
  wire  _T_32; // @[convert.scala 25:26]
  wire [1:0] _T_34; // @[convert.scala 25:42]
  wire [2:0] _T_35; // @[Cat.scala 29:58]
  wire [3:0] _T_37; // @[convert.scala 29:56]
  wire  _T_38; // @[convert.scala 29:60]
  wire  _T_39; // @[convert.scala 29:41]
  wire  _T_42; // @[convert.scala 30:19]
  wire  _T_51; // @[convert.scala 18:24]
  wire  _T_52; // @[convert.scala 18:40]
  wire  _T_53; // @[convert.scala 18:36]
  wire [2:0] _T_54; // @[convert.scala 19:24]
  wire [2:0] _T_55; // @[convert.scala 19:43]
  wire [2:0] _T_56; // @[convert.scala 19:39]
  wire [1:0] _T_57; // @[LZD.scala 43:32]
  wire  _T_58; // @[LZD.scala 39:14]
  wire  _T_59; // @[LZD.scala 39:21]
  wire  _T_60; // @[LZD.scala 39:30]
  wire  _T_61; // @[LZD.scala 39:27]
  wire  _T_62; // @[LZD.scala 39:25]
  wire [1:0] _T_63; // @[Cat.scala 29:58]
  wire  _T_64; // @[LZD.scala 44:32]
  wire  _T_66; // @[Shift.scala 12:21]
  wire  _T_68; // @[LZD.scala 55:32]
  wire  _T_69; // @[LZD.scala 55:20]
  wire [1:0] _T_70; // @[Cat.scala 29:58]
  wire [1:0] _T_71; // @[convert.scala 21:22]
  wire [1:0] _T_72; // @[convert.scala 22:36]
  wire  _T_73; // @[Shift.scala 16:24]
  wire  _T_74; // @[Shift.scala 17:37]
  wire  _T_76; // @[Shift.scala 64:52]
  wire [1:0] _T_77; // @[Cat.scala 29:58]
  wire [1:0] _T_78; // @[Shift.scala 64:27]
  wire [1:0] decB_fraction; // @[Shift.scala 16:10]
  wire  _T_82; // @[convert.scala 25:26]
  wire [1:0] _T_84; // @[convert.scala 25:42]
  wire [2:0] _T_85; // @[Cat.scala 29:58]
  wire [3:0] _T_87; // @[convert.scala 29:56]
  wire  _T_88; // @[convert.scala 29:60]
  wire  _T_89; // @[convert.scala 29:41]
  wire  _T_92; // @[convert.scala 30:19]
  wire  _T_100; // @[PositMulDec.scala 31:34]
  wire [3:0] _T_102; // @[Cat.scala 29:58]
  wire  _T_104; // @[PositMulDec.scala 32:34]
  wire [3:0] _T_106; // @[Cat.scala 29:58]
  assign _T_1 = io_A[4]; // @[convert.scala 18:24]
  assign _T_2 = io_A[3]; // @[convert.scala 18:40]
  assign _T_3 = _T_1 ^ _T_2; // @[convert.scala 18:36]
  assign _T_4 = io_A[3:1]; // @[convert.scala 19:24]
  assign _T_5 = io_A[2:0]; // @[convert.scala 19:43]
  assign _T_6 = _T_4 ^ _T_5; // @[convert.scala 19:39]
  assign _T_7 = _T_6[2:1]; // @[LZD.scala 43:32]
  assign _T_8 = _T_7 != 2'h0; // @[LZD.scala 39:14]
  assign _T_9 = _T_7[1]; // @[LZD.scala 39:21]
  assign _T_10 = _T_7[0]; // @[LZD.scala 39:30]
  assign _T_11 = ~ _T_10; // @[LZD.scala 39:27]
  assign _T_12 = _T_9 | _T_11; // @[LZD.scala 39:25]
  assign _T_13 = {_T_8,_T_12}; // @[Cat.scala 29:58]
  assign _T_14 = _T_6[0:0]; // @[LZD.scala 44:32]
  assign _T_16 = _T_13[1]; // @[Shift.scala 12:21]
  assign _T_18 = _T_13[0:0]; // @[LZD.scala 55:32]
  assign _T_19 = _T_16 ? _T_18 : _T_14; // @[LZD.scala 55:20]
  assign _T_20 = {_T_16,_T_19}; // @[Cat.scala 29:58]
  assign _T_21 = ~ _T_20; // @[convert.scala 21:22]
  assign _T_22 = io_A[1:0]; // @[convert.scala 22:36]
  assign _T_23 = _T_21 < 2'h2; // @[Shift.scala 16:24]
  assign _T_24 = _T_21[0]; // @[Shift.scala 17:37]
  assign _T_26 = _T_22[0:0]; // @[Shift.scala 64:52]
  assign _T_27 = {_T_26,1'h0}; // @[Cat.scala 29:58]
  assign _T_28 = _T_24 ? _T_27 : _T_22; // @[Shift.scala 64:27]
  assign decA_fraction = _T_23 ? _T_28 : 2'h0; // @[Shift.scala 16:10]
  assign _T_32 = _T_3 == 1'h0; // @[convert.scala 25:26]
  assign _T_34 = _T_3 ? _T_21 : _T_20; // @[convert.scala 25:42]
  assign _T_35 = {_T_32,_T_34}; // @[Cat.scala 29:58]
  assign _T_37 = io_A[3:0]; // @[convert.scala 29:56]
  assign _T_38 = _T_37 != 4'h0; // @[convert.scala 29:60]
  assign _T_39 = ~ _T_38; // @[convert.scala 29:41]
  assign _T_42 = _T_1 == 1'h0; // @[convert.scala 30:19]
  assign _T_51 = io_B[4]; // @[convert.scala 18:24]
  assign _T_52 = io_B[3]; // @[convert.scala 18:40]
  assign _T_53 = _T_51 ^ _T_52; // @[convert.scala 18:36]
  assign _T_54 = io_B[3:1]; // @[convert.scala 19:24]
  assign _T_55 = io_B[2:0]; // @[convert.scala 19:43]
  assign _T_56 = _T_54 ^ _T_55; // @[convert.scala 19:39]
  assign _T_57 = _T_56[2:1]; // @[LZD.scala 43:32]
  assign _T_58 = _T_57 != 2'h0; // @[LZD.scala 39:14]
  assign _T_59 = _T_57[1]; // @[LZD.scala 39:21]
  assign _T_60 = _T_57[0]; // @[LZD.scala 39:30]
  assign _T_61 = ~ _T_60; // @[LZD.scala 39:27]
  assign _T_62 = _T_59 | _T_61; // @[LZD.scala 39:25]
  assign _T_63 = {_T_58,_T_62}; // @[Cat.scala 29:58]
  assign _T_64 = _T_56[0:0]; // @[LZD.scala 44:32]
  assign _T_66 = _T_63[1]; // @[Shift.scala 12:21]
  assign _T_68 = _T_63[0:0]; // @[LZD.scala 55:32]
  assign _T_69 = _T_66 ? _T_68 : _T_64; // @[LZD.scala 55:20]
  assign _T_70 = {_T_66,_T_69}; // @[Cat.scala 29:58]
  assign _T_71 = ~ _T_70; // @[convert.scala 21:22]
  assign _T_72 = io_B[1:0]; // @[convert.scala 22:36]
  assign _T_73 = _T_71 < 2'h2; // @[Shift.scala 16:24]
  assign _T_74 = _T_71[0]; // @[Shift.scala 17:37]
  assign _T_76 = _T_72[0:0]; // @[Shift.scala 64:52]
  assign _T_77 = {_T_76,1'h0}; // @[Cat.scala 29:58]
  assign _T_78 = _T_74 ? _T_77 : _T_72; // @[Shift.scala 64:27]
  assign decB_fraction = _T_73 ? _T_78 : 2'h0; // @[Shift.scala 16:10]
  assign _T_82 = _T_53 == 1'h0; // @[convert.scala 25:26]
  assign _T_84 = _T_53 ? _T_71 : _T_70; // @[convert.scala 25:42]
  assign _T_85 = {_T_82,_T_84}; // @[Cat.scala 29:58]
  assign _T_87 = io_B[3:0]; // @[convert.scala 29:56]
  assign _T_88 = _T_87 != 4'h0; // @[convert.scala 29:60]
  assign _T_89 = ~ _T_88; // @[convert.scala 29:41]
  assign _T_92 = _T_51 == 1'h0; // @[convert.scala 30:19]
  assign _T_100 = ~ _T_1; // @[PositMulDec.scala 31:34]
  assign _T_102 = {_T_1,_T_100,decA_fraction}; // @[Cat.scala 29:58]
  assign _T_104 = ~ _T_51; // @[PositMulDec.scala 32:34]
  assign _T_106 = {_T_51,_T_104,decB_fraction}; // @[Cat.scala 29:58]
  assign io_sigA = $signed(_T_102); // @[PositMulDec.scala 31:16]
  assign io_sigB = $signed(_T_106); // @[PositMulDec.scala 32:16]
  assign io_decAscale = $signed(_T_35); // @[PositMulDec.scala 33:16]
  assign io_decBscale = $signed(_T_85); // @[PositMulDec.scala 34:16]
  assign io_decAisNar = _T_1 & _T_39; // @[PositMulDec.scala 35:16]
  assign io_decBisNar = _T_51 & _T_89; // @[PositMulDec.scala 36:16]
  assign io_decAisZero = _T_42 & _T_39; // @[PositMulDec.scala 37:17]
  assign io_decBisZero = _T_92 & _T_89; // @[PositMulDec.scala 38:17]
endmodule
