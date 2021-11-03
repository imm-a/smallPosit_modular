module Sig_op_approx7_0(
  input        clock,
  input        reset,
  input  [6:0] io_A,
  input  [6:0] io_B,
  output       io_greaterSign,
  output       io_smallerSign,
  output [3:0] io_greaterExp,
  output [5:0] io_greaterSig,
  output [8:0] io_smallerSig,
  output       io_AisNar,
  output       io_BisNar,
  output       io_AisZero,
  output       io_BisZero
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
  wire [3:0] decA_fraction; // @[Shift.scala 16:10]
  wire  _T_57; // @[convert.scala 25:26]
  wire [2:0] _T_59; // @[convert.scala 25:42]
  wire [3:0] _T_60; // @[Cat.scala 29:58]
  wire [5:0] _T_62; // @[convert.scala 29:56]
  wire  _T_63; // @[convert.scala 29:60]
  wire  _T_64; // @[convert.scala 29:41]
  wire  _T_67; // @[convert.scala 30:19]
  wire  decA_isZero; // @[convert.scala 30:41]
  wire [3:0] decA_scale; // @[convert.scala 32:24]
  wire  _T_76; // @[convert.scala 18:24]
  wire  _T_77; // @[convert.scala 18:40]
  wire  _T_78; // @[convert.scala 18:36]
  wire [4:0] _T_79; // @[convert.scala 19:24]
  wire [4:0] _T_80; // @[convert.scala 19:43]
  wire [4:0] _T_81; // @[convert.scala 19:39]
  wire [3:0] _T_82; // @[LZD.scala 43:32]
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
  wire  _T_107; // @[LZD.scala 44:32]
  wire  _T_109; // @[Shift.scala 12:21]
  wire [1:0] _T_111; // @[Cat.scala 29:58]
  wire [1:0] _T_112; // @[LZD.scala 55:32]
  wire [1:0] _T_113; // @[LZD.scala 55:20]
  wire [2:0] _T_114; // @[Cat.scala 29:58]
  wire [2:0] _T_115; // @[convert.scala 21:22]
  wire [3:0] _T_116; // @[convert.scala 22:36]
  wire  _T_117; // @[Shift.scala 16:24]
  wire [1:0] _T_118; // @[Shift.scala 17:37]
  wire  _T_119; // @[Shift.scala 12:21]
  wire [1:0] _T_120; // @[Shift.scala 64:52]
  wire [3:0] _T_122; // @[Cat.scala 29:58]
  wire [3:0] _T_123; // @[Shift.scala 64:27]
  wire  _T_124; // @[Shift.scala 66:70]
  wire [2:0] _T_126; // @[Shift.scala 64:52]
  wire [3:0] _T_127; // @[Cat.scala 29:58]
  wire [3:0] _T_128; // @[Shift.scala 64:27]
  wire [3:0] decB_fraction; // @[Shift.scala 16:10]
  wire  _T_132; // @[convert.scala 25:26]
  wire [2:0] _T_134; // @[convert.scala 25:42]
  wire [3:0] _T_135; // @[Cat.scala 29:58]
  wire [5:0] _T_137; // @[convert.scala 29:56]
  wire  _T_138; // @[convert.scala 29:60]
  wire  _T_139; // @[convert.scala 29:41]
  wire  _T_142; // @[convert.scala 30:19]
  wire  decB_isZero; // @[convert.scala 30:41]
  wire [3:0] decB_scale; // @[convert.scala 32:24]
  wire [3:0] _T_151; // @[Sig_op_approx.scala 37:30]
  wire [3:0] scale_diff; // @[Sig_op_approx.scala 37:30]
  wire  _T_152; // @[Sig_op_approx.scala 38:37]
  wire  aGTb; // @[Sig_op_approx.scala 38:21]
  wire [3:0] greaterFrac; // @[Sig_op_approx.scala 43:24]
  wire [3:0] smallerFrac; // @[Sig_op_approx.scala 44:24]
  wire  smallerZero; // @[Sig_op_approx.scala 45:24]
  wire [3:0] _T_158; // @[Sig_op_approx.scala 46:35]
  wire [3:0] _T_159; // @[Sig_op_approx.scala 46:35]
  wire [3:0] sdiff; // @[Sig_op_approx.scala 46:18]
  wire  _T_160; // @[Sig_op_approx.scala 51:53]
  wire  _T_161; // @[Sig_op_approx.scala 51:36]
  wire [8:0] _T_164; // @[Cat.scala 29:58]
  wire [3:0] _T_165; // @[Sig_op_approx.scala 51:119]
  wire  _T_166; // @[Shift.scala 39:24]
  wire  _T_168; // @[Shift.scala 90:30]
  wire [7:0] _T_169; // @[Shift.scala 90:48]
  wire  _T_170; // @[Shift.scala 90:57]
  wire  _T_171; // @[Shift.scala 90:39]
  wire  _T_172; // @[Shift.scala 12:21]
  wire  _T_173; // @[Shift.scala 12:21]
  wire [7:0] _T_175; // @[Bitwise.scala 71:12]
  wire [8:0] _T_176; // @[Cat.scala 29:58]
  wire [8:0] _T_177; // @[Shift.scala 91:22]
  wire [2:0] _T_178; // @[Shift.scala 92:77]
  wire [4:0] _T_179; // @[Shift.scala 90:30]
  wire [3:0] _T_180; // @[Shift.scala 90:48]
  wire  _T_181; // @[Shift.scala 90:57]
  wire [4:0] _GEN_0; // @[Shift.scala 90:39]
  wire [4:0] _T_182; // @[Shift.scala 90:39]
  wire  _T_183; // @[Shift.scala 12:21]
  wire  _T_184; // @[Shift.scala 12:21]
  wire [3:0] _T_186; // @[Bitwise.scala 71:12]
  wire [8:0] _T_187; // @[Cat.scala 29:58]
  wire [8:0] _T_188; // @[Shift.scala 91:22]
  wire [1:0] _T_189; // @[Shift.scala 92:77]
  wire [6:0] _T_190; // @[Shift.scala 90:30]
  wire [1:0] _T_191; // @[Shift.scala 90:48]
  wire  _T_192; // @[Shift.scala 90:57]
  wire [6:0] _GEN_1; // @[Shift.scala 90:39]
  wire [6:0] _T_193; // @[Shift.scala 90:39]
  wire  _T_194; // @[Shift.scala 12:21]
  wire  _T_195; // @[Shift.scala 12:21]
  wire [1:0] _T_197; // @[Bitwise.scala 71:12]
  wire [8:0] _T_198; // @[Cat.scala 29:58]
  wire [8:0] _T_199; // @[Shift.scala 91:22]
  wire  _T_200; // @[Shift.scala 92:77]
  wire [7:0] _T_201; // @[Shift.scala 90:30]
  wire  _T_202; // @[Shift.scala 90:48]
  wire [7:0] _GEN_2; // @[Shift.scala 90:39]
  wire [7:0] _T_204; // @[Shift.scala 90:39]
  wire  _T_206; // @[Shift.scala 12:21]
  wire [8:0] _T_207; // @[Cat.scala 29:58]
  wire [8:0] _T_208; // @[Shift.scala 91:22]
  wire [8:0] _T_211; // @[Bitwise.scala 71:12]
  wire  _T_212; // @[Sig_op_approx.scala 57:40]
  wire [1:0] _T_213; // @[Cat.scala 29:58]
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
  assign decA_fraction = _T_42 ? _T_53 : 4'h0; // @[Shift.scala 16:10]
  assign _T_57 = _T_3 == 1'h0; // @[convert.scala 25:26]
  assign _T_59 = _T_3 ? _T_40 : _T_39; // @[convert.scala 25:42]
  assign _T_60 = {_T_57,_T_59}; // @[Cat.scala 29:58]
  assign _T_62 = io_A[5:0]; // @[convert.scala 29:56]
  assign _T_63 = _T_62 != 6'h0; // @[convert.scala 29:60]
  assign _T_64 = ~ _T_63; // @[convert.scala 29:41]
  assign _T_67 = _T_1 == 1'h0; // @[convert.scala 30:19]
  assign decA_isZero = _T_67 & _T_64; // @[convert.scala 30:41]
  assign decA_scale = $signed(_T_60); // @[convert.scala 32:24]
  assign _T_76 = io_B[6]; // @[convert.scala 18:24]
  assign _T_77 = io_B[5]; // @[convert.scala 18:40]
  assign _T_78 = _T_76 ^ _T_77; // @[convert.scala 18:36]
  assign _T_79 = io_B[5:1]; // @[convert.scala 19:24]
  assign _T_80 = io_B[4:0]; // @[convert.scala 19:43]
  assign _T_81 = _T_79 ^ _T_80; // @[convert.scala 19:39]
  assign _T_82 = _T_81[4:1]; // @[LZD.scala 43:32]
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
  assign _T_107 = _T_81[0:0]; // @[LZD.scala 44:32]
  assign _T_109 = _T_106[2]; // @[Shift.scala 12:21]
  assign _T_111 = {1'h1,_T_107}; // @[Cat.scala 29:58]
  assign _T_112 = _T_106[1:0]; // @[LZD.scala 55:32]
  assign _T_113 = _T_109 ? _T_112 : _T_111; // @[LZD.scala 55:20]
  assign _T_114 = {_T_109,_T_113}; // @[Cat.scala 29:58]
  assign _T_115 = ~ _T_114; // @[convert.scala 21:22]
  assign _T_116 = io_B[3:0]; // @[convert.scala 22:36]
  assign _T_117 = _T_115 < 3'h4; // @[Shift.scala 16:24]
  assign _T_118 = _T_115[1:0]; // @[Shift.scala 17:37]
  assign _T_119 = _T_118[1]; // @[Shift.scala 12:21]
  assign _T_120 = _T_116[1:0]; // @[Shift.scala 64:52]
  assign _T_122 = {_T_120,2'h0}; // @[Cat.scala 29:58]
  assign _T_123 = _T_119 ? _T_122 : _T_116; // @[Shift.scala 64:27]
  assign _T_124 = _T_118[0:0]; // @[Shift.scala 66:70]
  assign _T_126 = _T_123[2:0]; // @[Shift.scala 64:52]
  assign _T_127 = {_T_126,1'h0}; // @[Cat.scala 29:58]
  assign _T_128 = _T_124 ? _T_127 : _T_123; // @[Shift.scala 64:27]
  assign decB_fraction = _T_117 ? _T_128 : 4'h0; // @[Shift.scala 16:10]
  assign _T_132 = _T_78 == 1'h0; // @[convert.scala 25:26]
  assign _T_134 = _T_78 ? _T_115 : _T_114; // @[convert.scala 25:42]
  assign _T_135 = {_T_132,_T_134}; // @[Cat.scala 29:58]
  assign _T_137 = io_B[5:0]; // @[convert.scala 29:56]
  assign _T_138 = _T_137 != 6'h0; // @[convert.scala 29:60]
  assign _T_139 = ~ _T_138; // @[convert.scala 29:41]
  assign _T_142 = _T_76 == 1'h0; // @[convert.scala 30:19]
  assign decB_isZero = _T_142 & _T_139; // @[convert.scala 30:41]
  assign decB_scale = $signed(_T_135); // @[convert.scala 32:24]
  assign _T_151 = $signed(decA_scale) - $signed(decB_scale); // @[Sig_op_approx.scala 37:30]
  assign scale_diff = $signed(_T_151); // @[Sig_op_approx.scala 37:30]
  assign _T_152 = scale_diff[3:3]; // @[Sig_op_approx.scala 38:37]
  assign aGTb = ~ _T_152; // @[Sig_op_approx.scala 38:21]
  assign greaterFrac = aGTb ? decA_fraction : decB_fraction; // @[Sig_op_approx.scala 43:24]
  assign smallerFrac = aGTb ? decB_fraction : decA_fraction; // @[Sig_op_approx.scala 44:24]
  assign smallerZero = aGTb ? decB_isZero : decA_isZero; // @[Sig_op_approx.scala 45:24]
  assign _T_158 = $signed(4'sh0) - $signed(scale_diff); // @[Sig_op_approx.scala 46:35]
  assign _T_159 = $signed(_T_158); // @[Sig_op_approx.scala 46:35]
  assign sdiff = aGTb ? $signed(scale_diff) : $signed(_T_159); // @[Sig_op_approx.scala 46:18]
  assign _T_160 = io_smallerSign | smallerZero; // @[Sig_op_approx.scala 51:53]
  assign _T_161 = ~ _T_160; // @[Sig_op_approx.scala 51:36]
  assign _T_164 = {io_smallerSign,_T_161,smallerFrac,3'h0}; // @[Cat.scala 29:58]
  assign _T_165 = $unsigned(sdiff); // @[Sig_op_approx.scala 51:119]
  assign _T_166 = _T_165 < 4'h9; // @[Shift.scala 39:24]
  assign _T_168 = _T_164[8:8]; // @[Shift.scala 90:30]
  assign _T_169 = _T_164[7:0]; // @[Shift.scala 90:48]
  assign _T_170 = _T_169 != 8'h0; // @[Shift.scala 90:57]
  assign _T_171 = _T_168 | _T_170; // @[Shift.scala 90:39]
  assign _T_172 = _T_165[3]; // @[Shift.scala 12:21]
  assign _T_173 = _T_164[8]; // @[Shift.scala 12:21]
  assign _T_175 = _T_173 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12]
  assign _T_176 = {_T_175,_T_171}; // @[Cat.scala 29:58]
  assign _T_177 = _T_172 ? _T_176 : _T_164; // @[Shift.scala 91:22]
  assign _T_178 = _T_165[2:0]; // @[Shift.scala 92:77]
  assign _T_179 = _T_177[8:4]; // @[Shift.scala 90:30]
  assign _T_180 = _T_177[3:0]; // @[Shift.scala 90:48]
  assign _T_181 = _T_180 != 4'h0; // @[Shift.scala 90:57]
  assign _GEN_0 = {{4'd0}, _T_181}; // @[Shift.scala 90:39]
  assign _T_182 = _T_179 | _GEN_0; // @[Shift.scala 90:39]
  assign _T_183 = _T_178[2]; // @[Shift.scala 12:21]
  assign _T_184 = _T_177[8]; // @[Shift.scala 12:21]
  assign _T_186 = _T_184 ? 4'hf : 4'h0; // @[Bitwise.scala 71:12]
  assign _T_187 = {_T_186,_T_182}; // @[Cat.scala 29:58]
  assign _T_188 = _T_183 ? _T_187 : _T_177; // @[Shift.scala 91:22]
  assign _T_189 = _T_178[1:0]; // @[Shift.scala 92:77]
  assign _T_190 = _T_188[8:2]; // @[Shift.scala 90:30]
  assign _T_191 = _T_188[1:0]; // @[Shift.scala 90:48]
  assign _T_192 = _T_191 != 2'h0; // @[Shift.scala 90:57]
  assign _GEN_1 = {{6'd0}, _T_192}; // @[Shift.scala 90:39]
  assign _T_193 = _T_190 | _GEN_1; // @[Shift.scala 90:39]
  assign _T_194 = _T_189[1]; // @[Shift.scala 12:21]
  assign _T_195 = _T_188[8]; // @[Shift.scala 12:21]
  assign _T_197 = _T_195 ? 2'h3 : 2'h0; // @[Bitwise.scala 71:12]
  assign _T_198 = {_T_197,_T_193}; // @[Cat.scala 29:58]
  assign _T_199 = _T_194 ? _T_198 : _T_188; // @[Shift.scala 91:22]
  assign _T_200 = _T_189[0:0]; // @[Shift.scala 92:77]
  assign _T_201 = _T_199[8:1]; // @[Shift.scala 90:30]
  assign _T_202 = _T_199[0:0]; // @[Shift.scala 90:48]
  assign _GEN_2 = {{7'd0}, _T_202}; // @[Shift.scala 90:39]
  assign _T_204 = _T_201 | _GEN_2; // @[Shift.scala 90:39]
  assign _T_206 = _T_199[8]; // @[Shift.scala 12:21]
  assign _T_207 = {_T_206,_T_204}; // @[Cat.scala 29:58]
  assign _T_208 = _T_200 ? _T_207 : _T_199; // @[Shift.scala 91:22]
  assign _T_211 = _T_173 ? 9'h1ff : 9'h0; // @[Bitwise.scala 71:12]
  assign _T_212 = ~ io_greaterSign; // @[Sig_op_approx.scala 57:40]
  assign _T_213 = {io_greaterSign,_T_212}; // @[Cat.scala 29:58]
  assign io_greaterSign = aGTb ? _T_1 : _T_76; // @[Sig_op_approx.scala 39:18]
  assign io_smallerSign = aGTb ? _T_76 : _T_1; // @[Sig_op_approx.scala 40:18]
  assign io_greaterExp = aGTb ? $signed(decA_scale) : $signed(decB_scale); // @[Sig_op_approx.scala 41:18]
  assign io_greaterSig = {_T_213,greaterFrac}; // @[Sig_op_approx.scala 57:17]
  assign io_smallerSig = _T_166 ? _T_208 : _T_211; // @[Sig_op_approx.scala 52:17]
  assign io_AisNar = _T_1 & _T_64; // @[Sig_op_approx.scala 47:13]
  assign io_BisNar = _T_76 & _T_139; // @[Sig_op_approx.scala 48:13]
  assign io_AisZero = _T_67 & _T_64; // @[Sig_op_approx.scala 49:14]
  assign io_BisZero = _T_142 & _T_139; // @[Sig_op_approx.scala 50:14]
endmodule
