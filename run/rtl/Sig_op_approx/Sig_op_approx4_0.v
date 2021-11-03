module Sig_op_approx4_0(
  input        clock,
  input        reset,
  input  [3:0] io_A,
  input  [3:0] io_B,
  output       io_greaterSign,
  output       io_smallerSign,
  output [2:0] io_greaterExp,
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
  wire [1:0] _T_4; // @[convert.scala 19:24]
  wire [1:0] _T_5; // @[convert.scala 19:43]
  wire [1:0] _T_6; // @[convert.scala 19:39]
  wire  _T_7; // @[LZD.scala 39:14]
  wire  _T_8; // @[LZD.scala 39:21]
  wire  _T_9; // @[LZD.scala 39:30]
  wire  _T_10; // @[LZD.scala 39:27]
  wire  _T_11; // @[LZD.scala 39:25]
  wire [1:0] _T_12; // @[Cat.scala 29:58]
  wire [1:0] _T_13; // @[convert.scala 21:22]
  wire  _T_14; // @[convert.scala 22:36]
  wire  _T_15; // @[Shift.scala 16:24]
  wire  _T_16; // @[Shift.scala 17:37]
  wire  _T_18; // @[Shift.scala 63:39]
  wire  decA_fraction; // @[Shift.scala 16:10]
  wire  _T_22; // @[convert.scala 25:26]
  wire [1:0] _T_24; // @[convert.scala 25:42]
  wire [2:0] _T_25; // @[Cat.scala 29:58]
  wire [2:0] _T_27; // @[convert.scala 29:56]
  wire  _T_28; // @[convert.scala 29:60]
  wire  _T_29; // @[convert.scala 29:41]
  wire  _T_32; // @[convert.scala 30:19]
  wire  decA_isZero; // @[convert.scala 30:41]
  wire [2:0] decA_scale; // @[convert.scala 32:24]
  wire  _T_41; // @[convert.scala 18:24]
  wire  _T_42; // @[convert.scala 18:40]
  wire  _T_43; // @[convert.scala 18:36]
  wire [1:0] _T_44; // @[convert.scala 19:24]
  wire [1:0] _T_45; // @[convert.scala 19:43]
  wire [1:0] _T_46; // @[convert.scala 19:39]
  wire  _T_47; // @[LZD.scala 39:14]
  wire  _T_48; // @[LZD.scala 39:21]
  wire  _T_49; // @[LZD.scala 39:30]
  wire  _T_50; // @[LZD.scala 39:27]
  wire  _T_51; // @[LZD.scala 39:25]
  wire [1:0] _T_52; // @[Cat.scala 29:58]
  wire [1:0] _T_53; // @[convert.scala 21:22]
  wire  _T_54; // @[convert.scala 22:36]
  wire  _T_55; // @[Shift.scala 16:24]
  wire  _T_56; // @[Shift.scala 17:37]
  wire  _T_58; // @[Shift.scala 63:39]
  wire  decB_fraction; // @[Shift.scala 16:10]
  wire  _T_62; // @[convert.scala 25:26]
  wire [1:0] _T_64; // @[convert.scala 25:42]
  wire [2:0] _T_65; // @[Cat.scala 29:58]
  wire [2:0] _T_67; // @[convert.scala 29:56]
  wire  _T_68; // @[convert.scala 29:60]
  wire  _T_69; // @[convert.scala 29:41]
  wire  _T_72; // @[convert.scala 30:19]
  wire  decB_isZero; // @[convert.scala 30:41]
  wire [2:0] decB_scale; // @[convert.scala 32:24]
  wire [2:0] _T_81; // @[Sig_op_approx.scala 37:30]
  wire [2:0] scale_diff; // @[Sig_op_approx.scala 37:30]
  wire  _T_82; // @[Sig_op_approx.scala 38:37]
  wire  aGTb; // @[Sig_op_approx.scala 38:21]
  wire  greaterFrac; // @[Sig_op_approx.scala 43:24]
  wire  smallerFrac; // @[Sig_op_approx.scala 44:24]
  wire  smallerZero; // @[Sig_op_approx.scala 45:24]
  wire [2:0] _T_88; // @[Sig_op_approx.scala 46:35]
  wire [2:0] _T_89; // @[Sig_op_approx.scala 46:35]
  wire [2:0] sdiff; // @[Sig_op_approx.scala 46:18]
  wire  _T_90; // @[Sig_op_approx.scala 51:53]
  wire  _T_91; // @[Sig_op_approx.scala 51:36]
  wire [5:0] _T_94; // @[Cat.scala 29:58]
  wire [2:0] _T_95; // @[Sig_op_approx.scala 51:119]
  wire  _T_96; // @[Shift.scala 39:24]
  wire [1:0] _T_98; // @[Shift.scala 90:30]
  wire [3:0] _T_99; // @[Shift.scala 90:48]
  wire  _T_100; // @[Shift.scala 90:57]
  wire [1:0] _GEN_0; // @[Shift.scala 90:39]
  wire [1:0] _T_101; // @[Shift.scala 90:39]
  wire  _T_102; // @[Shift.scala 12:21]
  wire  _T_103; // @[Shift.scala 12:21]
  wire [3:0] _T_105; // @[Bitwise.scala 71:12]
  wire [5:0] _T_106; // @[Cat.scala 29:58]
  wire [5:0] _T_107; // @[Shift.scala 91:22]
  wire [1:0] _T_108; // @[Shift.scala 92:77]
  wire [3:0] _T_109; // @[Shift.scala 90:30]
  wire [1:0] _T_110; // @[Shift.scala 90:48]
  wire  _T_111; // @[Shift.scala 90:57]
  wire [3:0] _GEN_1; // @[Shift.scala 90:39]
  wire [3:0] _T_112; // @[Shift.scala 90:39]
  wire  _T_113; // @[Shift.scala 12:21]
  wire  _T_114; // @[Shift.scala 12:21]
  wire [1:0] _T_116; // @[Bitwise.scala 71:12]
  wire [5:0] _T_117; // @[Cat.scala 29:58]
  wire [5:0] _T_118; // @[Shift.scala 91:22]
  wire  _T_119; // @[Shift.scala 92:77]
  wire [4:0] _T_120; // @[Shift.scala 90:30]
  wire  _T_121; // @[Shift.scala 90:48]
  wire [4:0] _GEN_2; // @[Shift.scala 90:39]
  wire [4:0] _T_123; // @[Shift.scala 90:39]
  wire  _T_125; // @[Shift.scala 12:21]
  wire [5:0] _T_126; // @[Cat.scala 29:58]
  wire [5:0] _T_127; // @[Shift.scala 91:22]
  wire [5:0] _T_130; // @[Bitwise.scala 71:12]
  wire  _T_131; // @[Sig_op_approx.scala 57:40]
  wire [1:0] _T_132; // @[Cat.scala 29:58]
  assign _T_1 = io_A[3]; // @[convert.scala 18:24]
  assign _T_2 = io_A[2]; // @[convert.scala 18:40]
  assign _T_3 = _T_1 ^ _T_2; // @[convert.scala 18:36]
  assign _T_4 = io_A[2:1]; // @[convert.scala 19:24]
  assign _T_5 = io_A[1:0]; // @[convert.scala 19:43]
  assign _T_6 = _T_4 ^ _T_5; // @[convert.scala 19:39]
  assign _T_7 = _T_6 != 2'h0; // @[LZD.scala 39:14]
  assign _T_8 = _T_6[1]; // @[LZD.scala 39:21]
  assign _T_9 = _T_6[0]; // @[LZD.scala 39:30]
  assign _T_10 = ~ _T_9; // @[LZD.scala 39:27]
  assign _T_11 = _T_8 | _T_10; // @[LZD.scala 39:25]
  assign _T_12 = {_T_7,_T_11}; // @[Cat.scala 29:58]
  assign _T_13 = ~ _T_12; // @[convert.scala 21:22]
  assign _T_14 = io_A[0:0]; // @[convert.scala 22:36]
  assign _T_15 = _T_13 < 2'h1; // @[Shift.scala 16:24]
  assign _T_16 = _T_13[0]; // @[Shift.scala 17:37]
  assign _T_18 = _T_16 ? 1'h0 : _T_14; // @[Shift.scala 63:39]
  assign decA_fraction = _T_15 & _T_18; // @[Shift.scala 16:10]
  assign _T_22 = _T_3 == 1'h0; // @[convert.scala 25:26]
  assign _T_24 = _T_3 ? _T_13 : _T_12; // @[convert.scala 25:42]
  assign _T_25 = {_T_22,_T_24}; // @[Cat.scala 29:58]
  assign _T_27 = io_A[2:0]; // @[convert.scala 29:56]
  assign _T_28 = _T_27 != 3'h0; // @[convert.scala 29:60]
  assign _T_29 = ~ _T_28; // @[convert.scala 29:41]
  assign _T_32 = _T_1 == 1'h0; // @[convert.scala 30:19]
  assign decA_isZero = _T_32 & _T_29; // @[convert.scala 30:41]
  assign decA_scale = $signed(_T_25); // @[convert.scala 32:24]
  assign _T_41 = io_B[3]; // @[convert.scala 18:24]
  assign _T_42 = io_B[2]; // @[convert.scala 18:40]
  assign _T_43 = _T_41 ^ _T_42; // @[convert.scala 18:36]
  assign _T_44 = io_B[2:1]; // @[convert.scala 19:24]
  assign _T_45 = io_B[1:0]; // @[convert.scala 19:43]
  assign _T_46 = _T_44 ^ _T_45; // @[convert.scala 19:39]
  assign _T_47 = _T_46 != 2'h0; // @[LZD.scala 39:14]
  assign _T_48 = _T_46[1]; // @[LZD.scala 39:21]
  assign _T_49 = _T_46[0]; // @[LZD.scala 39:30]
  assign _T_50 = ~ _T_49; // @[LZD.scala 39:27]
  assign _T_51 = _T_48 | _T_50; // @[LZD.scala 39:25]
  assign _T_52 = {_T_47,_T_51}; // @[Cat.scala 29:58]
  assign _T_53 = ~ _T_52; // @[convert.scala 21:22]
  assign _T_54 = io_B[0:0]; // @[convert.scala 22:36]
  assign _T_55 = _T_53 < 2'h1; // @[Shift.scala 16:24]
  assign _T_56 = _T_53[0]; // @[Shift.scala 17:37]
  assign _T_58 = _T_56 ? 1'h0 : _T_54; // @[Shift.scala 63:39]
  assign decB_fraction = _T_55 & _T_58; // @[Shift.scala 16:10]
  assign _T_62 = _T_43 == 1'h0; // @[convert.scala 25:26]
  assign _T_64 = _T_43 ? _T_53 : _T_52; // @[convert.scala 25:42]
  assign _T_65 = {_T_62,_T_64}; // @[Cat.scala 29:58]
  assign _T_67 = io_B[2:0]; // @[convert.scala 29:56]
  assign _T_68 = _T_67 != 3'h0; // @[convert.scala 29:60]
  assign _T_69 = ~ _T_68; // @[convert.scala 29:41]
  assign _T_72 = _T_41 == 1'h0; // @[convert.scala 30:19]
  assign decB_isZero = _T_72 & _T_69; // @[convert.scala 30:41]
  assign decB_scale = $signed(_T_65); // @[convert.scala 32:24]
  assign _T_81 = $signed(decA_scale) - $signed(decB_scale); // @[Sig_op_approx.scala 37:30]
  assign scale_diff = $signed(_T_81); // @[Sig_op_approx.scala 37:30]
  assign _T_82 = scale_diff[2:2]; // @[Sig_op_approx.scala 38:37]
  assign aGTb = ~ _T_82; // @[Sig_op_approx.scala 38:21]
  assign greaterFrac = aGTb ? decA_fraction : decB_fraction; // @[Sig_op_approx.scala 43:24]
  assign smallerFrac = aGTb ? decB_fraction : decA_fraction; // @[Sig_op_approx.scala 44:24]
  assign smallerZero = aGTb ? decB_isZero : decA_isZero; // @[Sig_op_approx.scala 45:24]
  assign _T_88 = $signed(3'sh0) - $signed(scale_diff); // @[Sig_op_approx.scala 46:35]
  assign _T_89 = $signed(_T_88); // @[Sig_op_approx.scala 46:35]
  assign sdiff = aGTb ? $signed(scale_diff) : $signed(_T_89); // @[Sig_op_approx.scala 46:18]
  assign _T_90 = io_smallerSign | smallerZero; // @[Sig_op_approx.scala 51:53]
  assign _T_91 = ~ _T_90; // @[Sig_op_approx.scala 51:36]
  assign _T_94 = {io_smallerSign,_T_91,smallerFrac,3'h0}; // @[Cat.scala 29:58]
  assign _T_95 = $unsigned(sdiff); // @[Sig_op_approx.scala 51:119]
  assign _T_96 = _T_95 < 3'h6; // @[Shift.scala 39:24]
  assign _T_98 = _T_94[5:4]; // @[Shift.scala 90:30]
  assign _T_99 = _T_94[3:0]; // @[Shift.scala 90:48]
  assign _T_100 = _T_99 != 4'h0; // @[Shift.scala 90:57]
  assign _GEN_0 = {{1'd0}, _T_100}; // @[Shift.scala 90:39]
  assign _T_101 = _T_98 | _GEN_0; // @[Shift.scala 90:39]
  assign _T_102 = _T_95[2]; // @[Shift.scala 12:21]
  assign _T_103 = _T_94[5]; // @[Shift.scala 12:21]
  assign _T_105 = _T_103 ? 4'hf : 4'h0; // @[Bitwise.scala 71:12]
  assign _T_106 = {_T_105,_T_101}; // @[Cat.scala 29:58]
  assign _T_107 = _T_102 ? _T_106 : _T_94; // @[Shift.scala 91:22]
  assign _T_108 = _T_95[1:0]; // @[Shift.scala 92:77]
  assign _T_109 = _T_107[5:2]; // @[Shift.scala 90:30]
  assign _T_110 = _T_107[1:0]; // @[Shift.scala 90:48]
  assign _T_111 = _T_110 != 2'h0; // @[Shift.scala 90:57]
  assign _GEN_1 = {{3'd0}, _T_111}; // @[Shift.scala 90:39]
  assign _T_112 = _T_109 | _GEN_1; // @[Shift.scala 90:39]
  assign _T_113 = _T_108[1]; // @[Shift.scala 12:21]
  assign _T_114 = _T_107[5]; // @[Shift.scala 12:21]
  assign _T_116 = _T_114 ? 2'h3 : 2'h0; // @[Bitwise.scala 71:12]
  assign _T_117 = {_T_116,_T_112}; // @[Cat.scala 29:58]
  assign _T_118 = _T_113 ? _T_117 : _T_107; // @[Shift.scala 91:22]
  assign _T_119 = _T_108[0:0]; // @[Shift.scala 92:77]
  assign _T_120 = _T_118[5:1]; // @[Shift.scala 90:30]
  assign _T_121 = _T_118[0:0]; // @[Shift.scala 90:48]
  assign _GEN_2 = {{4'd0}, _T_121}; // @[Shift.scala 90:39]
  assign _T_123 = _T_120 | _GEN_2; // @[Shift.scala 90:39]
  assign _T_125 = _T_118[5]; // @[Shift.scala 12:21]
  assign _T_126 = {_T_125,_T_123}; // @[Cat.scala 29:58]
  assign _T_127 = _T_119 ? _T_126 : _T_118; // @[Shift.scala 91:22]
  assign _T_130 = _T_103 ? 6'h3f : 6'h0; // @[Bitwise.scala 71:12]
  assign _T_131 = ~ io_greaterSign; // @[Sig_op_approx.scala 57:40]
  assign _T_132 = {io_greaterSign,_T_131}; // @[Cat.scala 29:58]
  assign io_greaterSign = aGTb ? _T_1 : _T_41; // @[Sig_op_approx.scala 39:18]
  assign io_smallerSign = aGTb ? _T_41 : _T_1; // @[Sig_op_approx.scala 40:18]
  assign io_greaterExp = aGTb ? $signed(decA_scale) : $signed(decB_scale); // @[Sig_op_approx.scala 41:18]
  assign io_greaterSig = {_T_132,greaterFrac}; // @[Sig_op_approx.scala 57:17]
  assign io_smallerSig = _T_96 ? _T_127 : _T_130; // @[Sig_op_approx.scala 52:17]
  assign io_AisNar = _T_1 & _T_29; // @[Sig_op_approx.scala 47:13]
  assign io_BisNar = _T_41 & _T_69; // @[Sig_op_approx.scala 48:13]
  assign io_AisZero = _T_32 & _T_29; // @[Sig_op_approx.scala 49:14]
  assign io_BisZero = _T_72 & _T_69; // @[Sig_op_approx.scala 50:14]
endmodule