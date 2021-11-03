module Sig_op_approx5_1(
  input        clock,
  input        reset,
  input  [4:0] io_A,
  input  [4:0] io_B,
  output       io_greaterSign,
  output       io_smallerSign,
  output [3:0] io_greaterExp,
  output [2:0] io_greaterSig,
  output [5:0] io_smallerSig,
  output       io_AisNar,
  output       io_BisNar,
  output       io_AisZero,
  output       io_BisZero
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
  wire [1:0] _T_29; // @[Shift.scala 16:10]
  wire  _T_30; // @[convert.scala 23:34]
  wire  decA_fraction; // @[convert.scala 24:34]
  wire  _T_32; // @[convert.scala 25:26]
  wire [1:0] _T_34; // @[convert.scala 25:42]
  wire  _T_37; // @[convert.scala 26:67]
  wire  _T_38; // @[convert.scala 26:51]
  wire [3:0] _T_39; // @[Cat.scala 29:58]
  wire [3:0] _T_41; // @[convert.scala 29:56]
  wire  _T_42; // @[convert.scala 29:60]
  wire  _T_43; // @[convert.scala 29:41]
  wire  _T_46; // @[convert.scala 30:19]
  wire  decA_isZero; // @[convert.scala 30:41]
  wire [3:0] decA_scale; // @[convert.scala 32:24]
  wire  _T_55; // @[convert.scala 18:24]
  wire  _T_56; // @[convert.scala 18:40]
  wire  _T_57; // @[convert.scala 18:36]
  wire [2:0] _T_58; // @[convert.scala 19:24]
  wire [2:0] _T_59; // @[convert.scala 19:43]
  wire [2:0] _T_60; // @[convert.scala 19:39]
  wire [1:0] _T_61; // @[LZD.scala 43:32]
  wire  _T_62; // @[LZD.scala 39:14]
  wire  _T_63; // @[LZD.scala 39:21]
  wire  _T_64; // @[LZD.scala 39:30]
  wire  _T_65; // @[LZD.scala 39:27]
  wire  _T_66; // @[LZD.scala 39:25]
  wire [1:0] _T_67; // @[Cat.scala 29:58]
  wire  _T_68; // @[LZD.scala 44:32]
  wire  _T_70; // @[Shift.scala 12:21]
  wire  _T_72; // @[LZD.scala 55:32]
  wire  _T_73; // @[LZD.scala 55:20]
  wire [1:0] _T_74; // @[Cat.scala 29:58]
  wire [1:0] _T_75; // @[convert.scala 21:22]
  wire [1:0] _T_76; // @[convert.scala 22:36]
  wire  _T_77; // @[Shift.scala 16:24]
  wire  _T_78; // @[Shift.scala 17:37]
  wire  _T_80; // @[Shift.scala 64:52]
  wire [1:0] _T_81; // @[Cat.scala 29:58]
  wire [1:0] _T_82; // @[Shift.scala 64:27]
  wire [1:0] _T_83; // @[Shift.scala 16:10]
  wire  _T_84; // @[convert.scala 23:34]
  wire  decB_fraction; // @[convert.scala 24:34]
  wire  _T_86; // @[convert.scala 25:26]
  wire [1:0] _T_88; // @[convert.scala 25:42]
  wire  _T_91; // @[convert.scala 26:67]
  wire  _T_92; // @[convert.scala 26:51]
  wire [3:0] _T_93; // @[Cat.scala 29:58]
  wire [3:0] _T_95; // @[convert.scala 29:56]
  wire  _T_96; // @[convert.scala 29:60]
  wire  _T_97; // @[convert.scala 29:41]
  wire  _T_100; // @[convert.scala 30:19]
  wire  decB_isZero; // @[convert.scala 30:41]
  wire [3:0] decB_scale; // @[convert.scala 32:24]
  wire [3:0] _T_109; // @[Sig_op_approx.scala 37:30]
  wire [3:0] scale_diff; // @[Sig_op_approx.scala 37:30]
  wire  _T_110; // @[Sig_op_approx.scala 38:37]
  wire  aGTb; // @[Sig_op_approx.scala 38:21]
  wire  greaterFrac; // @[Sig_op_approx.scala 43:24]
  wire  smallerFrac; // @[Sig_op_approx.scala 44:24]
  wire  smallerZero; // @[Sig_op_approx.scala 45:24]
  wire [3:0] _T_116; // @[Sig_op_approx.scala 46:35]
  wire [3:0] _T_117; // @[Sig_op_approx.scala 46:35]
  wire [3:0] sdiff; // @[Sig_op_approx.scala 46:18]
  wire  _T_118; // @[Sig_op_approx.scala 51:53]
  wire  _T_119; // @[Sig_op_approx.scala 51:36]
  wire [5:0] _T_122; // @[Cat.scala 29:58]
  wire [3:0] _T_123; // @[Sig_op_approx.scala 51:119]
  wire  _T_124; // @[Shift.scala 39:24]
  wire [2:0] _T_125; // @[Shift.scala 40:44]
  wire [1:0] _T_126; // @[Shift.scala 90:30]
  wire [3:0] _T_127; // @[Shift.scala 90:48]
  wire  _T_128; // @[Shift.scala 90:57]
  wire [1:0] _GEN_0; // @[Shift.scala 90:39]
  wire [1:0] _T_129; // @[Shift.scala 90:39]
  wire  _T_130; // @[Shift.scala 12:21]
  wire  _T_131; // @[Shift.scala 12:21]
  wire [3:0] _T_133; // @[Bitwise.scala 71:12]
  wire [5:0] _T_134; // @[Cat.scala 29:58]
  wire [5:0] _T_135; // @[Shift.scala 91:22]
  wire [1:0] _T_136; // @[Shift.scala 92:77]
  wire [3:0] _T_137; // @[Shift.scala 90:30]
  wire [1:0] _T_138; // @[Shift.scala 90:48]
  wire  _T_139; // @[Shift.scala 90:57]
  wire [3:0] _GEN_1; // @[Shift.scala 90:39]
  wire [3:0] _T_140; // @[Shift.scala 90:39]
  wire  _T_141; // @[Shift.scala 12:21]
  wire  _T_142; // @[Shift.scala 12:21]
  wire [1:0] _T_144; // @[Bitwise.scala 71:12]
  wire [5:0] _T_145; // @[Cat.scala 29:58]
  wire [5:0] _T_146; // @[Shift.scala 91:22]
  wire  _T_147; // @[Shift.scala 92:77]
  wire [4:0] _T_148; // @[Shift.scala 90:30]
  wire  _T_149; // @[Shift.scala 90:48]
  wire [4:0] _GEN_2; // @[Shift.scala 90:39]
  wire [4:0] _T_151; // @[Shift.scala 90:39]
  wire  _T_153; // @[Shift.scala 12:21]
  wire [5:0] _T_154; // @[Cat.scala 29:58]
  wire [5:0] _T_155; // @[Shift.scala 91:22]
  wire [5:0] _T_158; // @[Bitwise.scala 71:12]
  wire  _T_159; // @[Sig_op_approx.scala 57:40]
  wire [1:0] _T_160; // @[Cat.scala 29:58]
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
  assign _T_29 = _T_23 ? _T_28 : 2'h0; // @[Shift.scala 16:10]
  assign _T_30 = _T_29[1:1]; // @[convert.scala 23:34]
  assign decA_fraction = _T_29[0:0]; // @[convert.scala 24:34]
  assign _T_32 = _T_3 == 1'h0; // @[convert.scala 25:26]
  assign _T_34 = _T_3 ? _T_21 : _T_20; // @[convert.scala 25:42]
  assign _T_37 = ~ _T_30; // @[convert.scala 26:67]
  assign _T_38 = _T_1 ? _T_37 : _T_30; // @[convert.scala 26:51]
  assign _T_39 = {_T_32,_T_34,_T_38}; // @[Cat.scala 29:58]
  assign _T_41 = io_A[3:0]; // @[convert.scala 29:56]
  assign _T_42 = _T_41 != 4'h0; // @[convert.scala 29:60]
  assign _T_43 = ~ _T_42; // @[convert.scala 29:41]
  assign _T_46 = _T_1 == 1'h0; // @[convert.scala 30:19]
  assign decA_isZero = _T_46 & _T_43; // @[convert.scala 30:41]
  assign decA_scale = $signed(_T_39); // @[convert.scala 32:24]
  assign _T_55 = io_B[4]; // @[convert.scala 18:24]
  assign _T_56 = io_B[3]; // @[convert.scala 18:40]
  assign _T_57 = _T_55 ^ _T_56; // @[convert.scala 18:36]
  assign _T_58 = io_B[3:1]; // @[convert.scala 19:24]
  assign _T_59 = io_B[2:0]; // @[convert.scala 19:43]
  assign _T_60 = _T_58 ^ _T_59; // @[convert.scala 19:39]
  assign _T_61 = _T_60[2:1]; // @[LZD.scala 43:32]
  assign _T_62 = _T_61 != 2'h0; // @[LZD.scala 39:14]
  assign _T_63 = _T_61[1]; // @[LZD.scala 39:21]
  assign _T_64 = _T_61[0]; // @[LZD.scala 39:30]
  assign _T_65 = ~ _T_64; // @[LZD.scala 39:27]
  assign _T_66 = _T_63 | _T_65; // @[LZD.scala 39:25]
  assign _T_67 = {_T_62,_T_66}; // @[Cat.scala 29:58]
  assign _T_68 = _T_60[0:0]; // @[LZD.scala 44:32]
  assign _T_70 = _T_67[1]; // @[Shift.scala 12:21]
  assign _T_72 = _T_67[0:0]; // @[LZD.scala 55:32]
  assign _T_73 = _T_70 ? _T_72 : _T_68; // @[LZD.scala 55:20]
  assign _T_74 = {_T_70,_T_73}; // @[Cat.scala 29:58]
  assign _T_75 = ~ _T_74; // @[convert.scala 21:22]
  assign _T_76 = io_B[1:0]; // @[convert.scala 22:36]
  assign _T_77 = _T_75 < 2'h2; // @[Shift.scala 16:24]
  assign _T_78 = _T_75[0]; // @[Shift.scala 17:37]
  assign _T_80 = _T_76[0:0]; // @[Shift.scala 64:52]
  assign _T_81 = {_T_80,1'h0}; // @[Cat.scala 29:58]
  assign _T_82 = _T_78 ? _T_81 : _T_76; // @[Shift.scala 64:27]
  assign _T_83 = _T_77 ? _T_82 : 2'h0; // @[Shift.scala 16:10]
  assign _T_84 = _T_83[1:1]; // @[convert.scala 23:34]
  assign decB_fraction = _T_83[0:0]; // @[convert.scala 24:34]
  assign _T_86 = _T_57 == 1'h0; // @[convert.scala 25:26]
  assign _T_88 = _T_57 ? _T_75 : _T_74; // @[convert.scala 25:42]
  assign _T_91 = ~ _T_84; // @[convert.scala 26:67]
  assign _T_92 = _T_55 ? _T_91 : _T_84; // @[convert.scala 26:51]
  assign _T_93 = {_T_86,_T_88,_T_92}; // @[Cat.scala 29:58]
  assign _T_95 = io_B[3:0]; // @[convert.scala 29:56]
  assign _T_96 = _T_95 != 4'h0; // @[convert.scala 29:60]
  assign _T_97 = ~ _T_96; // @[convert.scala 29:41]
  assign _T_100 = _T_55 == 1'h0; // @[convert.scala 30:19]
  assign decB_isZero = _T_100 & _T_97; // @[convert.scala 30:41]
  assign decB_scale = $signed(_T_93); // @[convert.scala 32:24]
  assign _T_109 = $signed(decA_scale) - $signed(decB_scale); // @[Sig_op_approx.scala 37:30]
  assign scale_diff = $signed(_T_109); // @[Sig_op_approx.scala 37:30]
  assign _T_110 = scale_diff[3:3]; // @[Sig_op_approx.scala 38:37]
  assign aGTb = ~ _T_110; // @[Sig_op_approx.scala 38:21]
  assign greaterFrac = aGTb ? decA_fraction : decB_fraction; // @[Sig_op_approx.scala 43:24]
  assign smallerFrac = aGTb ? decB_fraction : decA_fraction; // @[Sig_op_approx.scala 44:24]
  assign smallerZero = aGTb ? decB_isZero : decA_isZero; // @[Sig_op_approx.scala 45:24]
  assign _T_116 = $signed(4'sh0) - $signed(scale_diff); // @[Sig_op_approx.scala 46:35]
  assign _T_117 = $signed(_T_116); // @[Sig_op_approx.scala 46:35]
  assign sdiff = aGTb ? $signed(scale_diff) : $signed(_T_117); // @[Sig_op_approx.scala 46:18]
  assign _T_118 = io_smallerSign | smallerZero; // @[Sig_op_approx.scala 51:53]
  assign _T_119 = ~ _T_118; // @[Sig_op_approx.scala 51:36]
  assign _T_122 = {io_smallerSign,_T_119,smallerFrac,3'h0}; // @[Cat.scala 29:58]
  assign _T_123 = $unsigned(sdiff); // @[Sig_op_approx.scala 51:119]
  assign _T_124 = _T_123 < 4'h6; // @[Shift.scala 39:24]
  assign _T_125 = _T_123[2:0]; // @[Shift.scala 40:44]
  assign _T_126 = _T_122[5:4]; // @[Shift.scala 90:30]
  assign _T_127 = _T_122[3:0]; // @[Shift.scala 90:48]
  assign _T_128 = _T_127 != 4'h0; // @[Shift.scala 90:57]
  assign _GEN_0 = {{1'd0}, _T_128}; // @[Shift.scala 90:39]
  assign _T_129 = _T_126 | _GEN_0; // @[Shift.scala 90:39]
  assign _T_130 = _T_125[2]; // @[Shift.scala 12:21]
  assign _T_131 = _T_122[5]; // @[Shift.scala 12:21]
  assign _T_133 = _T_131 ? 4'hf : 4'h0; // @[Bitwise.scala 71:12]
  assign _T_134 = {_T_133,_T_129}; // @[Cat.scala 29:58]
  assign _T_135 = _T_130 ? _T_134 : _T_122; // @[Shift.scala 91:22]
  assign _T_136 = _T_125[1:0]; // @[Shift.scala 92:77]
  assign _T_137 = _T_135[5:2]; // @[Shift.scala 90:30]
  assign _T_138 = _T_135[1:0]; // @[Shift.scala 90:48]
  assign _T_139 = _T_138 != 2'h0; // @[Shift.scala 90:57]
  assign _GEN_1 = {{3'd0}, _T_139}; // @[Shift.scala 90:39]
  assign _T_140 = _T_137 | _GEN_1; // @[Shift.scala 90:39]
  assign _T_141 = _T_136[1]; // @[Shift.scala 12:21]
  assign _T_142 = _T_135[5]; // @[Shift.scala 12:21]
  assign _T_144 = _T_142 ? 2'h3 : 2'h0; // @[Bitwise.scala 71:12]
  assign _T_145 = {_T_144,_T_140}; // @[Cat.scala 29:58]
  assign _T_146 = _T_141 ? _T_145 : _T_135; // @[Shift.scala 91:22]
  assign _T_147 = _T_136[0:0]; // @[Shift.scala 92:77]
  assign _T_148 = _T_146[5:1]; // @[Shift.scala 90:30]
  assign _T_149 = _T_146[0:0]; // @[Shift.scala 90:48]
  assign _GEN_2 = {{4'd0}, _T_149}; // @[Shift.scala 90:39]
  assign _T_151 = _T_148 | _GEN_2; // @[Shift.scala 90:39]
  assign _T_153 = _T_146[5]; // @[Shift.scala 12:21]
  assign _T_154 = {_T_153,_T_151}; // @[Cat.scala 29:58]
  assign _T_155 = _T_147 ? _T_154 : _T_146; // @[Shift.scala 91:22]
  assign _T_158 = _T_131 ? 6'h3f : 6'h0; // @[Bitwise.scala 71:12]
  assign _T_159 = ~ io_greaterSign; // @[Sig_op_approx.scala 57:40]
  assign _T_160 = {io_greaterSign,_T_159}; // @[Cat.scala 29:58]
  assign io_greaterSign = aGTb ? _T_1 : _T_55; // @[Sig_op_approx.scala 39:18]
  assign io_smallerSign = aGTb ? _T_55 : _T_1; // @[Sig_op_approx.scala 40:18]
  assign io_greaterExp = aGTb ? $signed(decA_scale) : $signed(decB_scale); // @[Sig_op_approx.scala 41:18]
  assign io_greaterSig = {_T_160,greaterFrac}; // @[Sig_op_approx.scala 57:17]
  assign io_smallerSig = _T_124 ? _T_155 : _T_158; // @[Sig_op_approx.scala 52:17]
  assign io_AisNar = _T_1 & _T_43; // @[Sig_op_approx.scala 47:13]
  assign io_BisNar = _T_55 & _T_97; // @[Sig_op_approx.scala 48:13]
  assign io_AisZero = _T_46 & _T_43; // @[Sig_op_approx.scala 49:14]
  assign io_BisZero = _T_100 & _T_97; // @[Sig_op_approx.scala 50:14]
endmodule
