module Sig_op_approx8_2(
  input        clock,
  input        reset,
  input  [7:0] io_A,
  input  [7:0] io_B,
  output       io_greaterSign,
  output       io_smallerSign,
  output [5:0] io_greaterExp,
  output [4:0] io_greaterSig,
  output [7:0] io_smallerSig,
  output       io_AisNar,
  output       io_BisNar,
  output       io_AisZero,
  output       io_BisZero
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
  wire  decA_isZero; // @[convert.scala 30:41]
  wire [5:0] decA_scale; // @[convert.scala 32:24]
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
  wire  decB_isZero; // @[convert.scala 30:41]
  wire [5:0] decB_scale; // @[convert.scala 32:24]
  wire [5:0] _T_179; // @[Sig_op_approx.scala 37:30]
  wire [5:0] scale_diff; // @[Sig_op_approx.scala 37:30]
  wire  _T_180; // @[Sig_op_approx.scala 38:37]
  wire  aGTb; // @[Sig_op_approx.scala 38:21]
  wire [2:0] greaterFrac; // @[Sig_op_approx.scala 43:24]
  wire [2:0] smallerFrac; // @[Sig_op_approx.scala 44:24]
  wire  smallerZero; // @[Sig_op_approx.scala 45:24]
  wire [5:0] _T_186; // @[Sig_op_approx.scala 46:35]
  wire [5:0] _T_187; // @[Sig_op_approx.scala 46:35]
  wire [5:0] sdiff; // @[Sig_op_approx.scala 46:18]
  wire  _T_188; // @[Sig_op_approx.scala 51:53]
  wire  _T_189; // @[Sig_op_approx.scala 51:36]
  wire [7:0] _T_192; // @[Cat.scala 29:58]
  wire [5:0] _T_193; // @[Sig_op_approx.scala 51:119]
  wire  _T_194; // @[Shift.scala 39:24]
  wire [2:0] _T_195; // @[Shift.scala 40:44]
  wire [3:0] _T_196; // @[Shift.scala 90:30]
  wire [3:0] _T_197; // @[Shift.scala 90:48]
  wire  _T_198; // @[Shift.scala 90:57]
  wire [3:0] _GEN_0; // @[Shift.scala 90:39]
  wire [3:0] _T_199; // @[Shift.scala 90:39]
  wire  _T_200; // @[Shift.scala 12:21]
  wire  _T_201; // @[Shift.scala 12:21]
  wire [3:0] _T_203; // @[Bitwise.scala 71:12]
  wire [7:0] _T_204; // @[Cat.scala 29:58]
  wire [7:0] _T_205; // @[Shift.scala 91:22]
  wire [1:0] _T_206; // @[Shift.scala 92:77]
  wire [5:0] _T_207; // @[Shift.scala 90:30]
  wire [1:0] _T_208; // @[Shift.scala 90:48]
  wire  _T_209; // @[Shift.scala 90:57]
  wire [5:0] _GEN_1; // @[Shift.scala 90:39]
  wire [5:0] _T_210; // @[Shift.scala 90:39]
  wire  _T_211; // @[Shift.scala 12:21]
  wire  _T_212; // @[Shift.scala 12:21]
  wire [1:0] _T_214; // @[Bitwise.scala 71:12]
  wire [7:0] _T_215; // @[Cat.scala 29:58]
  wire [7:0] _T_216; // @[Shift.scala 91:22]
  wire  _T_217; // @[Shift.scala 92:77]
  wire [6:0] _T_218; // @[Shift.scala 90:30]
  wire  _T_219; // @[Shift.scala 90:48]
  wire [6:0] _GEN_2; // @[Shift.scala 90:39]
  wire [6:0] _T_221; // @[Shift.scala 90:39]
  wire  _T_223; // @[Shift.scala 12:21]
  wire [7:0] _T_224; // @[Cat.scala 29:58]
  wire [7:0] _T_225; // @[Shift.scala 91:22]
  wire [7:0] _T_228; // @[Bitwise.scala 71:12]
  wire  _T_229; // @[Sig_op_approx.scala 57:40]
  wire [1:0] _T_230; // @[Cat.scala 29:58]
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
  assign decA_isZero = _T_81 & _T_78; // @[convert.scala 30:41]
  assign decA_scale = $signed(_T_74); // @[convert.scala 32:24]
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
  assign decB_isZero = _T_170 & _T_167; // @[convert.scala 30:41]
  assign decB_scale = $signed(_T_163); // @[convert.scala 32:24]
  assign _T_179 = $signed(decA_scale) - $signed(decB_scale); // @[Sig_op_approx.scala 37:30]
  assign scale_diff = $signed(_T_179); // @[Sig_op_approx.scala 37:30]
  assign _T_180 = scale_diff[5:5]; // @[Sig_op_approx.scala 38:37]
  assign aGTb = ~ _T_180; // @[Sig_op_approx.scala 38:21]
  assign greaterFrac = aGTb ? decA_fraction : decB_fraction; // @[Sig_op_approx.scala 43:24]
  assign smallerFrac = aGTb ? decB_fraction : decA_fraction; // @[Sig_op_approx.scala 44:24]
  assign smallerZero = aGTb ? decB_isZero : decA_isZero; // @[Sig_op_approx.scala 45:24]
  assign _T_186 = $signed(6'sh0) - $signed(scale_diff); // @[Sig_op_approx.scala 46:35]
  assign _T_187 = $signed(_T_186); // @[Sig_op_approx.scala 46:35]
  assign sdiff = aGTb ? $signed(scale_diff) : $signed(_T_187); // @[Sig_op_approx.scala 46:18]
  assign _T_188 = io_smallerSign | smallerZero; // @[Sig_op_approx.scala 51:53]
  assign _T_189 = ~ _T_188; // @[Sig_op_approx.scala 51:36]
  assign _T_192 = {io_smallerSign,_T_189,smallerFrac,3'h0}; // @[Cat.scala 29:58]
  assign _T_193 = $unsigned(sdiff); // @[Sig_op_approx.scala 51:119]
  assign _T_194 = _T_193 < 6'h8; // @[Shift.scala 39:24]
  assign _T_195 = _T_193[2:0]; // @[Shift.scala 40:44]
  assign _T_196 = _T_192[7:4]; // @[Shift.scala 90:30]
  assign _T_197 = _T_192[3:0]; // @[Shift.scala 90:48]
  assign _T_198 = _T_197 != 4'h0; // @[Shift.scala 90:57]
  assign _GEN_0 = {{3'd0}, _T_198}; // @[Shift.scala 90:39]
  assign _T_199 = _T_196 | _GEN_0; // @[Shift.scala 90:39]
  assign _T_200 = _T_195[2]; // @[Shift.scala 12:21]
  assign _T_201 = _T_192[7]; // @[Shift.scala 12:21]
  assign _T_203 = _T_201 ? 4'hf : 4'h0; // @[Bitwise.scala 71:12]
  assign _T_204 = {_T_203,_T_199}; // @[Cat.scala 29:58]
  assign _T_205 = _T_200 ? _T_204 : _T_192; // @[Shift.scala 91:22]
  assign _T_206 = _T_195[1:0]; // @[Shift.scala 92:77]
  assign _T_207 = _T_205[7:2]; // @[Shift.scala 90:30]
  assign _T_208 = _T_205[1:0]; // @[Shift.scala 90:48]
  assign _T_209 = _T_208 != 2'h0; // @[Shift.scala 90:57]
  assign _GEN_1 = {{5'd0}, _T_209}; // @[Shift.scala 90:39]
  assign _T_210 = _T_207 | _GEN_1; // @[Shift.scala 90:39]
  assign _T_211 = _T_206[1]; // @[Shift.scala 12:21]
  assign _T_212 = _T_205[7]; // @[Shift.scala 12:21]
  assign _T_214 = _T_212 ? 2'h3 : 2'h0; // @[Bitwise.scala 71:12]
  assign _T_215 = {_T_214,_T_210}; // @[Cat.scala 29:58]
  assign _T_216 = _T_211 ? _T_215 : _T_205; // @[Shift.scala 91:22]
  assign _T_217 = _T_206[0:0]; // @[Shift.scala 92:77]
  assign _T_218 = _T_216[7:1]; // @[Shift.scala 90:30]
  assign _T_219 = _T_216[0:0]; // @[Shift.scala 90:48]
  assign _GEN_2 = {{6'd0}, _T_219}; // @[Shift.scala 90:39]
  assign _T_221 = _T_218 | _GEN_2; // @[Shift.scala 90:39]
  assign _T_223 = _T_216[7]; // @[Shift.scala 12:21]
  assign _T_224 = {_T_223,_T_221}; // @[Cat.scala 29:58]
  assign _T_225 = _T_217 ? _T_224 : _T_216; // @[Shift.scala 91:22]
  assign _T_228 = _T_201 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12]
  assign _T_229 = ~ io_greaterSign; // @[Sig_op_approx.scala 57:40]
  assign _T_230 = {io_greaterSign,_T_229}; // @[Cat.scala 29:58]
  assign io_greaterSign = aGTb ? _T_1 : _T_90; // @[Sig_op_approx.scala 39:18]
  assign io_smallerSign = aGTb ? _T_90 : _T_1; // @[Sig_op_approx.scala 40:18]
  assign io_greaterExp = aGTb ? $signed(decA_scale) : $signed(decB_scale); // @[Sig_op_approx.scala 41:18]
  assign io_greaterSig = {_T_230,greaterFrac}; // @[Sig_op_approx.scala 57:17]
  assign io_smallerSig = _T_194 ? _T_225 : _T_228; // @[Sig_op_approx.scala 52:17]
  assign io_AisNar = _T_1 & _T_78; // @[Sig_op_approx.scala 47:13]
  assign io_BisNar = _T_90 & _T_167; // @[Sig_op_approx.scala 48:13]
  assign io_AisZero = _T_81 & _T_78; // @[Sig_op_approx.scala 49:14]
  assign io_BisZero = _T_170 & _T_167; // @[Sig_op_approx.scala 50:14]
endmodule