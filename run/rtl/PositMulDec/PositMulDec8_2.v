module PositMulDec8_2(
  input        clock,
  input        reset,
  input  [7:0] io_A,
  input  [7:0] io_B,
  output [4:0] io_sigA,
  output [4:0] io_sigB,
  output [5:0] io_decAscale,
  output [5:0] io_decBscale,
  output       io_decAisNar,
  output       io_decBisNar,
  output       io_decAisZero,
  output       io_decBisZero
);
  wire  _T_1; // @[convert.scala 18:24]
  wire  _T_2; // @[convert.scala 18:40]
  wire  _T_3; // @[convert.scala 18:36]
  wire [5:0] _T_4; // @[convert.scala 19:24]
  wire [5:0] _T_5; // @[convert.scala 19:43]
  wire [5:0] _T_6; // @[convert.scala 19:39]
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
  wire [1:0] _T_32; // @[LZD.scala 44:32]
  wire  _T_33; // @[LZD.scala 39:14]
  wire  _T_34; // @[LZD.scala 39:21]
  wire  _T_35; // @[LZD.scala 39:30]
  wire  _T_36; // @[LZD.scala 39:27]
  wire  _T_37; // @[LZD.scala 39:25]
  wire [1:0] _T_38; // @[Cat.scala 29:58]
  wire  _T_39; // @[Shift.scala 12:21]
  wire [1:0] _T_41; // @[LZD.scala 55:32]
  wire [1:0] _T_42; // @[LZD.scala 55:20]
  wire [2:0] _T_43; // @[Cat.scala 29:58]
  wire [2:0] _T_44; // @[convert.scala 21:22]
  wire [4:0] _T_45; // @[convert.scala 22:36]
  wire  _T_46; // @[Shift.scala 16:24]
  wire  _T_48; // @[Shift.scala 12:21]
  wire  _T_49; // @[Shift.scala 64:52]
  wire [4:0] _T_51; // @[Cat.scala 29:58]
  wire [4:0] _T_52; // @[Shift.scala 64:27]
  wire [1:0] _T_53; // @[Shift.scala 66:70]
  wire  _T_54; // @[Shift.scala 12:21]
  wire [2:0] _T_55; // @[Shift.scala 64:52]
  wire [4:0] _T_57; // @[Cat.scala 29:58]
  wire [4:0] _T_58; // @[Shift.scala 64:27]
  wire  _T_59; // @[Shift.scala 66:70]
  wire [3:0] _T_61; // @[Shift.scala 64:52]
  wire [4:0] _T_62; // @[Cat.scala 29:58]
  wire [4:0] _T_63; // @[Shift.scala 64:27]
  wire [4:0] _T_64; // @[Shift.scala 16:10]
  wire [1:0] _T_65; // @[convert.scala 23:34]
  wire [2:0] decA_fraction; // @[convert.scala 24:34]
  wire  _T_67; // @[convert.scala 25:26]
  wire [2:0] _T_69; // @[convert.scala 25:42]
  wire [1:0] _T_72; // @[convert.scala 26:67]
  wire [1:0] _T_73; // @[convert.scala 26:51]
  wire [5:0] _T_74; // @[Cat.scala 29:58]
  wire [6:0] _T_76; // @[convert.scala 29:56]
  wire  _T_77; // @[convert.scala 29:60]
  wire  _T_78; // @[convert.scala 29:41]
  wire  _T_81; // @[convert.scala 30:19]
  wire  _T_90; // @[convert.scala 18:24]
  wire  _T_91; // @[convert.scala 18:40]
  wire  _T_92; // @[convert.scala 18:36]
  wire [5:0] _T_93; // @[convert.scala 19:24]
  wire [5:0] _T_94; // @[convert.scala 19:43]
  wire [5:0] _T_95; // @[convert.scala 19:39]
  wire [3:0] _T_96; // @[LZD.scala 43:32]
  wire [1:0] _T_97; // @[LZD.scala 43:32]
  wire  _T_98; // @[LZD.scala 39:14]
  wire  _T_99; // @[LZD.scala 39:21]
  wire  _T_100; // @[LZD.scala 39:30]
  wire  _T_101; // @[LZD.scala 39:27]
  wire  _T_102; // @[LZD.scala 39:25]
  wire [1:0] _T_103; // @[Cat.scala 29:58]
  wire [1:0] _T_104; // @[LZD.scala 44:32]
  wire  _T_105; // @[LZD.scala 39:14]
  wire  _T_106; // @[LZD.scala 39:21]
  wire  _T_107; // @[LZD.scala 39:30]
  wire  _T_108; // @[LZD.scala 39:27]
  wire  _T_109; // @[LZD.scala 39:25]
  wire [1:0] _T_110; // @[Cat.scala 29:58]
  wire  _T_111; // @[Shift.scala 12:21]
  wire  _T_112; // @[Shift.scala 12:21]
  wire  _T_113; // @[LZD.scala 49:16]
  wire  _T_114; // @[LZD.scala 49:27]
  wire  _T_115; // @[LZD.scala 49:25]
  wire  _T_116; // @[LZD.scala 49:47]
  wire  _T_117; // @[LZD.scala 49:59]
  wire  _T_118; // @[LZD.scala 49:35]
  wire [2:0] _T_120; // @[Cat.scala 29:58]
  wire [1:0] _T_121; // @[LZD.scala 44:32]
  wire  _T_122; // @[LZD.scala 39:14]
  wire  _T_123; // @[LZD.scala 39:21]
  wire  _T_124; // @[LZD.scala 39:30]
  wire  _T_125; // @[LZD.scala 39:27]
  wire  _T_126; // @[LZD.scala 39:25]
  wire [1:0] _T_127; // @[Cat.scala 29:58]
  wire  _T_128; // @[Shift.scala 12:21]
  wire [1:0] _T_130; // @[LZD.scala 55:32]
  wire [1:0] _T_131; // @[LZD.scala 55:20]
  wire [2:0] _T_132; // @[Cat.scala 29:58]
  wire [2:0] _T_133; // @[convert.scala 21:22]
  wire [4:0] _T_134; // @[convert.scala 22:36]
  wire  _T_135; // @[Shift.scala 16:24]
  wire  _T_137; // @[Shift.scala 12:21]
  wire  _T_138; // @[Shift.scala 64:52]
  wire [4:0] _T_140; // @[Cat.scala 29:58]
  wire [4:0] _T_141; // @[Shift.scala 64:27]
  wire [1:0] _T_142; // @[Shift.scala 66:70]
  wire  _T_143; // @[Shift.scala 12:21]
  wire [2:0] _T_144; // @[Shift.scala 64:52]
  wire [4:0] _T_146; // @[Cat.scala 29:58]
  wire [4:0] _T_147; // @[Shift.scala 64:27]
  wire  _T_148; // @[Shift.scala 66:70]
  wire [3:0] _T_150; // @[Shift.scala 64:52]
  wire [4:0] _T_151; // @[Cat.scala 29:58]
  wire [4:0] _T_152; // @[Shift.scala 64:27]
  wire [4:0] _T_153; // @[Shift.scala 16:10]
  wire [1:0] _T_154; // @[convert.scala 23:34]
  wire [2:0] decB_fraction; // @[convert.scala 24:34]
  wire  _T_156; // @[convert.scala 25:26]
  wire [2:0] _T_158; // @[convert.scala 25:42]
  wire [1:0] _T_161; // @[convert.scala 26:67]
  wire [1:0] _T_162; // @[convert.scala 26:51]
  wire [5:0] _T_163; // @[Cat.scala 29:58]
  wire [6:0] _T_165; // @[convert.scala 29:56]
  wire  _T_166; // @[convert.scala 29:60]
  wire  _T_167; // @[convert.scala 29:41]
  wire  _T_170; // @[convert.scala 30:19]
  wire  _T_178; // @[PositMulDec.scala 31:34]
  wire [4:0] _T_180; // @[Cat.scala 29:58]
  wire  _T_182; // @[PositMulDec.scala 32:34]
  wire [4:0] _T_184; // @[Cat.scala 29:58]
  assign _T_1 = io_A[7]; // @[convert.scala 18:24]
  assign _T_2 = io_A[6]; // @[convert.scala 18:40]
  assign _T_3 = _T_1 ^ _T_2; // @[convert.scala 18:36]
  assign _T_4 = io_A[6:1]; // @[convert.scala 19:24]
  assign _T_5 = io_A[5:0]; // @[convert.scala 19:43]
  assign _T_6 = _T_4 ^ _T_5; // @[convert.scala 19:39]
  assign _T_7 = _T_6[5:2]; // @[LZD.scala 43:32]
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
  assign _T_32 = _T_6[1:0]; // @[LZD.scala 44:32]
  assign _T_33 = _T_32 != 2'h0; // @[LZD.scala 39:14]
  assign _T_34 = _T_32[1]; // @[LZD.scala 39:21]
  assign _T_35 = _T_32[0]; // @[LZD.scala 39:30]
  assign _T_36 = ~ _T_35; // @[LZD.scala 39:27]
  assign _T_37 = _T_34 | _T_36; // @[LZD.scala 39:25]
  assign _T_38 = {_T_33,_T_37}; // @[Cat.scala 29:58]
  assign _T_39 = _T_31[2]; // @[Shift.scala 12:21]
  assign _T_41 = _T_31[1:0]; // @[LZD.scala 55:32]
  assign _T_42 = _T_39 ? _T_41 : _T_38; // @[LZD.scala 55:20]
  assign _T_43 = {_T_39,_T_42}; // @[Cat.scala 29:58]
  assign _T_44 = ~ _T_43; // @[convert.scala 21:22]
  assign _T_45 = io_A[4:0]; // @[convert.scala 22:36]
  assign _T_46 = _T_44 < 3'h5; // @[Shift.scala 16:24]
  assign _T_48 = _T_44[2]; // @[Shift.scala 12:21]
  assign _T_49 = _T_45[0:0]; // @[Shift.scala 64:52]
  assign _T_51 = {_T_49,4'h0}; // @[Cat.scala 29:58]
  assign _T_52 = _T_48 ? _T_51 : _T_45; // @[Shift.scala 64:27]
  assign _T_53 = _T_44[1:0]; // @[Shift.scala 66:70]
  assign _T_54 = _T_53[1]; // @[Shift.scala 12:21]
  assign _T_55 = _T_52[2:0]; // @[Shift.scala 64:52]
  assign _T_57 = {_T_55,2'h0}; // @[Cat.scala 29:58]
  assign _T_58 = _T_54 ? _T_57 : _T_52; // @[Shift.scala 64:27]
  assign _T_59 = _T_53[0:0]; // @[Shift.scala 66:70]
  assign _T_61 = _T_58[3:0]; // @[Shift.scala 64:52]
  assign _T_62 = {_T_61,1'h0}; // @[Cat.scala 29:58]
  assign _T_63 = _T_59 ? _T_62 : _T_58; // @[Shift.scala 64:27]
  assign _T_64 = _T_46 ? _T_63 : 5'h0; // @[Shift.scala 16:10]
  assign _T_65 = _T_64[4:3]; // @[convert.scala 23:34]
  assign decA_fraction = _T_64[2:0]; // @[convert.scala 24:34]
  assign _T_67 = _T_3 == 1'h0; // @[convert.scala 25:26]
  assign _T_69 = _T_3 ? _T_44 : _T_43; // @[convert.scala 25:42]
  assign _T_72 = ~ _T_65; // @[convert.scala 26:67]
  assign _T_73 = _T_1 ? _T_72 : _T_65; // @[convert.scala 26:51]
  assign _T_74 = {_T_67,_T_69,_T_73}; // @[Cat.scala 29:58]
  assign _T_76 = io_A[6:0]; // @[convert.scala 29:56]
  assign _T_77 = _T_76 != 7'h0; // @[convert.scala 29:60]
  assign _T_78 = ~ _T_77; // @[convert.scala 29:41]
  assign _T_81 = _T_1 == 1'h0; // @[convert.scala 30:19]
  assign _T_90 = io_B[7]; // @[convert.scala 18:24]
  assign _T_91 = io_B[6]; // @[convert.scala 18:40]
  assign _T_92 = _T_90 ^ _T_91; // @[convert.scala 18:36]
  assign _T_93 = io_B[6:1]; // @[convert.scala 19:24]
  assign _T_94 = io_B[5:0]; // @[convert.scala 19:43]
  assign _T_95 = _T_93 ^ _T_94; // @[convert.scala 19:39]
  assign _T_96 = _T_95[5:2]; // @[LZD.scala 43:32]
  assign _T_97 = _T_96[3:2]; // @[LZD.scala 43:32]
  assign _T_98 = _T_97 != 2'h0; // @[LZD.scala 39:14]
  assign _T_99 = _T_97[1]; // @[LZD.scala 39:21]
  assign _T_100 = _T_97[0]; // @[LZD.scala 39:30]
  assign _T_101 = ~ _T_100; // @[LZD.scala 39:27]
  assign _T_102 = _T_99 | _T_101; // @[LZD.scala 39:25]
  assign _T_103 = {_T_98,_T_102}; // @[Cat.scala 29:58]
  assign _T_104 = _T_96[1:0]; // @[LZD.scala 44:32]
  assign _T_105 = _T_104 != 2'h0; // @[LZD.scala 39:14]
  assign _T_106 = _T_104[1]; // @[LZD.scala 39:21]
  assign _T_107 = _T_104[0]; // @[LZD.scala 39:30]
  assign _T_108 = ~ _T_107; // @[LZD.scala 39:27]
  assign _T_109 = _T_106 | _T_108; // @[LZD.scala 39:25]
  assign _T_110 = {_T_105,_T_109}; // @[Cat.scala 29:58]
  assign _T_111 = _T_103[1]; // @[Shift.scala 12:21]
  assign _T_112 = _T_110[1]; // @[Shift.scala 12:21]
  assign _T_113 = _T_111 | _T_112; // @[LZD.scala 49:16]
  assign _T_114 = ~ _T_112; // @[LZD.scala 49:27]
  assign _T_115 = _T_111 | _T_114; // @[LZD.scala 49:25]
  assign _T_116 = _T_103[0:0]; // @[LZD.scala 49:47]
  assign _T_117 = _T_110[0:0]; // @[LZD.scala 49:59]
  assign _T_118 = _T_111 ? _T_116 : _T_117; // @[LZD.scala 49:35]
  assign _T_120 = {_T_113,_T_115,_T_118}; // @[Cat.scala 29:58]
  assign _T_121 = _T_95[1:0]; // @[LZD.scala 44:32]
  assign _T_122 = _T_121 != 2'h0; // @[LZD.scala 39:14]
  assign _T_123 = _T_121[1]; // @[LZD.scala 39:21]
  assign _T_124 = _T_121[0]; // @[LZD.scala 39:30]
  assign _T_125 = ~ _T_124; // @[LZD.scala 39:27]
  assign _T_126 = _T_123 | _T_125; // @[LZD.scala 39:25]
  assign _T_127 = {_T_122,_T_126}; // @[Cat.scala 29:58]
  assign _T_128 = _T_120[2]; // @[Shift.scala 12:21]
  assign _T_130 = _T_120[1:0]; // @[LZD.scala 55:32]
  assign _T_131 = _T_128 ? _T_130 : _T_127; // @[LZD.scala 55:20]
  assign _T_132 = {_T_128,_T_131}; // @[Cat.scala 29:58]
  assign _T_133 = ~ _T_132; // @[convert.scala 21:22]
  assign _T_134 = io_B[4:0]; // @[convert.scala 22:36]
  assign _T_135 = _T_133 < 3'h5; // @[Shift.scala 16:24]
  assign _T_137 = _T_133[2]; // @[Shift.scala 12:21]
  assign _T_138 = _T_134[0:0]; // @[Shift.scala 64:52]
  assign _T_140 = {_T_138,4'h0}; // @[Cat.scala 29:58]
  assign _T_141 = _T_137 ? _T_140 : _T_134; // @[Shift.scala 64:27]
  assign _T_142 = _T_133[1:0]; // @[Shift.scala 66:70]
  assign _T_143 = _T_142[1]; // @[Shift.scala 12:21]
  assign _T_144 = _T_141[2:0]; // @[Shift.scala 64:52]
  assign _T_146 = {_T_144,2'h0}; // @[Cat.scala 29:58]
  assign _T_147 = _T_143 ? _T_146 : _T_141; // @[Shift.scala 64:27]
  assign _T_148 = _T_142[0:0]; // @[Shift.scala 66:70]
  assign _T_150 = _T_147[3:0]; // @[Shift.scala 64:52]
  assign _T_151 = {_T_150,1'h0}; // @[Cat.scala 29:58]
  assign _T_152 = _T_148 ? _T_151 : _T_147; // @[Shift.scala 64:27]
  assign _T_153 = _T_135 ? _T_152 : 5'h0; // @[Shift.scala 16:10]
  assign _T_154 = _T_153[4:3]; // @[convert.scala 23:34]
  assign decB_fraction = _T_153[2:0]; // @[convert.scala 24:34]
  assign _T_156 = _T_92 == 1'h0; // @[convert.scala 25:26]
  assign _T_158 = _T_92 ? _T_133 : _T_132; // @[convert.scala 25:42]
  assign _T_161 = ~ _T_154; // @[convert.scala 26:67]
  assign _T_162 = _T_90 ? _T_161 : _T_154; // @[convert.scala 26:51]
  assign _T_163 = {_T_156,_T_158,_T_162}; // @[Cat.scala 29:58]
  assign _T_165 = io_B[6:0]; // @[convert.scala 29:56]
  assign _T_166 = _T_165 != 7'h0; // @[convert.scala 29:60]
  assign _T_167 = ~ _T_166; // @[convert.scala 29:41]
  assign _T_170 = _T_90 == 1'h0; // @[convert.scala 30:19]
  assign _T_178 = ~ _T_1; // @[PositMulDec.scala 31:34]
  assign _T_180 = {_T_1,_T_178,decA_fraction}; // @[Cat.scala 29:58]
  assign _T_182 = ~ _T_90; // @[PositMulDec.scala 32:34]
  assign _T_184 = {_T_90,_T_182,decB_fraction}; // @[Cat.scala 29:58]
  assign io_sigA = $signed(_T_180); // @[PositMulDec.scala 31:16]
  assign io_sigB = $signed(_T_184); // @[PositMulDec.scala 32:16]
  assign io_decAscale = $signed(_T_74); // @[PositMulDec.scala 33:16]
  assign io_decBscale = $signed(_T_163); // @[PositMulDec.scala 34:16]
  assign io_decAisNar = _T_1 & _T_78; // @[PositMulDec.scala 35:16]
  assign io_decBisNar = _T_90 & _T_167; // @[PositMulDec.scala 36:16]
  assign io_decAisZero = _T_81 & _T_78; // @[PositMulDec.scala 37:17]
  assign io_decBisZero = _T_170 & _T_167; // @[PositMulDec.scala 38:17]
endmodule
