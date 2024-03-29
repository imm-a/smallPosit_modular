module FMA_Dec7_2(
  input        clock,
  input        reset,
  input  [6:0] io_A,
  input  [6:0] io_B,
  input  [6:0] io_C,
  output [3:0] io_sigA,
  output [3:0] io_sigB,
  output       io_outIsNaR,
  output       io_Csign,
  output       io_CisNar,
  output       io_CisZero,
  output [1:0] io_Cfrac,
  output [5:0] io_Ascale,
  output [5:0] io_Bscale,
  output [5:0] io_Cscale
);
  wire [7:0] _T_2; // @[FMA_Dec.scala 38:46]
  wire [6:0] realA; // @[FMA_Dec.scala 38:46]
  wire [7:0] _T_5; // @[FMA_Dec.scala 39:46]
  wire [6:0] realC; // @[FMA_Dec.scala 39:46]
  wire  _T_7; // @[convert.scala 18:24]
  wire  _T_8; // @[convert.scala 18:40]
  wire  _T_9; // @[convert.scala 18:36]
  wire [4:0] _T_10; // @[convert.scala 19:24]
  wire [4:0] _T_11; // @[convert.scala 19:43]
  wire [4:0] _T_12; // @[convert.scala 19:39]
  wire [3:0] _T_13; // @[LZD.scala 43:32]
  wire [1:0] _T_14; // @[LZD.scala 43:32]
  wire  _T_15; // @[LZD.scala 39:14]
  wire  _T_16; // @[LZD.scala 39:21]
  wire  _T_17; // @[LZD.scala 39:30]
  wire  _T_18; // @[LZD.scala 39:27]
  wire  _T_19; // @[LZD.scala 39:25]
  wire [1:0] _T_20; // @[Cat.scala 29:58]
  wire [1:0] _T_21; // @[LZD.scala 44:32]
  wire  _T_22; // @[LZD.scala 39:14]
  wire  _T_23; // @[LZD.scala 39:21]
  wire  _T_24; // @[LZD.scala 39:30]
  wire  _T_25; // @[LZD.scala 39:27]
  wire  _T_26; // @[LZD.scala 39:25]
  wire [1:0] _T_27; // @[Cat.scala 29:58]
  wire  _T_28; // @[Shift.scala 12:21]
  wire  _T_29; // @[Shift.scala 12:21]
  wire  _T_30; // @[LZD.scala 49:16]
  wire  _T_31; // @[LZD.scala 49:27]
  wire  _T_32; // @[LZD.scala 49:25]
  wire  _T_33; // @[LZD.scala 49:47]
  wire  _T_34; // @[LZD.scala 49:59]
  wire  _T_35; // @[LZD.scala 49:35]
  wire [2:0] _T_37; // @[Cat.scala 29:58]
  wire  _T_38; // @[LZD.scala 44:32]
  wire  _T_40; // @[Shift.scala 12:21]
  wire [1:0] _T_42; // @[Cat.scala 29:58]
  wire [1:0] _T_43; // @[LZD.scala 55:32]
  wire [1:0] _T_44; // @[LZD.scala 55:20]
  wire [2:0] _T_45; // @[Cat.scala 29:58]
  wire [2:0] _T_46; // @[convert.scala 21:22]
  wire [3:0] _T_47; // @[convert.scala 22:36]
  wire  _T_48; // @[Shift.scala 16:24]
  wire [1:0] _T_49; // @[Shift.scala 17:37]
  wire  _T_50; // @[Shift.scala 12:21]
  wire [1:0] _T_51; // @[Shift.scala 64:52]
  wire [3:0] _T_53; // @[Cat.scala 29:58]
  wire [3:0] _T_54; // @[Shift.scala 64:27]
  wire  _T_55; // @[Shift.scala 66:70]
  wire [2:0] _T_57; // @[Shift.scala 64:52]
  wire [3:0] _T_58; // @[Cat.scala 29:58]
  wire [3:0] _T_59; // @[Shift.scala 64:27]
  wire [3:0] _T_60; // @[Shift.scala 16:10]
  wire [1:0] _T_61; // @[convert.scala 23:34]
  wire [1:0] decA_fraction; // @[convert.scala 24:34]
  wire  _T_63; // @[convert.scala 25:26]
  wire [2:0] _T_65; // @[convert.scala 25:42]
  wire [1:0] _T_68; // @[convert.scala 26:67]
  wire [1:0] _T_69; // @[convert.scala 26:51]
  wire [5:0] _T_70; // @[Cat.scala 29:58]
  wire [5:0] _T_72; // @[convert.scala 29:56]
  wire  _T_73; // @[convert.scala 29:60]
  wire  _T_74; // @[convert.scala 29:41]
  wire  decA_isNaR; // @[convert.scala 29:39]
  wire  _T_77; // @[convert.scala 30:19]
  wire  decA_isZero; // @[convert.scala 30:41]
  wire  _T_86; // @[convert.scala 18:24]
  wire  _T_87; // @[convert.scala 18:40]
  wire  _T_88; // @[convert.scala 18:36]
  wire [4:0] _T_89; // @[convert.scala 19:24]
  wire [4:0] _T_90; // @[convert.scala 19:43]
  wire [4:0] _T_91; // @[convert.scala 19:39]
  wire [3:0] _T_92; // @[LZD.scala 43:32]
  wire [1:0] _T_93; // @[LZD.scala 43:32]
  wire  _T_94; // @[LZD.scala 39:14]
  wire  _T_95; // @[LZD.scala 39:21]
  wire  _T_96; // @[LZD.scala 39:30]
  wire  _T_97; // @[LZD.scala 39:27]
  wire  _T_98; // @[LZD.scala 39:25]
  wire [1:0] _T_99; // @[Cat.scala 29:58]
  wire [1:0] _T_100; // @[LZD.scala 44:32]
  wire  _T_101; // @[LZD.scala 39:14]
  wire  _T_102; // @[LZD.scala 39:21]
  wire  _T_103; // @[LZD.scala 39:30]
  wire  _T_104; // @[LZD.scala 39:27]
  wire  _T_105; // @[LZD.scala 39:25]
  wire [1:0] _T_106; // @[Cat.scala 29:58]
  wire  _T_107; // @[Shift.scala 12:21]
  wire  _T_108; // @[Shift.scala 12:21]
  wire  _T_109; // @[LZD.scala 49:16]
  wire  _T_110; // @[LZD.scala 49:27]
  wire  _T_111; // @[LZD.scala 49:25]
  wire  _T_112; // @[LZD.scala 49:47]
  wire  _T_113; // @[LZD.scala 49:59]
  wire  _T_114; // @[LZD.scala 49:35]
  wire [2:0] _T_116; // @[Cat.scala 29:58]
  wire  _T_117; // @[LZD.scala 44:32]
  wire  _T_119; // @[Shift.scala 12:21]
  wire [1:0] _T_121; // @[Cat.scala 29:58]
  wire [1:0] _T_122; // @[LZD.scala 55:32]
  wire [1:0] _T_123; // @[LZD.scala 55:20]
  wire [2:0] _T_124; // @[Cat.scala 29:58]
  wire [2:0] _T_125; // @[convert.scala 21:22]
  wire [3:0] _T_126; // @[convert.scala 22:36]
  wire  _T_127; // @[Shift.scala 16:24]
  wire [1:0] _T_128; // @[Shift.scala 17:37]
  wire  _T_129; // @[Shift.scala 12:21]
  wire [1:0] _T_130; // @[Shift.scala 64:52]
  wire [3:0] _T_132; // @[Cat.scala 29:58]
  wire [3:0] _T_133; // @[Shift.scala 64:27]
  wire  _T_134; // @[Shift.scala 66:70]
  wire [2:0] _T_136; // @[Shift.scala 64:52]
  wire [3:0] _T_137; // @[Cat.scala 29:58]
  wire [3:0] _T_138; // @[Shift.scala 64:27]
  wire [3:0] _T_139; // @[Shift.scala 16:10]
  wire [1:0] _T_140; // @[convert.scala 23:34]
  wire [1:0] decB_fraction; // @[convert.scala 24:34]
  wire  _T_142; // @[convert.scala 25:26]
  wire [2:0] _T_144; // @[convert.scala 25:42]
  wire [1:0] _T_147; // @[convert.scala 26:67]
  wire [1:0] _T_148; // @[convert.scala 26:51]
  wire [5:0] _T_149; // @[Cat.scala 29:58]
  wire [5:0] _T_151; // @[convert.scala 29:56]
  wire  _T_152; // @[convert.scala 29:60]
  wire  _T_153; // @[convert.scala 29:41]
  wire  decB_isNaR; // @[convert.scala 29:39]
  wire  _T_156; // @[convert.scala 30:19]
  wire  decB_isZero; // @[convert.scala 30:41]
  wire  _T_165; // @[convert.scala 18:24]
  wire  _T_166; // @[convert.scala 18:40]
  wire  _T_167; // @[convert.scala 18:36]
  wire [4:0] _T_168; // @[convert.scala 19:24]
  wire [4:0] _T_169; // @[convert.scala 19:43]
  wire [4:0] _T_170; // @[convert.scala 19:39]
  wire [3:0] _T_171; // @[LZD.scala 43:32]
  wire [1:0] _T_172; // @[LZD.scala 43:32]
  wire  _T_173; // @[LZD.scala 39:14]
  wire  _T_174; // @[LZD.scala 39:21]
  wire  _T_175; // @[LZD.scala 39:30]
  wire  _T_176; // @[LZD.scala 39:27]
  wire  _T_177; // @[LZD.scala 39:25]
  wire [1:0] _T_178; // @[Cat.scala 29:58]
  wire [1:0] _T_179; // @[LZD.scala 44:32]
  wire  _T_180; // @[LZD.scala 39:14]
  wire  _T_181; // @[LZD.scala 39:21]
  wire  _T_182; // @[LZD.scala 39:30]
  wire  _T_183; // @[LZD.scala 39:27]
  wire  _T_184; // @[LZD.scala 39:25]
  wire [1:0] _T_185; // @[Cat.scala 29:58]
  wire  _T_186; // @[Shift.scala 12:21]
  wire  _T_187; // @[Shift.scala 12:21]
  wire  _T_188; // @[LZD.scala 49:16]
  wire  _T_189; // @[LZD.scala 49:27]
  wire  _T_190; // @[LZD.scala 49:25]
  wire  _T_191; // @[LZD.scala 49:47]
  wire  _T_192; // @[LZD.scala 49:59]
  wire  _T_193; // @[LZD.scala 49:35]
  wire [2:0] _T_195; // @[Cat.scala 29:58]
  wire  _T_196; // @[LZD.scala 44:32]
  wire  _T_198; // @[Shift.scala 12:21]
  wire [1:0] _T_200; // @[Cat.scala 29:58]
  wire [1:0] _T_201; // @[LZD.scala 55:32]
  wire [1:0] _T_202; // @[LZD.scala 55:20]
  wire [2:0] _T_203; // @[Cat.scala 29:58]
  wire [2:0] _T_204; // @[convert.scala 21:22]
  wire [3:0] _T_205; // @[convert.scala 22:36]
  wire  _T_206; // @[Shift.scala 16:24]
  wire [1:0] _T_207; // @[Shift.scala 17:37]
  wire  _T_208; // @[Shift.scala 12:21]
  wire [1:0] _T_209; // @[Shift.scala 64:52]
  wire [3:0] _T_211; // @[Cat.scala 29:58]
  wire [3:0] _T_212; // @[Shift.scala 64:27]
  wire  _T_213; // @[Shift.scala 66:70]
  wire [2:0] _T_215; // @[Shift.scala 64:52]
  wire [3:0] _T_216; // @[Cat.scala 29:58]
  wire [3:0] _T_217; // @[Shift.scala 64:27]
  wire [3:0] _T_218; // @[Shift.scala 16:10]
  wire [1:0] _T_219; // @[convert.scala 23:34]
  wire  _T_221; // @[convert.scala 25:26]
  wire [2:0] _T_223; // @[convert.scala 25:42]
  wire [1:0] _T_226; // @[convert.scala 26:67]
  wire [1:0] _T_227; // @[convert.scala 26:51]
  wire [5:0] _T_228; // @[Cat.scala 29:58]
  wire [5:0] _T_230; // @[convert.scala 29:56]
  wire  _T_231; // @[convert.scala 29:60]
  wire  _T_232; // @[convert.scala 29:41]
  wire  decC_isNaR; // @[convert.scala 29:39]
  wire  _T_235; // @[convert.scala 30:19]
  wire  _T_243; // @[FMA_Dec.scala 46:30]
  wire  _T_245; // @[FMA_Dec.scala 49:34]
  wire  _T_246; // @[FMA_Dec.scala 49:47]
  wire  _T_247; // @[FMA_Dec.scala 49:45]
  wire [3:0] _T_249; // @[Cat.scala 29:58]
  wire  _T_251; // @[FMA_Dec.scala 50:34]
  wire  _T_252; // @[FMA_Dec.scala 50:47]
  wire  _T_253; // @[FMA_Dec.scala 50:45]
  wire [3:0] _T_255; // @[Cat.scala 29:58]
  assign _T_2 = {{1'd0}, io_A}; // @[FMA_Dec.scala 38:46]
  assign realA = _T_2[6:0]; // @[FMA_Dec.scala 38:46]
  assign _T_5 = {{1'd0}, io_C}; // @[FMA_Dec.scala 39:46]
  assign realC = _T_5[6:0]; // @[FMA_Dec.scala 39:46]
  assign _T_7 = realA[6]; // @[convert.scala 18:24]
  assign _T_8 = realA[5]; // @[convert.scala 18:40]
  assign _T_9 = _T_7 ^ _T_8; // @[convert.scala 18:36]
  assign _T_10 = realA[5:1]; // @[convert.scala 19:24]
  assign _T_11 = realA[4:0]; // @[convert.scala 19:43]
  assign _T_12 = _T_10 ^ _T_11; // @[convert.scala 19:39]
  assign _T_13 = _T_12[4:1]; // @[LZD.scala 43:32]
  assign _T_14 = _T_13[3:2]; // @[LZD.scala 43:32]
  assign _T_15 = _T_14 != 2'h0; // @[LZD.scala 39:14]
  assign _T_16 = _T_14[1]; // @[LZD.scala 39:21]
  assign _T_17 = _T_14[0]; // @[LZD.scala 39:30]
  assign _T_18 = ~ _T_17; // @[LZD.scala 39:27]
  assign _T_19 = _T_16 | _T_18; // @[LZD.scala 39:25]
  assign _T_20 = {_T_15,_T_19}; // @[Cat.scala 29:58]
  assign _T_21 = _T_13[1:0]; // @[LZD.scala 44:32]
  assign _T_22 = _T_21 != 2'h0; // @[LZD.scala 39:14]
  assign _T_23 = _T_21[1]; // @[LZD.scala 39:21]
  assign _T_24 = _T_21[0]; // @[LZD.scala 39:30]
  assign _T_25 = ~ _T_24; // @[LZD.scala 39:27]
  assign _T_26 = _T_23 | _T_25; // @[LZD.scala 39:25]
  assign _T_27 = {_T_22,_T_26}; // @[Cat.scala 29:58]
  assign _T_28 = _T_20[1]; // @[Shift.scala 12:21]
  assign _T_29 = _T_27[1]; // @[Shift.scala 12:21]
  assign _T_30 = _T_28 | _T_29; // @[LZD.scala 49:16]
  assign _T_31 = ~ _T_29; // @[LZD.scala 49:27]
  assign _T_32 = _T_28 | _T_31; // @[LZD.scala 49:25]
  assign _T_33 = _T_20[0:0]; // @[LZD.scala 49:47]
  assign _T_34 = _T_27[0:0]; // @[LZD.scala 49:59]
  assign _T_35 = _T_28 ? _T_33 : _T_34; // @[LZD.scala 49:35]
  assign _T_37 = {_T_30,_T_32,_T_35}; // @[Cat.scala 29:58]
  assign _T_38 = _T_12[0:0]; // @[LZD.scala 44:32]
  assign _T_40 = _T_37[2]; // @[Shift.scala 12:21]
  assign _T_42 = {1'h1,_T_38}; // @[Cat.scala 29:58]
  assign _T_43 = _T_37[1:0]; // @[LZD.scala 55:32]
  assign _T_44 = _T_40 ? _T_43 : _T_42; // @[LZD.scala 55:20]
  assign _T_45 = {_T_40,_T_44}; // @[Cat.scala 29:58]
  assign _T_46 = ~ _T_45; // @[convert.scala 21:22]
  assign _T_47 = realA[3:0]; // @[convert.scala 22:36]
  assign _T_48 = _T_46 < 3'h4; // @[Shift.scala 16:24]
  assign _T_49 = _T_46[1:0]; // @[Shift.scala 17:37]
  assign _T_50 = _T_49[1]; // @[Shift.scala 12:21]
  assign _T_51 = _T_47[1:0]; // @[Shift.scala 64:52]
  assign _T_53 = {_T_51,2'h0}; // @[Cat.scala 29:58]
  assign _T_54 = _T_50 ? _T_53 : _T_47; // @[Shift.scala 64:27]
  assign _T_55 = _T_49[0:0]; // @[Shift.scala 66:70]
  assign _T_57 = _T_54[2:0]; // @[Shift.scala 64:52]
  assign _T_58 = {_T_57,1'h0}; // @[Cat.scala 29:58]
  assign _T_59 = _T_55 ? _T_58 : _T_54; // @[Shift.scala 64:27]
  assign _T_60 = _T_48 ? _T_59 : 4'h0; // @[Shift.scala 16:10]
  assign _T_61 = _T_60[3:2]; // @[convert.scala 23:34]
  assign decA_fraction = _T_60[1:0]; // @[convert.scala 24:34]
  assign _T_63 = _T_9 == 1'h0; // @[convert.scala 25:26]
  assign _T_65 = _T_9 ? _T_46 : _T_45; // @[convert.scala 25:42]
  assign _T_68 = ~ _T_61; // @[convert.scala 26:67]
  assign _T_69 = _T_7 ? _T_68 : _T_61; // @[convert.scala 26:51]
  assign _T_70 = {_T_63,_T_65,_T_69}; // @[Cat.scala 29:58]
  assign _T_72 = realA[5:0]; // @[convert.scala 29:56]
  assign _T_73 = _T_72 != 6'h0; // @[convert.scala 29:60]
  assign _T_74 = ~ _T_73; // @[convert.scala 29:41]
  assign decA_isNaR = _T_7 & _T_74; // @[convert.scala 29:39]
  assign _T_77 = _T_7 == 1'h0; // @[convert.scala 30:19]
  assign decA_isZero = _T_77 & _T_74; // @[convert.scala 30:41]
  assign _T_86 = io_B[6]; // @[convert.scala 18:24]
  assign _T_87 = io_B[5]; // @[convert.scala 18:40]
  assign _T_88 = _T_86 ^ _T_87; // @[convert.scala 18:36]
  assign _T_89 = io_B[5:1]; // @[convert.scala 19:24]
  assign _T_90 = io_B[4:0]; // @[convert.scala 19:43]
  assign _T_91 = _T_89 ^ _T_90; // @[convert.scala 19:39]
  assign _T_92 = _T_91[4:1]; // @[LZD.scala 43:32]
  assign _T_93 = _T_92[3:2]; // @[LZD.scala 43:32]
  assign _T_94 = _T_93 != 2'h0; // @[LZD.scala 39:14]
  assign _T_95 = _T_93[1]; // @[LZD.scala 39:21]
  assign _T_96 = _T_93[0]; // @[LZD.scala 39:30]
  assign _T_97 = ~ _T_96; // @[LZD.scala 39:27]
  assign _T_98 = _T_95 | _T_97; // @[LZD.scala 39:25]
  assign _T_99 = {_T_94,_T_98}; // @[Cat.scala 29:58]
  assign _T_100 = _T_92[1:0]; // @[LZD.scala 44:32]
  assign _T_101 = _T_100 != 2'h0; // @[LZD.scala 39:14]
  assign _T_102 = _T_100[1]; // @[LZD.scala 39:21]
  assign _T_103 = _T_100[0]; // @[LZD.scala 39:30]
  assign _T_104 = ~ _T_103; // @[LZD.scala 39:27]
  assign _T_105 = _T_102 | _T_104; // @[LZD.scala 39:25]
  assign _T_106 = {_T_101,_T_105}; // @[Cat.scala 29:58]
  assign _T_107 = _T_99[1]; // @[Shift.scala 12:21]
  assign _T_108 = _T_106[1]; // @[Shift.scala 12:21]
  assign _T_109 = _T_107 | _T_108; // @[LZD.scala 49:16]
  assign _T_110 = ~ _T_108; // @[LZD.scala 49:27]
  assign _T_111 = _T_107 | _T_110; // @[LZD.scala 49:25]
  assign _T_112 = _T_99[0:0]; // @[LZD.scala 49:47]
  assign _T_113 = _T_106[0:0]; // @[LZD.scala 49:59]
  assign _T_114 = _T_107 ? _T_112 : _T_113; // @[LZD.scala 49:35]
  assign _T_116 = {_T_109,_T_111,_T_114}; // @[Cat.scala 29:58]
  assign _T_117 = _T_91[0:0]; // @[LZD.scala 44:32]
  assign _T_119 = _T_116[2]; // @[Shift.scala 12:21]
  assign _T_121 = {1'h1,_T_117}; // @[Cat.scala 29:58]
  assign _T_122 = _T_116[1:0]; // @[LZD.scala 55:32]
  assign _T_123 = _T_119 ? _T_122 : _T_121; // @[LZD.scala 55:20]
  assign _T_124 = {_T_119,_T_123}; // @[Cat.scala 29:58]
  assign _T_125 = ~ _T_124; // @[convert.scala 21:22]
  assign _T_126 = io_B[3:0]; // @[convert.scala 22:36]
  assign _T_127 = _T_125 < 3'h4; // @[Shift.scala 16:24]
  assign _T_128 = _T_125[1:0]; // @[Shift.scala 17:37]
  assign _T_129 = _T_128[1]; // @[Shift.scala 12:21]
  assign _T_130 = _T_126[1:0]; // @[Shift.scala 64:52]
  assign _T_132 = {_T_130,2'h0}; // @[Cat.scala 29:58]
  assign _T_133 = _T_129 ? _T_132 : _T_126; // @[Shift.scala 64:27]
  assign _T_134 = _T_128[0:0]; // @[Shift.scala 66:70]
  assign _T_136 = _T_133[2:0]; // @[Shift.scala 64:52]
  assign _T_137 = {_T_136,1'h0}; // @[Cat.scala 29:58]
  assign _T_138 = _T_134 ? _T_137 : _T_133; // @[Shift.scala 64:27]
  assign _T_139 = _T_127 ? _T_138 : 4'h0; // @[Shift.scala 16:10]
  assign _T_140 = _T_139[3:2]; // @[convert.scala 23:34]
  assign decB_fraction = _T_139[1:0]; // @[convert.scala 24:34]
  assign _T_142 = _T_88 == 1'h0; // @[convert.scala 25:26]
  assign _T_144 = _T_88 ? _T_125 : _T_124; // @[convert.scala 25:42]
  assign _T_147 = ~ _T_140; // @[convert.scala 26:67]
  assign _T_148 = _T_86 ? _T_147 : _T_140; // @[convert.scala 26:51]
  assign _T_149 = {_T_142,_T_144,_T_148}; // @[Cat.scala 29:58]
  assign _T_151 = io_B[5:0]; // @[convert.scala 29:56]
  assign _T_152 = _T_151 != 6'h0; // @[convert.scala 29:60]
  assign _T_153 = ~ _T_152; // @[convert.scala 29:41]
  assign decB_isNaR = _T_86 & _T_153; // @[convert.scala 29:39]
  assign _T_156 = _T_86 == 1'h0; // @[convert.scala 30:19]
  assign decB_isZero = _T_156 & _T_153; // @[convert.scala 30:41]
  assign _T_165 = realC[6]; // @[convert.scala 18:24]
  assign _T_166 = realC[5]; // @[convert.scala 18:40]
  assign _T_167 = _T_165 ^ _T_166; // @[convert.scala 18:36]
  assign _T_168 = realC[5:1]; // @[convert.scala 19:24]
  assign _T_169 = realC[4:0]; // @[convert.scala 19:43]
  assign _T_170 = _T_168 ^ _T_169; // @[convert.scala 19:39]
  assign _T_171 = _T_170[4:1]; // @[LZD.scala 43:32]
  assign _T_172 = _T_171[3:2]; // @[LZD.scala 43:32]
  assign _T_173 = _T_172 != 2'h0; // @[LZD.scala 39:14]
  assign _T_174 = _T_172[1]; // @[LZD.scala 39:21]
  assign _T_175 = _T_172[0]; // @[LZD.scala 39:30]
  assign _T_176 = ~ _T_175; // @[LZD.scala 39:27]
  assign _T_177 = _T_174 | _T_176; // @[LZD.scala 39:25]
  assign _T_178 = {_T_173,_T_177}; // @[Cat.scala 29:58]
  assign _T_179 = _T_171[1:0]; // @[LZD.scala 44:32]
  assign _T_180 = _T_179 != 2'h0; // @[LZD.scala 39:14]
  assign _T_181 = _T_179[1]; // @[LZD.scala 39:21]
  assign _T_182 = _T_179[0]; // @[LZD.scala 39:30]
  assign _T_183 = ~ _T_182; // @[LZD.scala 39:27]
  assign _T_184 = _T_181 | _T_183; // @[LZD.scala 39:25]
  assign _T_185 = {_T_180,_T_184}; // @[Cat.scala 29:58]
  assign _T_186 = _T_178[1]; // @[Shift.scala 12:21]
  assign _T_187 = _T_185[1]; // @[Shift.scala 12:21]
  assign _T_188 = _T_186 | _T_187; // @[LZD.scala 49:16]
  assign _T_189 = ~ _T_187; // @[LZD.scala 49:27]
  assign _T_190 = _T_186 | _T_189; // @[LZD.scala 49:25]
  assign _T_191 = _T_178[0:0]; // @[LZD.scala 49:47]
  assign _T_192 = _T_185[0:0]; // @[LZD.scala 49:59]
  assign _T_193 = _T_186 ? _T_191 : _T_192; // @[LZD.scala 49:35]
  assign _T_195 = {_T_188,_T_190,_T_193}; // @[Cat.scala 29:58]
  assign _T_196 = _T_170[0:0]; // @[LZD.scala 44:32]
  assign _T_198 = _T_195[2]; // @[Shift.scala 12:21]
  assign _T_200 = {1'h1,_T_196}; // @[Cat.scala 29:58]
  assign _T_201 = _T_195[1:0]; // @[LZD.scala 55:32]
  assign _T_202 = _T_198 ? _T_201 : _T_200; // @[LZD.scala 55:20]
  assign _T_203 = {_T_198,_T_202}; // @[Cat.scala 29:58]
  assign _T_204 = ~ _T_203; // @[convert.scala 21:22]
  assign _T_205 = realC[3:0]; // @[convert.scala 22:36]
  assign _T_206 = _T_204 < 3'h4; // @[Shift.scala 16:24]
  assign _T_207 = _T_204[1:0]; // @[Shift.scala 17:37]
  assign _T_208 = _T_207[1]; // @[Shift.scala 12:21]
  assign _T_209 = _T_205[1:0]; // @[Shift.scala 64:52]
  assign _T_211 = {_T_209,2'h0}; // @[Cat.scala 29:58]
  assign _T_212 = _T_208 ? _T_211 : _T_205; // @[Shift.scala 64:27]
  assign _T_213 = _T_207[0:0]; // @[Shift.scala 66:70]
  assign _T_215 = _T_212[2:0]; // @[Shift.scala 64:52]
  assign _T_216 = {_T_215,1'h0}; // @[Cat.scala 29:58]
  assign _T_217 = _T_213 ? _T_216 : _T_212; // @[Shift.scala 64:27]
  assign _T_218 = _T_206 ? _T_217 : 4'h0; // @[Shift.scala 16:10]
  assign _T_219 = _T_218[3:2]; // @[convert.scala 23:34]
  assign _T_221 = _T_167 == 1'h0; // @[convert.scala 25:26]
  assign _T_223 = _T_167 ? _T_204 : _T_203; // @[convert.scala 25:42]
  assign _T_226 = ~ _T_219; // @[convert.scala 26:67]
  assign _T_227 = _T_165 ? _T_226 : _T_219; // @[convert.scala 26:51]
  assign _T_228 = {_T_221,_T_223,_T_227}; // @[Cat.scala 29:58]
  assign _T_230 = realC[5:0]; // @[convert.scala 29:56]
  assign _T_231 = _T_230 != 6'h0; // @[convert.scala 29:60]
  assign _T_232 = ~ _T_231; // @[convert.scala 29:41]
  assign decC_isNaR = _T_165 & _T_232; // @[convert.scala 29:39]
  assign _T_235 = _T_165 == 1'h0; // @[convert.scala 30:19]
  assign _T_243 = decA_isNaR | decB_isNaR; // @[FMA_Dec.scala 46:30]
  assign _T_245 = ~ _T_7; // @[FMA_Dec.scala 49:34]
  assign _T_246 = ~ decA_isZero; // @[FMA_Dec.scala 49:47]
  assign _T_247 = _T_245 & _T_246; // @[FMA_Dec.scala 49:45]
  assign _T_249 = {_T_7,_T_247,decA_fraction}; // @[Cat.scala 29:58]
  assign _T_251 = ~ _T_86; // @[FMA_Dec.scala 50:34]
  assign _T_252 = ~ decB_isZero; // @[FMA_Dec.scala 50:47]
  assign _T_253 = _T_251 & _T_252; // @[FMA_Dec.scala 50:45]
  assign _T_255 = {_T_86,_T_253,decB_fraction}; // @[Cat.scala 29:58]
  assign io_sigA = $signed(_T_249); // @[FMA_Dec.scala 49:16]
  assign io_sigB = $signed(_T_255); // @[FMA_Dec.scala 50:16]
  assign io_outIsNaR = _T_243 | decC_isNaR; // @[FMA_Dec.scala 46:16]
  assign io_Csign = realC[6]; // @[FMA_Dec.scala 55:12]
  assign io_CisNar = _T_165 & _T_232; // @[FMA_Dec.scala 51:17]
  assign io_CisZero = _T_235 & _T_232; // @[FMA_Dec.scala 52:17]
  assign io_Cfrac = _T_218[1:0]; // @[FMA_Dec.scala 53:17]
  assign io_Ascale = $signed(_T_70); // @[FMA_Dec.scala 47:13]
  assign io_Bscale = $signed(_T_149); // @[FMA_Dec.scala 48:13]
  assign io_Cscale = $signed(_T_228); // @[FMA_Dec.scala 54:16]
endmodule
