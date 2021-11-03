module FMA_Dec6_1(
  input        clock,
  input        reset,
  input  [5:0] io_A,
  input  [5:0] io_B,
  input  [5:0] io_C,
  output [3:0] io_sigA,
  output [3:0] io_sigB,
  output       io_outIsNaR,
  output       io_Csign,
  output       io_CisNar,
  output       io_CisZero,
  output [1:0] io_Cfrac,
  output [4:0] io_Ascale,
  output [4:0] io_Bscale,
  output [4:0] io_Cscale
);
  wire [6:0] _T_2; // @[FMA_Dec.scala 38:46]
  wire [5:0] realA; // @[FMA_Dec.scala 38:46]
  wire [6:0] _T_5; // @[FMA_Dec.scala 39:46]
  wire [5:0] realC; // @[FMA_Dec.scala 39:46]
  wire  _T_7; // @[convert.scala 18:24]
  wire  _T_8; // @[convert.scala 18:40]
  wire  _T_9; // @[convert.scala 18:36]
  wire [3:0] _T_10; // @[convert.scala 19:24]
  wire [3:0] _T_11; // @[convert.scala 19:43]
  wire [3:0] _T_12; // @[convert.scala 19:39]
  wire [1:0] _T_13; // @[LZD.scala 43:32]
  wire  _T_14; // @[LZD.scala 39:14]
  wire  _T_15; // @[LZD.scala 39:21]
  wire  _T_16; // @[LZD.scala 39:30]
  wire  _T_17; // @[LZD.scala 39:27]
  wire  _T_18; // @[LZD.scala 39:25]
  wire [1:0] _T_19; // @[Cat.scala 29:58]
  wire [1:0] _T_20; // @[LZD.scala 44:32]
  wire  _T_21; // @[LZD.scala 39:14]
  wire  _T_22; // @[LZD.scala 39:21]
  wire  _T_23; // @[LZD.scala 39:30]
  wire  _T_24; // @[LZD.scala 39:27]
  wire  _T_25; // @[LZD.scala 39:25]
  wire [1:0] _T_26; // @[Cat.scala 29:58]
  wire  _T_27; // @[Shift.scala 12:21]
  wire  _T_28; // @[Shift.scala 12:21]
  wire  _T_29; // @[LZD.scala 49:16]
  wire  _T_30; // @[LZD.scala 49:27]
  wire  _T_31; // @[LZD.scala 49:25]
  wire  _T_32; // @[LZD.scala 49:47]
  wire  _T_33; // @[LZD.scala 49:59]
  wire  _T_34; // @[LZD.scala 49:35]
  wire [2:0] _T_36; // @[Cat.scala 29:58]
  wire [2:0] _T_37; // @[convert.scala 21:22]
  wire [2:0] _T_38; // @[convert.scala 22:36]
  wire  _T_39; // @[Shift.scala 16:24]
  wire [1:0] _T_40; // @[Shift.scala 17:37]
  wire  _T_41; // @[Shift.scala 12:21]
  wire  _T_42; // @[Shift.scala 64:52]
  wire [2:0] _T_44; // @[Cat.scala 29:58]
  wire [2:0] _T_45; // @[Shift.scala 64:27]
  wire  _T_46; // @[Shift.scala 66:70]
  wire [1:0] _T_48; // @[Shift.scala 64:52]
  wire [2:0] _T_49; // @[Cat.scala 29:58]
  wire [2:0] _T_50; // @[Shift.scala 64:27]
  wire [2:0] _T_51; // @[Shift.scala 16:10]
  wire  _T_52; // @[convert.scala 23:34]
  wire [1:0] decA_fraction; // @[convert.scala 24:34]
  wire  _T_54; // @[convert.scala 25:26]
  wire [2:0] _T_56; // @[convert.scala 25:42]
  wire  _T_59; // @[convert.scala 26:67]
  wire  _T_60; // @[convert.scala 26:51]
  wire [4:0] _T_61; // @[Cat.scala 29:58]
  wire [4:0] _T_63; // @[convert.scala 29:56]
  wire  _T_64; // @[convert.scala 29:60]
  wire  _T_65; // @[convert.scala 29:41]
  wire  decA_isNaR; // @[convert.scala 29:39]
  wire  _T_68; // @[convert.scala 30:19]
  wire  decA_isZero; // @[convert.scala 30:41]
  wire  _T_77; // @[convert.scala 18:24]
  wire  _T_78; // @[convert.scala 18:40]
  wire  _T_79; // @[convert.scala 18:36]
  wire [3:0] _T_80; // @[convert.scala 19:24]
  wire [3:0] _T_81; // @[convert.scala 19:43]
  wire [3:0] _T_82; // @[convert.scala 19:39]
  wire [1:0] _T_83; // @[LZD.scala 43:32]
  wire  _T_84; // @[LZD.scala 39:14]
  wire  _T_85; // @[LZD.scala 39:21]
  wire  _T_86; // @[LZD.scala 39:30]
  wire  _T_87; // @[LZD.scala 39:27]
  wire  _T_88; // @[LZD.scala 39:25]
  wire [1:0] _T_89; // @[Cat.scala 29:58]
  wire [1:0] _T_90; // @[LZD.scala 44:32]
  wire  _T_91; // @[LZD.scala 39:14]
  wire  _T_92; // @[LZD.scala 39:21]
  wire  _T_93; // @[LZD.scala 39:30]
  wire  _T_94; // @[LZD.scala 39:27]
  wire  _T_95; // @[LZD.scala 39:25]
  wire [1:0] _T_96; // @[Cat.scala 29:58]
  wire  _T_97; // @[Shift.scala 12:21]
  wire  _T_98; // @[Shift.scala 12:21]
  wire  _T_99; // @[LZD.scala 49:16]
  wire  _T_100; // @[LZD.scala 49:27]
  wire  _T_101; // @[LZD.scala 49:25]
  wire  _T_102; // @[LZD.scala 49:47]
  wire  _T_103; // @[LZD.scala 49:59]
  wire  _T_104; // @[LZD.scala 49:35]
  wire [2:0] _T_106; // @[Cat.scala 29:58]
  wire [2:0] _T_107; // @[convert.scala 21:22]
  wire [2:0] _T_108; // @[convert.scala 22:36]
  wire  _T_109; // @[Shift.scala 16:24]
  wire [1:0] _T_110; // @[Shift.scala 17:37]
  wire  _T_111; // @[Shift.scala 12:21]
  wire  _T_112; // @[Shift.scala 64:52]
  wire [2:0] _T_114; // @[Cat.scala 29:58]
  wire [2:0] _T_115; // @[Shift.scala 64:27]
  wire  _T_116; // @[Shift.scala 66:70]
  wire [1:0] _T_118; // @[Shift.scala 64:52]
  wire [2:0] _T_119; // @[Cat.scala 29:58]
  wire [2:0] _T_120; // @[Shift.scala 64:27]
  wire [2:0] _T_121; // @[Shift.scala 16:10]
  wire  _T_122; // @[convert.scala 23:34]
  wire [1:0] decB_fraction; // @[convert.scala 24:34]
  wire  _T_124; // @[convert.scala 25:26]
  wire [2:0] _T_126; // @[convert.scala 25:42]
  wire  _T_129; // @[convert.scala 26:67]
  wire  _T_130; // @[convert.scala 26:51]
  wire [4:0] _T_131; // @[Cat.scala 29:58]
  wire [4:0] _T_133; // @[convert.scala 29:56]
  wire  _T_134; // @[convert.scala 29:60]
  wire  _T_135; // @[convert.scala 29:41]
  wire  decB_isNaR; // @[convert.scala 29:39]
  wire  _T_138; // @[convert.scala 30:19]
  wire  decB_isZero; // @[convert.scala 30:41]
  wire  _T_147; // @[convert.scala 18:24]
  wire  _T_148; // @[convert.scala 18:40]
  wire  _T_149; // @[convert.scala 18:36]
  wire [3:0] _T_150; // @[convert.scala 19:24]
  wire [3:0] _T_151; // @[convert.scala 19:43]
  wire [3:0] _T_152; // @[convert.scala 19:39]
  wire [1:0] _T_153; // @[LZD.scala 43:32]
  wire  _T_154; // @[LZD.scala 39:14]
  wire  _T_155; // @[LZD.scala 39:21]
  wire  _T_156; // @[LZD.scala 39:30]
  wire  _T_157; // @[LZD.scala 39:27]
  wire  _T_158; // @[LZD.scala 39:25]
  wire [1:0] _T_159; // @[Cat.scala 29:58]
  wire [1:0] _T_160; // @[LZD.scala 44:32]
  wire  _T_161; // @[LZD.scala 39:14]
  wire  _T_162; // @[LZD.scala 39:21]
  wire  _T_163; // @[LZD.scala 39:30]
  wire  _T_164; // @[LZD.scala 39:27]
  wire  _T_165; // @[LZD.scala 39:25]
  wire [1:0] _T_166; // @[Cat.scala 29:58]
  wire  _T_167; // @[Shift.scala 12:21]
  wire  _T_168; // @[Shift.scala 12:21]
  wire  _T_169; // @[LZD.scala 49:16]
  wire  _T_170; // @[LZD.scala 49:27]
  wire  _T_171; // @[LZD.scala 49:25]
  wire  _T_172; // @[LZD.scala 49:47]
  wire  _T_173; // @[LZD.scala 49:59]
  wire  _T_174; // @[LZD.scala 49:35]
  wire [2:0] _T_176; // @[Cat.scala 29:58]
  wire [2:0] _T_177; // @[convert.scala 21:22]
  wire [2:0] _T_178; // @[convert.scala 22:36]
  wire  _T_179; // @[Shift.scala 16:24]
  wire [1:0] _T_180; // @[Shift.scala 17:37]
  wire  _T_181; // @[Shift.scala 12:21]
  wire  _T_182; // @[Shift.scala 64:52]
  wire [2:0] _T_184; // @[Cat.scala 29:58]
  wire [2:0] _T_185; // @[Shift.scala 64:27]
  wire  _T_186; // @[Shift.scala 66:70]
  wire [1:0] _T_188; // @[Shift.scala 64:52]
  wire [2:0] _T_189; // @[Cat.scala 29:58]
  wire [2:0] _T_190; // @[Shift.scala 64:27]
  wire [2:0] _T_191; // @[Shift.scala 16:10]
  wire  _T_192; // @[convert.scala 23:34]
  wire  _T_194; // @[convert.scala 25:26]
  wire [2:0] _T_196; // @[convert.scala 25:42]
  wire  _T_199; // @[convert.scala 26:67]
  wire  _T_200; // @[convert.scala 26:51]
  wire [4:0] _T_201; // @[Cat.scala 29:58]
  wire [4:0] _T_203; // @[convert.scala 29:56]
  wire  _T_204; // @[convert.scala 29:60]
  wire  _T_205; // @[convert.scala 29:41]
  wire  decC_isNaR; // @[convert.scala 29:39]
  wire  _T_208; // @[convert.scala 30:19]
  wire  _T_216; // @[FMA_Dec.scala 46:30]
  wire  _T_218; // @[FMA_Dec.scala 49:34]
  wire  _T_219; // @[FMA_Dec.scala 49:47]
  wire  _T_220; // @[FMA_Dec.scala 49:45]
  wire [3:0] _T_222; // @[Cat.scala 29:58]
  wire  _T_224; // @[FMA_Dec.scala 50:34]
  wire  _T_225; // @[FMA_Dec.scala 50:47]
  wire  _T_226; // @[FMA_Dec.scala 50:45]
  wire [3:0] _T_228; // @[Cat.scala 29:58]
  assign _T_2 = {{1'd0}, io_A}; // @[FMA_Dec.scala 38:46]
  assign realA = _T_2[5:0]; // @[FMA_Dec.scala 38:46]
  assign _T_5 = {{1'd0}, io_C}; // @[FMA_Dec.scala 39:46]
  assign realC = _T_5[5:0]; // @[FMA_Dec.scala 39:46]
  assign _T_7 = realA[5]; // @[convert.scala 18:24]
  assign _T_8 = realA[4]; // @[convert.scala 18:40]
  assign _T_9 = _T_7 ^ _T_8; // @[convert.scala 18:36]
  assign _T_10 = realA[4:1]; // @[convert.scala 19:24]
  assign _T_11 = realA[3:0]; // @[convert.scala 19:43]
  assign _T_12 = _T_10 ^ _T_11; // @[convert.scala 19:39]
  assign _T_13 = _T_12[3:2]; // @[LZD.scala 43:32]
  assign _T_14 = _T_13 != 2'h0; // @[LZD.scala 39:14]
  assign _T_15 = _T_13[1]; // @[LZD.scala 39:21]
  assign _T_16 = _T_13[0]; // @[LZD.scala 39:30]
  assign _T_17 = ~ _T_16; // @[LZD.scala 39:27]
  assign _T_18 = _T_15 | _T_17; // @[LZD.scala 39:25]
  assign _T_19 = {_T_14,_T_18}; // @[Cat.scala 29:58]
  assign _T_20 = _T_12[1:0]; // @[LZD.scala 44:32]
  assign _T_21 = _T_20 != 2'h0; // @[LZD.scala 39:14]
  assign _T_22 = _T_20[1]; // @[LZD.scala 39:21]
  assign _T_23 = _T_20[0]; // @[LZD.scala 39:30]
  assign _T_24 = ~ _T_23; // @[LZD.scala 39:27]
  assign _T_25 = _T_22 | _T_24; // @[LZD.scala 39:25]
  assign _T_26 = {_T_21,_T_25}; // @[Cat.scala 29:58]
  assign _T_27 = _T_19[1]; // @[Shift.scala 12:21]
  assign _T_28 = _T_26[1]; // @[Shift.scala 12:21]
  assign _T_29 = _T_27 | _T_28; // @[LZD.scala 49:16]
  assign _T_30 = ~ _T_28; // @[LZD.scala 49:27]
  assign _T_31 = _T_27 | _T_30; // @[LZD.scala 49:25]
  assign _T_32 = _T_19[0:0]; // @[LZD.scala 49:47]
  assign _T_33 = _T_26[0:0]; // @[LZD.scala 49:59]
  assign _T_34 = _T_27 ? _T_32 : _T_33; // @[LZD.scala 49:35]
  assign _T_36 = {_T_29,_T_31,_T_34}; // @[Cat.scala 29:58]
  assign _T_37 = ~ _T_36; // @[convert.scala 21:22]
  assign _T_38 = realA[2:0]; // @[convert.scala 22:36]
  assign _T_39 = _T_37 < 3'h3; // @[Shift.scala 16:24]
  assign _T_40 = _T_37[1:0]; // @[Shift.scala 17:37]
  assign _T_41 = _T_40[1]; // @[Shift.scala 12:21]
  assign _T_42 = _T_38[0:0]; // @[Shift.scala 64:52]
  assign _T_44 = {_T_42,2'h0}; // @[Cat.scala 29:58]
  assign _T_45 = _T_41 ? _T_44 : _T_38; // @[Shift.scala 64:27]
  assign _T_46 = _T_40[0:0]; // @[Shift.scala 66:70]
  assign _T_48 = _T_45[1:0]; // @[Shift.scala 64:52]
  assign _T_49 = {_T_48,1'h0}; // @[Cat.scala 29:58]
  assign _T_50 = _T_46 ? _T_49 : _T_45; // @[Shift.scala 64:27]
  assign _T_51 = _T_39 ? _T_50 : 3'h0; // @[Shift.scala 16:10]
  assign _T_52 = _T_51[2:2]; // @[convert.scala 23:34]
  assign decA_fraction = _T_51[1:0]; // @[convert.scala 24:34]
  assign _T_54 = _T_9 == 1'h0; // @[convert.scala 25:26]
  assign _T_56 = _T_9 ? _T_37 : _T_36; // @[convert.scala 25:42]
  assign _T_59 = ~ _T_52; // @[convert.scala 26:67]
  assign _T_60 = _T_7 ? _T_59 : _T_52; // @[convert.scala 26:51]
  assign _T_61 = {_T_54,_T_56,_T_60}; // @[Cat.scala 29:58]
  assign _T_63 = realA[4:0]; // @[convert.scala 29:56]
  assign _T_64 = _T_63 != 5'h0; // @[convert.scala 29:60]
  assign _T_65 = ~ _T_64; // @[convert.scala 29:41]
  assign decA_isNaR = _T_7 & _T_65; // @[convert.scala 29:39]
  assign _T_68 = _T_7 == 1'h0; // @[convert.scala 30:19]
  assign decA_isZero = _T_68 & _T_65; // @[convert.scala 30:41]
  assign _T_77 = io_B[5]; // @[convert.scala 18:24]
  assign _T_78 = io_B[4]; // @[convert.scala 18:40]
  assign _T_79 = _T_77 ^ _T_78; // @[convert.scala 18:36]
  assign _T_80 = io_B[4:1]; // @[convert.scala 19:24]
  assign _T_81 = io_B[3:0]; // @[convert.scala 19:43]
  assign _T_82 = _T_80 ^ _T_81; // @[convert.scala 19:39]
  assign _T_83 = _T_82[3:2]; // @[LZD.scala 43:32]
  assign _T_84 = _T_83 != 2'h0; // @[LZD.scala 39:14]
  assign _T_85 = _T_83[1]; // @[LZD.scala 39:21]
  assign _T_86 = _T_83[0]; // @[LZD.scala 39:30]
  assign _T_87 = ~ _T_86; // @[LZD.scala 39:27]
  assign _T_88 = _T_85 | _T_87; // @[LZD.scala 39:25]
  assign _T_89 = {_T_84,_T_88}; // @[Cat.scala 29:58]
  assign _T_90 = _T_82[1:0]; // @[LZD.scala 44:32]
  assign _T_91 = _T_90 != 2'h0; // @[LZD.scala 39:14]
  assign _T_92 = _T_90[1]; // @[LZD.scala 39:21]
  assign _T_93 = _T_90[0]; // @[LZD.scala 39:30]
  assign _T_94 = ~ _T_93; // @[LZD.scala 39:27]
  assign _T_95 = _T_92 | _T_94; // @[LZD.scala 39:25]
  assign _T_96 = {_T_91,_T_95}; // @[Cat.scala 29:58]
  assign _T_97 = _T_89[1]; // @[Shift.scala 12:21]
  assign _T_98 = _T_96[1]; // @[Shift.scala 12:21]
  assign _T_99 = _T_97 | _T_98; // @[LZD.scala 49:16]
  assign _T_100 = ~ _T_98; // @[LZD.scala 49:27]
  assign _T_101 = _T_97 | _T_100; // @[LZD.scala 49:25]
  assign _T_102 = _T_89[0:0]; // @[LZD.scala 49:47]
  assign _T_103 = _T_96[0:0]; // @[LZD.scala 49:59]
  assign _T_104 = _T_97 ? _T_102 : _T_103; // @[LZD.scala 49:35]
  assign _T_106 = {_T_99,_T_101,_T_104}; // @[Cat.scala 29:58]
  assign _T_107 = ~ _T_106; // @[convert.scala 21:22]
  assign _T_108 = io_B[2:0]; // @[convert.scala 22:36]
  assign _T_109 = _T_107 < 3'h3; // @[Shift.scala 16:24]
  assign _T_110 = _T_107[1:0]; // @[Shift.scala 17:37]
  assign _T_111 = _T_110[1]; // @[Shift.scala 12:21]
  assign _T_112 = _T_108[0:0]; // @[Shift.scala 64:52]
  assign _T_114 = {_T_112,2'h0}; // @[Cat.scala 29:58]
  assign _T_115 = _T_111 ? _T_114 : _T_108; // @[Shift.scala 64:27]
  assign _T_116 = _T_110[0:0]; // @[Shift.scala 66:70]
  assign _T_118 = _T_115[1:0]; // @[Shift.scala 64:52]
  assign _T_119 = {_T_118,1'h0}; // @[Cat.scala 29:58]
  assign _T_120 = _T_116 ? _T_119 : _T_115; // @[Shift.scala 64:27]
  assign _T_121 = _T_109 ? _T_120 : 3'h0; // @[Shift.scala 16:10]
  assign _T_122 = _T_121[2:2]; // @[convert.scala 23:34]
  assign decB_fraction = _T_121[1:0]; // @[convert.scala 24:34]
  assign _T_124 = _T_79 == 1'h0; // @[convert.scala 25:26]
  assign _T_126 = _T_79 ? _T_107 : _T_106; // @[convert.scala 25:42]
  assign _T_129 = ~ _T_122; // @[convert.scala 26:67]
  assign _T_130 = _T_77 ? _T_129 : _T_122; // @[convert.scala 26:51]
  assign _T_131 = {_T_124,_T_126,_T_130}; // @[Cat.scala 29:58]
  assign _T_133 = io_B[4:0]; // @[convert.scala 29:56]
  assign _T_134 = _T_133 != 5'h0; // @[convert.scala 29:60]
  assign _T_135 = ~ _T_134; // @[convert.scala 29:41]
  assign decB_isNaR = _T_77 & _T_135; // @[convert.scala 29:39]
  assign _T_138 = _T_77 == 1'h0; // @[convert.scala 30:19]
  assign decB_isZero = _T_138 & _T_135; // @[convert.scala 30:41]
  assign _T_147 = realC[5]; // @[convert.scala 18:24]
  assign _T_148 = realC[4]; // @[convert.scala 18:40]
  assign _T_149 = _T_147 ^ _T_148; // @[convert.scala 18:36]
  assign _T_150 = realC[4:1]; // @[convert.scala 19:24]
  assign _T_151 = realC[3:0]; // @[convert.scala 19:43]
  assign _T_152 = _T_150 ^ _T_151; // @[convert.scala 19:39]
  assign _T_153 = _T_152[3:2]; // @[LZD.scala 43:32]
  assign _T_154 = _T_153 != 2'h0; // @[LZD.scala 39:14]
  assign _T_155 = _T_153[1]; // @[LZD.scala 39:21]
  assign _T_156 = _T_153[0]; // @[LZD.scala 39:30]
  assign _T_157 = ~ _T_156; // @[LZD.scala 39:27]
  assign _T_158 = _T_155 | _T_157; // @[LZD.scala 39:25]
  assign _T_159 = {_T_154,_T_158}; // @[Cat.scala 29:58]
  assign _T_160 = _T_152[1:0]; // @[LZD.scala 44:32]
  assign _T_161 = _T_160 != 2'h0; // @[LZD.scala 39:14]
  assign _T_162 = _T_160[1]; // @[LZD.scala 39:21]
  assign _T_163 = _T_160[0]; // @[LZD.scala 39:30]
  assign _T_164 = ~ _T_163; // @[LZD.scala 39:27]
  assign _T_165 = _T_162 | _T_164; // @[LZD.scala 39:25]
  assign _T_166 = {_T_161,_T_165}; // @[Cat.scala 29:58]
  assign _T_167 = _T_159[1]; // @[Shift.scala 12:21]
  assign _T_168 = _T_166[1]; // @[Shift.scala 12:21]
  assign _T_169 = _T_167 | _T_168; // @[LZD.scala 49:16]
  assign _T_170 = ~ _T_168; // @[LZD.scala 49:27]
  assign _T_171 = _T_167 | _T_170; // @[LZD.scala 49:25]
  assign _T_172 = _T_159[0:0]; // @[LZD.scala 49:47]
  assign _T_173 = _T_166[0:0]; // @[LZD.scala 49:59]
  assign _T_174 = _T_167 ? _T_172 : _T_173; // @[LZD.scala 49:35]
  assign _T_176 = {_T_169,_T_171,_T_174}; // @[Cat.scala 29:58]
  assign _T_177 = ~ _T_176; // @[convert.scala 21:22]
  assign _T_178 = realC[2:0]; // @[convert.scala 22:36]
  assign _T_179 = _T_177 < 3'h3; // @[Shift.scala 16:24]
  assign _T_180 = _T_177[1:0]; // @[Shift.scala 17:37]
  assign _T_181 = _T_180[1]; // @[Shift.scala 12:21]
  assign _T_182 = _T_178[0:0]; // @[Shift.scala 64:52]
  assign _T_184 = {_T_182,2'h0}; // @[Cat.scala 29:58]
  assign _T_185 = _T_181 ? _T_184 : _T_178; // @[Shift.scala 64:27]
  assign _T_186 = _T_180[0:0]; // @[Shift.scala 66:70]
  assign _T_188 = _T_185[1:0]; // @[Shift.scala 64:52]
  assign _T_189 = {_T_188,1'h0}; // @[Cat.scala 29:58]
  assign _T_190 = _T_186 ? _T_189 : _T_185; // @[Shift.scala 64:27]
  assign _T_191 = _T_179 ? _T_190 : 3'h0; // @[Shift.scala 16:10]
  assign _T_192 = _T_191[2:2]; // @[convert.scala 23:34]
  assign _T_194 = _T_149 == 1'h0; // @[convert.scala 25:26]
  assign _T_196 = _T_149 ? _T_177 : _T_176; // @[convert.scala 25:42]
  assign _T_199 = ~ _T_192; // @[convert.scala 26:67]
  assign _T_200 = _T_147 ? _T_199 : _T_192; // @[convert.scala 26:51]
  assign _T_201 = {_T_194,_T_196,_T_200}; // @[Cat.scala 29:58]
  assign _T_203 = realC[4:0]; // @[convert.scala 29:56]
  assign _T_204 = _T_203 != 5'h0; // @[convert.scala 29:60]
  assign _T_205 = ~ _T_204; // @[convert.scala 29:41]
  assign decC_isNaR = _T_147 & _T_205; // @[convert.scala 29:39]
  assign _T_208 = _T_147 == 1'h0; // @[convert.scala 30:19]
  assign _T_216 = decA_isNaR | decB_isNaR; // @[FMA_Dec.scala 46:30]
  assign _T_218 = ~ _T_7; // @[FMA_Dec.scala 49:34]
  assign _T_219 = ~ decA_isZero; // @[FMA_Dec.scala 49:47]
  assign _T_220 = _T_218 & _T_219; // @[FMA_Dec.scala 49:45]
  assign _T_222 = {_T_7,_T_220,decA_fraction}; // @[Cat.scala 29:58]
  assign _T_224 = ~ _T_77; // @[FMA_Dec.scala 50:34]
  assign _T_225 = ~ decB_isZero; // @[FMA_Dec.scala 50:47]
  assign _T_226 = _T_224 & _T_225; // @[FMA_Dec.scala 50:45]
  assign _T_228 = {_T_77,_T_226,decB_fraction}; // @[Cat.scala 29:58]
  assign io_sigA = $signed(_T_222); // @[FMA_Dec.scala 49:16]
  assign io_sigB = $signed(_T_228); // @[FMA_Dec.scala 50:16]
  assign io_outIsNaR = _T_216 | decC_isNaR; // @[FMA_Dec.scala 46:16]
  assign io_Csign = realC[5]; // @[FMA_Dec.scala 55:12]
  assign io_CisNar = _T_147 & _T_205; // @[FMA_Dec.scala 51:17]
  assign io_CisZero = _T_208 & _T_205; // @[FMA_Dec.scala 52:17]
  assign io_Cfrac = _T_191[1:0]; // @[FMA_Dec.scala 53:17]
  assign io_Ascale = $signed(_T_61); // @[FMA_Dec.scala 47:13]
  assign io_Bscale = $signed(_T_131); // @[FMA_Dec.scala 48:13]
  assign io_Cscale = $signed(_T_201); // @[FMA_Dec.scala 54:16]
endmodule