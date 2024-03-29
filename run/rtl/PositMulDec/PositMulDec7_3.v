module PositMulDec7_3(
  input        clock,
  input        reset,
  input  [6:0] io_A,
  input  [6:0] io_B,
  output [2:0] io_sigA,
  output [2:0] io_sigB,
  output [6:0] io_decAscale,
  output [6:0] io_decBscale,
  output       io_decAisNar,
  output       io_decBisNar,
  output       io_decAisZero,
  output       io_decBisZero
);
  wire  _T_1; // @[convert.scala 18:24]
  wire  _T_2; // @[convert.scala 18:40]
  wire  _T_3; // @[convert.scala 18:36]
  wire [4:0] _T_4; // @[convert.scala 19:24]
  wire [4:0] _T_5; // @[convert.scala 19:43]
  wire [4:0] _T_6; // @[convert.scala 19:39]
  wire [3:0] _T_7; // @[LZD.scala 43:32]
  wire [1:0] _T_8; // @[LZD.scala 43:32]
  wire  _T_9; // @[LZD.scala 39:14]
  wire  _T_10; // @[LZD.scala 39:21]
  wire  _T_11; // @[LZD.scala 39:30]
  wire  _T_12; // @[LZD.scala 39:27]
  wire  _T_13; // @[LZD.scala 39:25]
  wire [1:0] _T_14; // @[Cat.scala 29:58]
  wire [1:0] _T_15; // @[LZD.scala 44:32]
  wire  _T_16; // @[LZD.scala 39:14]
  wire  _T_17; // @[LZD.scala 39:21]
  wire  _T_18; // @[LZD.scala 39:30]
  wire  _T_19; // @[LZD.scala 39:27]
  wire  _T_20; // @[LZD.scala 39:25]
  wire [1:0] _T_21; // @[Cat.scala 29:58]
  wire  _T_22; // @[Shift.scala 12:21]
  wire  _T_23; // @[Shift.scala 12:21]
  wire  _T_24; // @[LZD.scala 49:16]
  wire  _T_25; // @[LZD.scala 49:27]
  wire  _T_26; // @[LZD.scala 49:25]
  wire  _T_27; // @[LZD.scala 49:47]
  wire  _T_28; // @[LZD.scala 49:59]
  wire  _T_29; // @[LZD.scala 49:35]
  wire [2:0] _T_31; // @[Cat.scala 29:58]
  wire  _T_32; // @[LZD.scala 44:32]
  wire  _T_34; // @[Shift.scala 12:21]
  wire [1:0] _T_36; // @[Cat.scala 29:58]
  wire [1:0] _T_37; // @[LZD.scala 55:32]
  wire [1:0] _T_38; // @[LZD.scala 55:20]
  wire [2:0] _T_39; // @[Cat.scala 29:58]
  wire [2:0] _T_40; // @[convert.scala 21:22]
  wire [3:0] _T_41; // @[convert.scala 22:36]
  wire  _T_42; // @[Shift.scala 16:24]
  wire [1:0] _T_43; // @[Shift.scala 17:37]
  wire  _T_44; // @[Shift.scala 12:21]
  wire [1:0] _T_45; // @[Shift.scala 64:52]
  wire [3:0] _T_47; // @[Cat.scala 29:58]
  wire [3:0] _T_48; // @[Shift.scala 64:27]
  wire  _T_49; // @[Shift.scala 66:70]
  wire [2:0] _T_51; // @[Shift.scala 64:52]
  wire [3:0] _T_52; // @[Cat.scala 29:58]
  wire [3:0] _T_53; // @[Shift.scala 64:27]
  wire [3:0] _T_54; // @[Shift.scala 16:10]
  wire [2:0] _T_55; // @[convert.scala 23:34]
  wire  decA_fraction; // @[convert.scala 24:34]
  wire  _T_57; // @[convert.scala 25:26]
  wire [2:0] _T_59; // @[convert.scala 25:42]
  wire [2:0] _T_62; // @[convert.scala 26:67]
  wire [2:0] _T_63; // @[convert.scala 26:51]
  wire [6:0] _T_64; // @[Cat.scala 29:58]
  wire [5:0] _T_66; // @[convert.scala 29:56]
  wire  _T_67; // @[convert.scala 29:60]
  wire  _T_68; // @[convert.scala 29:41]
  wire  _T_71; // @[convert.scala 30:19]
  wire  _T_80; // @[convert.scala 18:24]
  wire  _T_81; // @[convert.scala 18:40]
  wire  _T_82; // @[convert.scala 18:36]
  wire [4:0] _T_83; // @[convert.scala 19:24]
  wire [4:0] _T_84; // @[convert.scala 19:43]
  wire [4:0] _T_85; // @[convert.scala 19:39]
  wire [3:0] _T_86; // @[LZD.scala 43:32]
  wire [1:0] _T_87; // @[LZD.scala 43:32]
  wire  _T_88; // @[LZD.scala 39:14]
  wire  _T_89; // @[LZD.scala 39:21]
  wire  _T_90; // @[LZD.scala 39:30]
  wire  _T_91; // @[LZD.scala 39:27]
  wire  _T_92; // @[LZD.scala 39:25]
  wire [1:0] _T_93; // @[Cat.scala 29:58]
  wire [1:0] _T_94; // @[LZD.scala 44:32]
  wire  _T_95; // @[LZD.scala 39:14]
  wire  _T_96; // @[LZD.scala 39:21]
  wire  _T_97; // @[LZD.scala 39:30]
  wire  _T_98; // @[LZD.scala 39:27]
  wire  _T_99; // @[LZD.scala 39:25]
  wire [1:0] _T_100; // @[Cat.scala 29:58]
  wire  _T_101; // @[Shift.scala 12:21]
  wire  _T_102; // @[Shift.scala 12:21]
  wire  _T_103; // @[LZD.scala 49:16]
  wire  _T_104; // @[LZD.scala 49:27]
  wire  _T_105; // @[LZD.scala 49:25]
  wire  _T_106; // @[LZD.scala 49:47]
  wire  _T_107; // @[LZD.scala 49:59]
  wire  _T_108; // @[LZD.scala 49:35]
  wire [2:0] _T_110; // @[Cat.scala 29:58]
  wire  _T_111; // @[LZD.scala 44:32]
  wire  _T_113; // @[Shift.scala 12:21]
  wire [1:0] _T_115; // @[Cat.scala 29:58]
  wire [1:0] _T_116; // @[LZD.scala 55:32]
  wire [1:0] _T_117; // @[LZD.scala 55:20]
  wire [2:0] _T_118; // @[Cat.scala 29:58]
  wire [2:0] _T_119; // @[convert.scala 21:22]
  wire [3:0] _T_120; // @[convert.scala 22:36]
  wire  _T_121; // @[Shift.scala 16:24]
  wire [1:0] _T_122; // @[Shift.scala 17:37]
  wire  _T_123; // @[Shift.scala 12:21]
  wire [1:0] _T_124; // @[Shift.scala 64:52]
  wire [3:0] _T_126; // @[Cat.scala 29:58]
  wire [3:0] _T_127; // @[Shift.scala 64:27]
  wire  _T_128; // @[Shift.scala 66:70]
  wire [2:0] _T_130; // @[Shift.scala 64:52]
  wire [3:0] _T_131; // @[Cat.scala 29:58]
  wire [3:0] _T_132; // @[Shift.scala 64:27]
  wire [3:0] _T_133; // @[Shift.scala 16:10]
  wire [2:0] _T_134; // @[convert.scala 23:34]
  wire  decB_fraction; // @[convert.scala 24:34]
  wire  _T_136; // @[convert.scala 25:26]
  wire [2:0] _T_138; // @[convert.scala 25:42]
  wire [2:0] _T_141; // @[convert.scala 26:67]
  wire [2:0] _T_142; // @[convert.scala 26:51]
  wire [6:0] _T_143; // @[Cat.scala 29:58]
  wire [5:0] _T_145; // @[convert.scala 29:56]
  wire  _T_146; // @[convert.scala 29:60]
  wire  _T_147; // @[convert.scala 29:41]
  wire  _T_150; // @[convert.scala 30:19]
  wire  _T_158; // @[PositMulDec.scala 31:34]
  wire [2:0] _T_160; // @[Cat.scala 29:58]
  wire  _T_162; // @[PositMulDec.scala 32:34]
  wire [2:0] _T_164; // @[Cat.scala 29:58]
  assign _T_1 = io_A[6]; // @[convert.scala 18:24]
  assign _T_2 = io_A[5]; // @[convert.scala 18:40]
  assign _T_3 = _T_1 ^ _T_2; // @[convert.scala 18:36]
  assign _T_4 = io_A[5:1]; // @[convert.scala 19:24]
  assign _T_5 = io_A[4:0]; // @[convert.scala 19:43]
  assign _T_6 = _T_4 ^ _T_5; // @[convert.scala 19:39]
  assign _T_7 = _T_6[4:1]; // @[LZD.scala 43:32]
  assign _T_8 = _T_7[3:2]; // @[LZD.scala 43:32]
  assign _T_9 = _T_8 != 2'h0; // @[LZD.scala 39:14]
  assign _T_10 = _T_8[1]; // @[LZD.scala 39:21]
  assign _T_11 = _T_8[0]; // @[LZD.scala 39:30]
  assign _T_12 = ~ _T_11; // @[LZD.scala 39:27]
  assign _T_13 = _T_10 | _T_12; // @[LZD.scala 39:25]
  assign _T_14 = {_T_9,_T_13}; // @[Cat.scala 29:58]
  assign _T_15 = _T_7[1:0]; // @[LZD.scala 44:32]
  assign _T_16 = _T_15 != 2'h0; // @[LZD.scala 39:14]
  assign _T_17 = _T_15[1]; // @[LZD.scala 39:21]
  assign _T_18 = _T_15[0]; // @[LZD.scala 39:30]
  assign _T_19 = ~ _T_18; // @[LZD.scala 39:27]
  assign _T_20 = _T_17 | _T_19; // @[LZD.scala 39:25]
  assign _T_21 = {_T_16,_T_20}; // @[Cat.scala 29:58]
  assign _T_22 = _T_14[1]; // @[Shift.scala 12:21]
  assign _T_23 = _T_21[1]; // @[Shift.scala 12:21]
  assign _T_24 = _T_22 | _T_23; // @[LZD.scala 49:16]
  assign _T_25 = ~ _T_23; // @[LZD.scala 49:27]
  assign _T_26 = _T_22 | _T_25; // @[LZD.scala 49:25]
  assign _T_27 = _T_14[0:0]; // @[LZD.scala 49:47]
  assign _T_28 = _T_21[0:0]; // @[LZD.scala 49:59]
  assign _T_29 = _T_22 ? _T_27 : _T_28; // @[LZD.scala 49:35]
  assign _T_31 = {_T_24,_T_26,_T_29}; // @[Cat.scala 29:58]
  assign _T_32 = _T_6[0:0]; // @[LZD.scala 44:32]
  assign _T_34 = _T_31[2]; // @[Shift.scala 12:21]
  assign _T_36 = {1'h1,_T_32}; // @[Cat.scala 29:58]
  assign _T_37 = _T_31[1:0]; // @[LZD.scala 55:32]
  assign _T_38 = _T_34 ? _T_37 : _T_36; // @[LZD.scala 55:20]
  assign _T_39 = {_T_34,_T_38}; // @[Cat.scala 29:58]
  assign _T_40 = ~ _T_39; // @[convert.scala 21:22]
  assign _T_41 = io_A[3:0]; // @[convert.scala 22:36]
  assign _T_42 = _T_40 < 3'h4; // @[Shift.scala 16:24]
  assign _T_43 = _T_40[1:0]; // @[Shift.scala 17:37]
  assign _T_44 = _T_43[1]; // @[Shift.scala 12:21]
  assign _T_45 = _T_41[1:0]; // @[Shift.scala 64:52]
  assign _T_47 = {_T_45,2'h0}; // @[Cat.scala 29:58]
  assign _T_48 = _T_44 ? _T_47 : _T_41; // @[Shift.scala 64:27]
  assign _T_49 = _T_43[0:0]; // @[Shift.scala 66:70]
  assign _T_51 = _T_48[2:0]; // @[Shift.scala 64:52]
  assign _T_52 = {_T_51,1'h0}; // @[Cat.scala 29:58]
  assign _T_53 = _T_49 ? _T_52 : _T_48; // @[Shift.scala 64:27]
  assign _T_54 = _T_42 ? _T_53 : 4'h0; // @[Shift.scala 16:10]
  assign _T_55 = _T_54[3:1]; // @[convert.scala 23:34]
  assign decA_fraction = _T_54[0:0]; // @[convert.scala 24:34]
  assign _T_57 = _T_3 == 1'h0; // @[convert.scala 25:26]
  assign _T_59 = _T_3 ? _T_40 : _T_39; // @[convert.scala 25:42]
  assign _T_62 = ~ _T_55; // @[convert.scala 26:67]
  assign _T_63 = _T_1 ? _T_62 : _T_55; // @[convert.scala 26:51]
  assign _T_64 = {_T_57,_T_59,_T_63}; // @[Cat.scala 29:58]
  assign _T_66 = io_A[5:0]; // @[convert.scala 29:56]
  assign _T_67 = _T_66 != 6'h0; // @[convert.scala 29:60]
  assign _T_68 = ~ _T_67; // @[convert.scala 29:41]
  assign _T_71 = _T_1 == 1'h0; // @[convert.scala 30:19]
  assign _T_80 = io_B[6]; // @[convert.scala 18:24]
  assign _T_81 = io_B[5]; // @[convert.scala 18:40]
  assign _T_82 = _T_80 ^ _T_81; // @[convert.scala 18:36]
  assign _T_83 = io_B[5:1]; // @[convert.scala 19:24]
  assign _T_84 = io_B[4:0]; // @[convert.scala 19:43]
  assign _T_85 = _T_83 ^ _T_84; // @[convert.scala 19:39]
  assign _T_86 = _T_85[4:1]; // @[LZD.scala 43:32]
  assign _T_87 = _T_86[3:2]; // @[LZD.scala 43:32]
  assign _T_88 = _T_87 != 2'h0; // @[LZD.scala 39:14]
  assign _T_89 = _T_87[1]; // @[LZD.scala 39:21]
  assign _T_90 = _T_87[0]; // @[LZD.scala 39:30]
  assign _T_91 = ~ _T_90; // @[LZD.scala 39:27]
  assign _T_92 = _T_89 | _T_91; // @[LZD.scala 39:25]
  assign _T_93 = {_T_88,_T_92}; // @[Cat.scala 29:58]
  assign _T_94 = _T_86[1:0]; // @[LZD.scala 44:32]
  assign _T_95 = _T_94 != 2'h0; // @[LZD.scala 39:14]
  assign _T_96 = _T_94[1]; // @[LZD.scala 39:21]
  assign _T_97 = _T_94[0]; // @[LZD.scala 39:30]
  assign _T_98 = ~ _T_97; // @[LZD.scala 39:27]
  assign _T_99 = _T_96 | _T_98; // @[LZD.scala 39:25]
  assign _T_100 = {_T_95,_T_99}; // @[Cat.scala 29:58]
  assign _T_101 = _T_93[1]; // @[Shift.scala 12:21]
  assign _T_102 = _T_100[1]; // @[Shift.scala 12:21]
  assign _T_103 = _T_101 | _T_102; // @[LZD.scala 49:16]
  assign _T_104 = ~ _T_102; // @[LZD.scala 49:27]
  assign _T_105 = _T_101 | _T_104; // @[LZD.scala 49:25]
  assign _T_106 = _T_93[0:0]; // @[LZD.scala 49:47]
  assign _T_107 = _T_100[0:0]; // @[LZD.scala 49:59]
  assign _T_108 = _T_101 ? _T_106 : _T_107; // @[LZD.scala 49:35]
  assign _T_110 = {_T_103,_T_105,_T_108}; // @[Cat.scala 29:58]
  assign _T_111 = _T_85[0:0]; // @[LZD.scala 44:32]
  assign _T_113 = _T_110[2]; // @[Shift.scala 12:21]
  assign _T_115 = {1'h1,_T_111}; // @[Cat.scala 29:58]
  assign _T_116 = _T_110[1:0]; // @[LZD.scala 55:32]
  assign _T_117 = _T_113 ? _T_116 : _T_115; // @[LZD.scala 55:20]
  assign _T_118 = {_T_113,_T_117}; // @[Cat.scala 29:58]
  assign _T_119 = ~ _T_118; // @[convert.scala 21:22]
  assign _T_120 = io_B[3:0]; // @[convert.scala 22:36]
  assign _T_121 = _T_119 < 3'h4; // @[Shift.scala 16:24]
  assign _T_122 = _T_119[1:0]; // @[Shift.scala 17:37]
  assign _T_123 = _T_122[1]; // @[Shift.scala 12:21]
  assign _T_124 = _T_120[1:0]; // @[Shift.scala 64:52]
  assign _T_126 = {_T_124,2'h0}; // @[Cat.scala 29:58]
  assign _T_127 = _T_123 ? _T_126 : _T_120; // @[Shift.scala 64:27]
  assign _T_128 = _T_122[0:0]; // @[Shift.scala 66:70]
  assign _T_130 = _T_127[2:0]; // @[Shift.scala 64:52]
  assign _T_131 = {_T_130,1'h0}; // @[Cat.scala 29:58]
  assign _T_132 = _T_128 ? _T_131 : _T_127; // @[Shift.scala 64:27]
  assign _T_133 = _T_121 ? _T_132 : 4'h0; // @[Shift.scala 16:10]
  assign _T_134 = _T_133[3:1]; // @[convert.scala 23:34]
  assign decB_fraction = _T_133[0:0]; // @[convert.scala 24:34]
  assign _T_136 = _T_82 == 1'h0; // @[convert.scala 25:26]
  assign _T_138 = _T_82 ? _T_119 : _T_118; // @[convert.scala 25:42]
  assign _T_141 = ~ _T_134; // @[convert.scala 26:67]
  assign _T_142 = _T_80 ? _T_141 : _T_134; // @[convert.scala 26:51]
  assign _T_143 = {_T_136,_T_138,_T_142}; // @[Cat.scala 29:58]
  assign _T_145 = io_B[5:0]; // @[convert.scala 29:56]
  assign _T_146 = _T_145 != 6'h0; // @[convert.scala 29:60]
  assign _T_147 = ~ _T_146; // @[convert.scala 29:41]
  assign _T_150 = _T_80 == 1'h0; // @[convert.scala 30:19]
  assign _T_158 = ~ _T_1; // @[PositMulDec.scala 31:34]
  assign _T_160 = {_T_1,_T_158,decA_fraction}; // @[Cat.scala 29:58]
  assign _T_162 = ~ _T_80; // @[PositMulDec.scala 32:34]
  assign _T_164 = {_T_80,_T_162,decB_fraction}; // @[Cat.scala 29:58]
  assign io_sigA = $signed(_T_160); // @[PositMulDec.scala 31:16]
  assign io_sigB = $signed(_T_164); // @[PositMulDec.scala 32:16]
  assign io_decAscale = $signed(_T_64); // @[PositMulDec.scala 33:16]
  assign io_decBscale = $signed(_T_143); // @[PositMulDec.scala 34:16]
  assign io_decAisNar = _T_1 & _T_68; // @[PositMulDec.scala 35:16]
  assign io_decBisNar = _T_80 & _T_147; // @[PositMulDec.scala 36:16]
  assign io_decAisZero = _T_71 & _T_68; // @[PositMulDec.scala 37:17]
  assign io_decBisZero = _T_150 & _T_147; // @[PositMulDec.scala 38:17]
endmodule
