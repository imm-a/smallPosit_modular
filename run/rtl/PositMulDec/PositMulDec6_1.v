module PositMulDec6_1(
  input        clock,
  input        reset,
  input  [5:0] io_A,
  input  [5:0] io_B,
  output [3:0] io_sigA,
  output [3:0] io_sigB,
  output [4:0] io_decAscale,
  output [4:0] io_decBscale,
  output       io_decAisNar,
  output       io_decBisNar,
  output       io_decAisZero,
  output       io_decBisZero
);
  wire  _T_1; // @[convert.scala 18:24]
  wire  _T_2; // @[convert.scala 18:40]
  wire  _T_3; // @[convert.scala 18:36]
  wire [3:0] _T_4; // @[convert.scala 19:24]
  wire [3:0] _T_5; // @[convert.scala 19:43]
  wire [3:0] _T_6; // @[convert.scala 19:39]
  wire [1:0] _T_7; // @[LZD.scala 43:32]
  wire  _T_8; // @[LZD.scala 39:14]
  wire  _T_9; // @[LZD.scala 39:21]
  wire  _T_10; // @[LZD.scala 39:30]
  wire  _T_11; // @[LZD.scala 39:27]
  wire  _T_12; // @[LZD.scala 39:25]
  wire [1:0] _T_13; // @[Cat.scala 29:58]
  wire [1:0] _T_14; // @[LZD.scala 44:32]
  wire  _T_15; // @[LZD.scala 39:14]
  wire  _T_16; // @[LZD.scala 39:21]
  wire  _T_17; // @[LZD.scala 39:30]
  wire  _T_18; // @[LZD.scala 39:27]
  wire  _T_19; // @[LZD.scala 39:25]
  wire [1:0] _T_20; // @[Cat.scala 29:58]
  wire  _T_21; // @[Shift.scala 12:21]
  wire  _T_22; // @[Shift.scala 12:21]
  wire  _T_23; // @[LZD.scala 49:16]
  wire  _T_24; // @[LZD.scala 49:27]
  wire  _T_25; // @[LZD.scala 49:25]
  wire  _T_26; // @[LZD.scala 49:47]
  wire  _T_27; // @[LZD.scala 49:59]
  wire  _T_28; // @[LZD.scala 49:35]
  wire [2:0] _T_30; // @[Cat.scala 29:58]
  wire [2:0] _T_31; // @[convert.scala 21:22]
  wire [2:0] _T_32; // @[convert.scala 22:36]
  wire  _T_33; // @[Shift.scala 16:24]
  wire [1:0] _T_34; // @[Shift.scala 17:37]
  wire  _T_35; // @[Shift.scala 12:21]
  wire  _T_36; // @[Shift.scala 64:52]
  wire [2:0] _T_38; // @[Cat.scala 29:58]
  wire [2:0] _T_39; // @[Shift.scala 64:27]
  wire  _T_40; // @[Shift.scala 66:70]
  wire [1:0] _T_42; // @[Shift.scala 64:52]
  wire [2:0] _T_43; // @[Cat.scala 29:58]
  wire [2:0] _T_44; // @[Shift.scala 64:27]
  wire [2:0] _T_45; // @[Shift.scala 16:10]
  wire  _T_46; // @[convert.scala 23:34]
  wire [1:0] decA_fraction; // @[convert.scala 24:34]
  wire  _T_48; // @[convert.scala 25:26]
  wire [2:0] _T_50; // @[convert.scala 25:42]
  wire  _T_53; // @[convert.scala 26:67]
  wire  _T_54; // @[convert.scala 26:51]
  wire [4:0] _T_55; // @[Cat.scala 29:58]
  wire [4:0] _T_57; // @[convert.scala 29:56]
  wire  _T_58; // @[convert.scala 29:60]
  wire  _T_59; // @[convert.scala 29:41]
  wire  _T_62; // @[convert.scala 30:19]
  wire  _T_71; // @[convert.scala 18:24]
  wire  _T_72; // @[convert.scala 18:40]
  wire  _T_73; // @[convert.scala 18:36]
  wire [3:0] _T_74; // @[convert.scala 19:24]
  wire [3:0] _T_75; // @[convert.scala 19:43]
  wire [3:0] _T_76; // @[convert.scala 19:39]
  wire [1:0] _T_77; // @[LZD.scala 43:32]
  wire  _T_78; // @[LZD.scala 39:14]
  wire  _T_79; // @[LZD.scala 39:21]
  wire  _T_80; // @[LZD.scala 39:30]
  wire  _T_81; // @[LZD.scala 39:27]
  wire  _T_82; // @[LZD.scala 39:25]
  wire [1:0] _T_83; // @[Cat.scala 29:58]
  wire [1:0] _T_84; // @[LZD.scala 44:32]
  wire  _T_85; // @[LZD.scala 39:14]
  wire  _T_86; // @[LZD.scala 39:21]
  wire  _T_87; // @[LZD.scala 39:30]
  wire  _T_88; // @[LZD.scala 39:27]
  wire  _T_89; // @[LZD.scala 39:25]
  wire [1:0] _T_90; // @[Cat.scala 29:58]
  wire  _T_91; // @[Shift.scala 12:21]
  wire  _T_92; // @[Shift.scala 12:21]
  wire  _T_93; // @[LZD.scala 49:16]
  wire  _T_94; // @[LZD.scala 49:27]
  wire  _T_95; // @[LZD.scala 49:25]
  wire  _T_96; // @[LZD.scala 49:47]
  wire  _T_97; // @[LZD.scala 49:59]
  wire  _T_98; // @[LZD.scala 49:35]
  wire [2:0] _T_100; // @[Cat.scala 29:58]
  wire [2:0] _T_101; // @[convert.scala 21:22]
  wire [2:0] _T_102; // @[convert.scala 22:36]
  wire  _T_103; // @[Shift.scala 16:24]
  wire [1:0] _T_104; // @[Shift.scala 17:37]
  wire  _T_105; // @[Shift.scala 12:21]
  wire  _T_106; // @[Shift.scala 64:52]
  wire [2:0] _T_108; // @[Cat.scala 29:58]
  wire [2:0] _T_109; // @[Shift.scala 64:27]
  wire  _T_110; // @[Shift.scala 66:70]
  wire [1:0] _T_112; // @[Shift.scala 64:52]
  wire [2:0] _T_113; // @[Cat.scala 29:58]
  wire [2:0] _T_114; // @[Shift.scala 64:27]
  wire [2:0] _T_115; // @[Shift.scala 16:10]
  wire  _T_116; // @[convert.scala 23:34]
  wire [1:0] decB_fraction; // @[convert.scala 24:34]
  wire  _T_118; // @[convert.scala 25:26]
  wire [2:0] _T_120; // @[convert.scala 25:42]
  wire  _T_123; // @[convert.scala 26:67]
  wire  _T_124; // @[convert.scala 26:51]
  wire [4:0] _T_125; // @[Cat.scala 29:58]
  wire [4:0] _T_127; // @[convert.scala 29:56]
  wire  _T_128; // @[convert.scala 29:60]
  wire  _T_129; // @[convert.scala 29:41]
  wire  _T_132; // @[convert.scala 30:19]
  wire  _T_140; // @[PositMulDec.scala 31:34]
  wire [3:0] _T_142; // @[Cat.scala 29:58]
  wire  _T_144; // @[PositMulDec.scala 32:34]
  wire [3:0] _T_146; // @[Cat.scala 29:58]
  assign _T_1 = io_A[5]; // @[convert.scala 18:24]
  assign _T_2 = io_A[4]; // @[convert.scala 18:40]
  assign _T_3 = _T_1 ^ _T_2; // @[convert.scala 18:36]
  assign _T_4 = io_A[4:1]; // @[convert.scala 19:24]
  assign _T_5 = io_A[3:0]; // @[convert.scala 19:43]
  assign _T_6 = _T_4 ^ _T_5; // @[convert.scala 19:39]
  assign _T_7 = _T_6[3:2]; // @[LZD.scala 43:32]
  assign _T_8 = _T_7 != 2'h0; // @[LZD.scala 39:14]
  assign _T_9 = _T_7[1]; // @[LZD.scala 39:21]
  assign _T_10 = _T_7[0]; // @[LZD.scala 39:30]
  assign _T_11 = ~ _T_10; // @[LZD.scala 39:27]
  assign _T_12 = _T_9 | _T_11; // @[LZD.scala 39:25]
  assign _T_13 = {_T_8,_T_12}; // @[Cat.scala 29:58]
  assign _T_14 = _T_6[1:0]; // @[LZD.scala 44:32]
  assign _T_15 = _T_14 != 2'h0; // @[LZD.scala 39:14]
  assign _T_16 = _T_14[1]; // @[LZD.scala 39:21]
  assign _T_17 = _T_14[0]; // @[LZD.scala 39:30]
  assign _T_18 = ~ _T_17; // @[LZD.scala 39:27]
  assign _T_19 = _T_16 | _T_18; // @[LZD.scala 39:25]
  assign _T_20 = {_T_15,_T_19}; // @[Cat.scala 29:58]
  assign _T_21 = _T_13[1]; // @[Shift.scala 12:21]
  assign _T_22 = _T_20[1]; // @[Shift.scala 12:21]
  assign _T_23 = _T_21 | _T_22; // @[LZD.scala 49:16]
  assign _T_24 = ~ _T_22; // @[LZD.scala 49:27]
  assign _T_25 = _T_21 | _T_24; // @[LZD.scala 49:25]
  assign _T_26 = _T_13[0:0]; // @[LZD.scala 49:47]
  assign _T_27 = _T_20[0:0]; // @[LZD.scala 49:59]
  assign _T_28 = _T_21 ? _T_26 : _T_27; // @[LZD.scala 49:35]
  assign _T_30 = {_T_23,_T_25,_T_28}; // @[Cat.scala 29:58]
  assign _T_31 = ~ _T_30; // @[convert.scala 21:22]
  assign _T_32 = io_A[2:0]; // @[convert.scala 22:36]
  assign _T_33 = _T_31 < 3'h3; // @[Shift.scala 16:24]
  assign _T_34 = _T_31[1:0]; // @[Shift.scala 17:37]
  assign _T_35 = _T_34[1]; // @[Shift.scala 12:21]
  assign _T_36 = _T_32[0:0]; // @[Shift.scala 64:52]
  assign _T_38 = {_T_36,2'h0}; // @[Cat.scala 29:58]
  assign _T_39 = _T_35 ? _T_38 : _T_32; // @[Shift.scala 64:27]
  assign _T_40 = _T_34[0:0]; // @[Shift.scala 66:70]
  assign _T_42 = _T_39[1:0]; // @[Shift.scala 64:52]
  assign _T_43 = {_T_42,1'h0}; // @[Cat.scala 29:58]
  assign _T_44 = _T_40 ? _T_43 : _T_39; // @[Shift.scala 64:27]
  assign _T_45 = _T_33 ? _T_44 : 3'h0; // @[Shift.scala 16:10]
  assign _T_46 = _T_45[2:2]; // @[convert.scala 23:34]
  assign decA_fraction = _T_45[1:0]; // @[convert.scala 24:34]
  assign _T_48 = _T_3 == 1'h0; // @[convert.scala 25:26]
  assign _T_50 = _T_3 ? _T_31 : _T_30; // @[convert.scala 25:42]
  assign _T_53 = ~ _T_46; // @[convert.scala 26:67]
  assign _T_54 = _T_1 ? _T_53 : _T_46; // @[convert.scala 26:51]
  assign _T_55 = {_T_48,_T_50,_T_54}; // @[Cat.scala 29:58]
  assign _T_57 = io_A[4:0]; // @[convert.scala 29:56]
  assign _T_58 = _T_57 != 5'h0; // @[convert.scala 29:60]
  assign _T_59 = ~ _T_58; // @[convert.scala 29:41]
  assign _T_62 = _T_1 == 1'h0; // @[convert.scala 30:19]
  assign _T_71 = io_B[5]; // @[convert.scala 18:24]
  assign _T_72 = io_B[4]; // @[convert.scala 18:40]
  assign _T_73 = _T_71 ^ _T_72; // @[convert.scala 18:36]
  assign _T_74 = io_B[4:1]; // @[convert.scala 19:24]
  assign _T_75 = io_B[3:0]; // @[convert.scala 19:43]
  assign _T_76 = _T_74 ^ _T_75; // @[convert.scala 19:39]
  assign _T_77 = _T_76[3:2]; // @[LZD.scala 43:32]
  assign _T_78 = _T_77 != 2'h0; // @[LZD.scala 39:14]
  assign _T_79 = _T_77[1]; // @[LZD.scala 39:21]
  assign _T_80 = _T_77[0]; // @[LZD.scala 39:30]
  assign _T_81 = ~ _T_80; // @[LZD.scala 39:27]
  assign _T_82 = _T_79 | _T_81; // @[LZD.scala 39:25]
  assign _T_83 = {_T_78,_T_82}; // @[Cat.scala 29:58]
  assign _T_84 = _T_76[1:0]; // @[LZD.scala 44:32]
  assign _T_85 = _T_84 != 2'h0; // @[LZD.scala 39:14]
  assign _T_86 = _T_84[1]; // @[LZD.scala 39:21]
  assign _T_87 = _T_84[0]; // @[LZD.scala 39:30]
  assign _T_88 = ~ _T_87; // @[LZD.scala 39:27]
  assign _T_89 = _T_86 | _T_88; // @[LZD.scala 39:25]
  assign _T_90 = {_T_85,_T_89}; // @[Cat.scala 29:58]
  assign _T_91 = _T_83[1]; // @[Shift.scala 12:21]
  assign _T_92 = _T_90[1]; // @[Shift.scala 12:21]
  assign _T_93 = _T_91 | _T_92; // @[LZD.scala 49:16]
  assign _T_94 = ~ _T_92; // @[LZD.scala 49:27]
  assign _T_95 = _T_91 | _T_94; // @[LZD.scala 49:25]
  assign _T_96 = _T_83[0:0]; // @[LZD.scala 49:47]
  assign _T_97 = _T_90[0:0]; // @[LZD.scala 49:59]
  assign _T_98 = _T_91 ? _T_96 : _T_97; // @[LZD.scala 49:35]
  assign _T_100 = {_T_93,_T_95,_T_98}; // @[Cat.scala 29:58]
  assign _T_101 = ~ _T_100; // @[convert.scala 21:22]
  assign _T_102 = io_B[2:0]; // @[convert.scala 22:36]
  assign _T_103 = _T_101 < 3'h3; // @[Shift.scala 16:24]
  assign _T_104 = _T_101[1:0]; // @[Shift.scala 17:37]
  assign _T_105 = _T_104[1]; // @[Shift.scala 12:21]
  assign _T_106 = _T_102[0:0]; // @[Shift.scala 64:52]
  assign _T_108 = {_T_106,2'h0}; // @[Cat.scala 29:58]
  assign _T_109 = _T_105 ? _T_108 : _T_102; // @[Shift.scala 64:27]
  assign _T_110 = _T_104[0:0]; // @[Shift.scala 66:70]
  assign _T_112 = _T_109[1:0]; // @[Shift.scala 64:52]
  assign _T_113 = {_T_112,1'h0}; // @[Cat.scala 29:58]
  assign _T_114 = _T_110 ? _T_113 : _T_109; // @[Shift.scala 64:27]
  assign _T_115 = _T_103 ? _T_114 : 3'h0; // @[Shift.scala 16:10]
  assign _T_116 = _T_115[2:2]; // @[convert.scala 23:34]
  assign decB_fraction = _T_115[1:0]; // @[convert.scala 24:34]
  assign _T_118 = _T_73 == 1'h0; // @[convert.scala 25:26]
  assign _T_120 = _T_73 ? _T_101 : _T_100; // @[convert.scala 25:42]
  assign _T_123 = ~ _T_116; // @[convert.scala 26:67]
  assign _T_124 = _T_71 ? _T_123 : _T_116; // @[convert.scala 26:51]
  assign _T_125 = {_T_118,_T_120,_T_124}; // @[Cat.scala 29:58]
  assign _T_127 = io_B[4:0]; // @[convert.scala 29:56]
  assign _T_128 = _T_127 != 5'h0; // @[convert.scala 29:60]
  assign _T_129 = ~ _T_128; // @[convert.scala 29:41]
  assign _T_132 = _T_71 == 1'h0; // @[convert.scala 30:19]
  assign _T_140 = ~ _T_1; // @[PositMulDec.scala 31:34]
  assign _T_142 = {_T_1,_T_140,decA_fraction}; // @[Cat.scala 29:58]
  assign _T_144 = ~ _T_71; // @[PositMulDec.scala 32:34]
  assign _T_146 = {_T_71,_T_144,decB_fraction}; // @[Cat.scala 29:58]
  assign io_sigA = $signed(_T_142); // @[PositMulDec.scala 31:16]
  assign io_sigB = $signed(_T_146); // @[PositMulDec.scala 32:16]
  assign io_decAscale = $signed(_T_55); // @[PositMulDec.scala 33:16]
  assign io_decBscale = $signed(_T_125); // @[PositMulDec.scala 34:16]
  assign io_decAisNar = _T_1 & _T_59; // @[PositMulDec.scala 35:16]
  assign io_decBisNar = _T_71 & _T_129; // @[PositMulDec.scala 36:16]
  assign io_decAisZero = _T_62 & _T_59; // @[PositMulDec.scala 37:17]
  assign io_decBisZero = _T_132 & _T_129; // @[PositMulDec.scala 38:17]
endmodule
