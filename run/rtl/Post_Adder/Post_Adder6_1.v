module Post_Adder6_1(
  input        clock,
  input        reset,
  input  [7:0] io_signSumSig,
  input  [4:0] io_greaterExp,
  input        io_sumSign,
  output       io_overflow,
  input        io_AisNar,
  input        io_BisNar,
  input        io_AisZero,
  input        io_BisZero,
  output [5:0] io_S
);
  wire [6:0] _T; // @[Post_Adder.scala 26:34]
  wire [6:0] _T_1; // @[Post_Adder.scala 26:72]
  wire [6:0] sumXor; // @[Post_Adder.scala 26:52]
  wire [3:0] _T_2; // @[LZD.scala 43:32]
  wire [1:0] _T_3; // @[LZD.scala 43:32]
  wire  _T_4; // @[LZD.scala 39:14]
  wire  _T_5; // @[LZD.scala 39:21]
  wire  _T_6; // @[LZD.scala 39:30]
  wire  _T_7; // @[LZD.scala 39:27]
  wire  _T_8; // @[LZD.scala 39:25]
  wire [1:0] _T_9; // @[Cat.scala 29:58]
  wire [1:0] _T_10; // @[LZD.scala 44:32]
  wire  _T_11; // @[LZD.scala 39:14]
  wire  _T_12; // @[LZD.scala 39:21]
  wire  _T_13; // @[LZD.scala 39:30]
  wire  _T_14; // @[LZD.scala 39:27]
  wire  _T_15; // @[LZD.scala 39:25]
  wire [1:0] _T_16; // @[Cat.scala 29:58]
  wire  _T_17; // @[Shift.scala 12:21]
  wire  _T_18; // @[Shift.scala 12:21]
  wire  _T_19; // @[LZD.scala 49:16]
  wire  _T_20; // @[LZD.scala 49:27]
  wire  _T_21; // @[LZD.scala 49:25]
  wire  _T_22; // @[LZD.scala 49:47]
  wire  _T_23; // @[LZD.scala 49:59]
  wire  _T_24; // @[LZD.scala 49:35]
  wire [2:0] _T_26; // @[Cat.scala 29:58]
  wire [2:0] _T_27; // @[LZD.scala 44:32]
  wire [1:0] _T_28; // @[LZD.scala 43:32]
  wire  _T_29; // @[LZD.scala 39:14]
  wire  _T_30; // @[LZD.scala 39:21]
  wire  _T_31; // @[LZD.scala 39:30]
  wire  _T_32; // @[LZD.scala 39:27]
  wire  _T_33; // @[LZD.scala 39:25]
  wire [1:0] _T_34; // @[Cat.scala 29:58]
  wire  _T_35; // @[LZD.scala 44:32]
  wire  _T_37; // @[Shift.scala 12:21]
  wire  _T_39; // @[LZD.scala 55:32]
  wire  _T_40; // @[LZD.scala 55:20]
  wire [1:0] _T_41; // @[Cat.scala 29:58]
  wire  _T_42; // @[Shift.scala 12:21]
  wire [1:0] _T_44; // @[LZD.scala 55:32]
  wire [1:0] _T_45; // @[LZD.scala 55:20]
  wire [2:0] sumLZD; // @[Cat.scala 29:58]
  wire [3:0] _T_46; // @[Cat.scala 29:58]
  wire [3:0] _T_47; // @[Post_Adder.scala 28:37]
  wire [3:0] _T_49; // @[Post_Adder.scala 28:44]
  wire [3:0] scaleBias; // @[Post_Adder.scala 28:44]
  wire [4:0] _GEN_0; // @[Post_Adder.scala 29:35]
  wire [5:0] sumScale; // @[Post_Adder.scala 29:35]
  wire [2:0] normalShift; // @[Post_Adder.scala 31:22]
  wire [5:0] _T_51; // @[Post_Adder.scala 32:39]
  wire  _T_52; // @[Shift.scala 16:24]
  wire  _T_54; // @[Shift.scala 12:21]
  wire [1:0] _T_55; // @[Shift.scala 64:52]
  wire [5:0] _T_57; // @[Cat.scala 29:58]
  wire [5:0] _T_58; // @[Shift.scala 64:27]
  wire [1:0] _T_59; // @[Shift.scala 66:70]
  wire  _T_60; // @[Shift.scala 12:21]
  wire [3:0] _T_61; // @[Shift.scala 64:52]
  wire [5:0] _T_63; // @[Cat.scala 29:58]
  wire [5:0] _T_64; // @[Shift.scala 64:27]
  wire  _T_65; // @[Shift.scala 66:70]
  wire [4:0] _T_67; // @[Shift.scala 64:52]
  wire [5:0] _T_68; // @[Cat.scala 29:58]
  wire [5:0] _T_69; // @[Shift.scala 64:27]
  wire [5:0] shiftSig; // @[Shift.scala 16:10]
  wire [5:0] _T_70; // @[Post_Adder.scala 44:24]
  wire [1:0] decS_fraction; // @[Post_Adder.scala 45:34]
  wire  decS_isNaR; // @[Post_Adder.scala 46:31]
  wire  _T_73; // @[Post_Adder.scala 47:36]
  wire  _T_74; // @[Post_Adder.scala 47:21]
  wire  _T_75; // @[Post_Adder.scala 47:54]
  wire  decS_isZero; // @[Post_Adder.scala 47:40]
  wire [1:0] _T_77; // @[Post_Adder.scala 48:33]
  wire  _T_78; // @[Post_Adder.scala 48:49]
  wire  _T_79; // @[Post_Adder.scala 48:63]
  wire  _T_80; // @[Post_Adder.scala 48:53]
  wire [4:0] _GEN_1; // @[Post_Adder.scala 41:24 Post_Adder.scala 44:18]
  wire [4:0] decS_scale; // @[Post_Adder.scala 41:24 Post_Adder.scala 44:18]
  wire  _T_83; // @[convert.scala 46:61]
  wire  _T_84; // @[convert.scala 46:52]
  wire  _T_86; // @[convert.scala 46:42]
  wire [3:0] _T_87; // @[convert.scala 48:34]
  wire  _T_88; // @[convert.scala 49:36]
  wire [3:0] _T_90; // @[convert.scala 50:36]
  wire [3:0] _T_91; // @[convert.scala 50:36]
  wire [3:0] _T_92; // @[convert.scala 50:28]
  wire  _T_93; // @[convert.scala 51:31]
  wire  _T_94; // @[convert.scala 52:43]
  wire [7:0] _T_98; // @[Cat.scala 29:58]
  wire [3:0] _T_99; // @[Shift.scala 39:17]
  wire  _T_100; // @[Shift.scala 39:24]
  wire [2:0] _T_101; // @[Shift.scala 40:44]
  wire [3:0] _T_102; // @[Shift.scala 90:30]
  wire [3:0] _T_103; // @[Shift.scala 90:48]
  wire  _T_104; // @[Shift.scala 90:57]
  wire [3:0] _GEN_2; // @[Shift.scala 90:39]
  wire [3:0] _T_105; // @[Shift.scala 90:39]
  wire  _T_106; // @[Shift.scala 12:21]
  wire  _T_107; // @[Shift.scala 12:21]
  wire [3:0] _T_109; // @[Bitwise.scala 71:12]
  wire [7:0] _T_110; // @[Cat.scala 29:58]
  wire [7:0] _T_111; // @[Shift.scala 91:22]
  wire [1:0] _T_112; // @[Shift.scala 92:77]
  wire [5:0] _T_113; // @[Shift.scala 90:30]
  wire [1:0] _T_114; // @[Shift.scala 90:48]
  wire  _T_115; // @[Shift.scala 90:57]
  wire [5:0] _GEN_3; // @[Shift.scala 90:39]
  wire [5:0] _T_116; // @[Shift.scala 90:39]
  wire  _T_117; // @[Shift.scala 12:21]
  wire  _T_118; // @[Shift.scala 12:21]
  wire [1:0] _T_120; // @[Bitwise.scala 71:12]
  wire [7:0] _T_121; // @[Cat.scala 29:58]
  wire [7:0] _T_122; // @[Shift.scala 91:22]
  wire  _T_123; // @[Shift.scala 92:77]
  wire [6:0] _T_124; // @[Shift.scala 90:30]
  wire  _T_125; // @[Shift.scala 90:48]
  wire [6:0] _GEN_4; // @[Shift.scala 90:39]
  wire [6:0] _T_127; // @[Shift.scala 90:39]
  wire  _T_129; // @[Shift.scala 12:21]
  wire [7:0] _T_130; // @[Cat.scala 29:58]
  wire [7:0] _T_131; // @[Shift.scala 91:22]
  wire [7:0] _T_134; // @[Bitwise.scala 71:12]
  wire [7:0] _T_135; // @[Shift.scala 39:10]
  wire  _T_136; // @[convert.scala 55:31]
  wire  _T_137; // @[convert.scala 56:31]
  wire  _T_138; // @[convert.scala 57:31]
  wire  _T_139; // @[convert.scala 58:31]
  wire [4:0] _T_140; // @[convert.scala 59:69]
  wire  _T_141; // @[convert.scala 59:81]
  wire  _T_142; // @[convert.scala 59:50]
  wire  _T_144; // @[convert.scala 60:81]
  wire  _T_145; // @[convert.scala 61:44]
  wire  _T_146; // @[convert.scala 61:52]
  wire  _T_147; // @[convert.scala 61:36]
  wire  _T_148; // @[convert.scala 62:63]
  wire  _T_149; // @[convert.scala 62:103]
  wire  _T_150; // @[convert.scala 62:60]
  wire [4:0] _GEN_5; // @[convert.scala 63:56]
  wire [4:0] _T_153; // @[convert.scala 63:56]
  wire [5:0] _T_154; // @[Cat.scala 29:58]
  wire [5:0] _T_156; // @[Mux.scala 87:16]
  assign _T = io_signSumSig[7:1]; // @[Post_Adder.scala 26:34]
  assign _T_1 = io_signSumSig[6:0]; // @[Post_Adder.scala 26:72]
  assign sumXor = _T ^ _T_1; // @[Post_Adder.scala 26:52]
  assign _T_2 = sumXor[6:3]; // @[LZD.scala 43:32]
  assign _T_3 = _T_2[3:2]; // @[LZD.scala 43:32]
  assign _T_4 = _T_3 != 2'h0; // @[LZD.scala 39:14]
  assign _T_5 = _T_3[1]; // @[LZD.scala 39:21]
  assign _T_6 = _T_3[0]; // @[LZD.scala 39:30]
  assign _T_7 = ~ _T_6; // @[LZD.scala 39:27]
  assign _T_8 = _T_5 | _T_7; // @[LZD.scala 39:25]
  assign _T_9 = {_T_4,_T_8}; // @[Cat.scala 29:58]
  assign _T_10 = _T_2[1:0]; // @[LZD.scala 44:32]
  assign _T_11 = _T_10 != 2'h0; // @[LZD.scala 39:14]
  assign _T_12 = _T_10[1]; // @[LZD.scala 39:21]
  assign _T_13 = _T_10[0]; // @[LZD.scala 39:30]
  assign _T_14 = ~ _T_13; // @[LZD.scala 39:27]
  assign _T_15 = _T_12 | _T_14; // @[LZD.scala 39:25]
  assign _T_16 = {_T_11,_T_15}; // @[Cat.scala 29:58]
  assign _T_17 = _T_9[1]; // @[Shift.scala 12:21]
  assign _T_18 = _T_16[1]; // @[Shift.scala 12:21]
  assign _T_19 = _T_17 | _T_18; // @[LZD.scala 49:16]
  assign _T_20 = ~ _T_18; // @[LZD.scala 49:27]
  assign _T_21 = _T_17 | _T_20; // @[LZD.scala 49:25]
  assign _T_22 = _T_9[0:0]; // @[LZD.scala 49:47]
  assign _T_23 = _T_16[0:0]; // @[LZD.scala 49:59]
  assign _T_24 = _T_17 ? _T_22 : _T_23; // @[LZD.scala 49:35]
  assign _T_26 = {_T_19,_T_21,_T_24}; // @[Cat.scala 29:58]
  assign _T_27 = sumXor[2:0]; // @[LZD.scala 44:32]
  assign _T_28 = _T_27[2:1]; // @[LZD.scala 43:32]
  assign _T_29 = _T_28 != 2'h0; // @[LZD.scala 39:14]
  assign _T_30 = _T_28[1]; // @[LZD.scala 39:21]
  assign _T_31 = _T_28[0]; // @[LZD.scala 39:30]
  assign _T_32 = ~ _T_31; // @[LZD.scala 39:27]
  assign _T_33 = _T_30 | _T_32; // @[LZD.scala 39:25]
  assign _T_34 = {_T_29,_T_33}; // @[Cat.scala 29:58]
  assign _T_35 = _T_27[0:0]; // @[LZD.scala 44:32]
  assign _T_37 = _T_34[1]; // @[Shift.scala 12:21]
  assign _T_39 = _T_34[0:0]; // @[LZD.scala 55:32]
  assign _T_40 = _T_37 ? _T_39 : _T_35; // @[LZD.scala 55:20]
  assign _T_41 = {_T_37,_T_40}; // @[Cat.scala 29:58]
  assign _T_42 = _T_26[2]; // @[Shift.scala 12:21]
  assign _T_44 = _T_26[1:0]; // @[LZD.scala 55:32]
  assign _T_45 = _T_42 ? _T_44 : _T_41; // @[LZD.scala 55:20]
  assign sumLZD = {_T_42,_T_45}; // @[Cat.scala 29:58]
  assign _T_46 = {1'h1,_T_42,_T_45}; // @[Cat.scala 29:58]
  assign _T_47 = $signed(_T_46); // @[Post_Adder.scala 28:37]
  assign _T_49 = $signed(_T_47) + $signed(4'sh2); // @[Post_Adder.scala 28:44]
  assign scaleBias = $signed(_T_49); // @[Post_Adder.scala 28:44]
  assign _GEN_0 = {{1{scaleBias[3]}},scaleBias}; // @[Post_Adder.scala 29:35]
  assign sumScale = $signed(io_greaterExp) + $signed(_GEN_0); // @[Post_Adder.scala 29:35]
  assign normalShift = ~ sumLZD; // @[Post_Adder.scala 31:22]
  assign _T_51 = io_signSumSig[5:0]; // @[Post_Adder.scala 32:39]
  assign _T_52 = normalShift < 3'h6; // @[Shift.scala 16:24]
  assign _T_54 = normalShift[2]; // @[Shift.scala 12:21]
  assign _T_55 = _T_51[1:0]; // @[Shift.scala 64:52]
  assign _T_57 = {_T_55,4'h0}; // @[Cat.scala 29:58]
  assign _T_58 = _T_54 ? _T_57 : _T_51; // @[Shift.scala 64:27]
  assign _T_59 = normalShift[1:0]; // @[Shift.scala 66:70]
  assign _T_60 = _T_59[1]; // @[Shift.scala 12:21]
  assign _T_61 = _T_58[3:0]; // @[Shift.scala 64:52]
  assign _T_63 = {_T_61,2'h0}; // @[Cat.scala 29:58]
  assign _T_64 = _T_60 ? _T_63 : _T_58; // @[Shift.scala 64:27]
  assign _T_65 = _T_59[0:0]; // @[Shift.scala 66:70]
  assign _T_67 = _T_64[4:0]; // @[Shift.scala 64:52]
  assign _T_68 = {_T_67,1'h0}; // @[Cat.scala 29:58]
  assign _T_69 = _T_65 ? _T_68 : _T_64; // @[Shift.scala 64:27]
  assign shiftSig = _T_52 ? _T_69 : 6'h0; // @[Shift.scala 16:10]
  assign _T_70 = io_overflow ? $signed(6'sh8) : $signed(sumScale); // @[Post_Adder.scala 44:24]
  assign decS_fraction = shiftSig[5:4]; // @[Post_Adder.scala 45:34]
  assign decS_isNaR = io_AisNar | io_BisNar; // @[Post_Adder.scala 46:31]
  assign _T_73 = io_signSumSig != 8'h0; // @[Post_Adder.scala 47:36]
  assign _T_74 = ~ _T_73; // @[Post_Adder.scala 47:21]
  assign _T_75 = io_AisZero & io_BisZero; // @[Post_Adder.scala 47:54]
  assign decS_isZero = _T_74 | _T_75; // @[Post_Adder.scala 47:40]
  assign _T_77 = shiftSig[3:2]; // @[Post_Adder.scala 48:33]
  assign _T_78 = shiftSig[1]; // @[Post_Adder.scala 48:49]
  assign _T_79 = shiftSig[0]; // @[Post_Adder.scala 48:63]
  assign _T_80 = _T_78 | _T_79; // @[Post_Adder.scala 48:53]
  assign _GEN_1 = _T_70[4:0]; // @[Post_Adder.scala 41:24 Post_Adder.scala 44:18]
  assign decS_scale = $signed(_GEN_1); // @[Post_Adder.scala 41:24 Post_Adder.scala 44:18]
  assign _T_83 = decS_scale[0]; // @[convert.scala 46:61]
  assign _T_84 = ~ _T_83; // @[convert.scala 46:52]
  assign _T_86 = io_sumSign ? _T_84 : _T_83; // @[convert.scala 46:42]
  assign _T_87 = decS_scale[4:1]; // @[convert.scala 48:34]
  assign _T_88 = _T_87[3:3]; // @[convert.scala 49:36]
  assign _T_90 = ~ _T_87; // @[convert.scala 50:36]
  assign _T_91 = $signed(_T_90); // @[convert.scala 50:36]
  assign _T_92 = _T_88 ? $signed(_T_91) : $signed(_T_87); // @[convert.scala 50:28]
  assign _T_93 = _T_88 ^ io_sumSign; // @[convert.scala 51:31]
  assign _T_94 = ~ _T_93; // @[convert.scala 52:43]
  assign _T_98 = {_T_94,_T_93,_T_86,decS_fraction,_T_77,_T_80}; // @[Cat.scala 29:58]
  assign _T_99 = $unsigned(_T_92); // @[Shift.scala 39:17]
  assign _T_100 = _T_99 < 4'h8; // @[Shift.scala 39:24]
  assign _T_101 = _T_92[2:0]; // @[Shift.scala 40:44]
  assign _T_102 = _T_98[7:4]; // @[Shift.scala 90:30]
  assign _T_103 = _T_98[3:0]; // @[Shift.scala 90:48]
  assign _T_104 = _T_103 != 4'h0; // @[Shift.scala 90:57]
  assign _GEN_2 = {{3'd0}, _T_104}; // @[Shift.scala 90:39]
  assign _T_105 = _T_102 | _GEN_2; // @[Shift.scala 90:39]
  assign _T_106 = _T_101[2]; // @[Shift.scala 12:21]
  assign _T_107 = _T_98[7]; // @[Shift.scala 12:21]
  assign _T_109 = _T_107 ? 4'hf : 4'h0; // @[Bitwise.scala 71:12]
  assign _T_110 = {_T_109,_T_105}; // @[Cat.scala 29:58]
  assign _T_111 = _T_106 ? _T_110 : _T_98; // @[Shift.scala 91:22]
  assign _T_112 = _T_101[1:0]; // @[Shift.scala 92:77]
  assign _T_113 = _T_111[7:2]; // @[Shift.scala 90:30]
  assign _T_114 = _T_111[1:0]; // @[Shift.scala 90:48]
  assign _T_115 = _T_114 != 2'h0; // @[Shift.scala 90:57]
  assign _GEN_3 = {{5'd0}, _T_115}; // @[Shift.scala 90:39]
  assign _T_116 = _T_113 | _GEN_3; // @[Shift.scala 90:39]
  assign _T_117 = _T_112[1]; // @[Shift.scala 12:21]
  assign _T_118 = _T_111[7]; // @[Shift.scala 12:21]
  assign _T_120 = _T_118 ? 2'h3 : 2'h0; // @[Bitwise.scala 71:12]
  assign _T_121 = {_T_120,_T_116}; // @[Cat.scala 29:58]
  assign _T_122 = _T_117 ? _T_121 : _T_111; // @[Shift.scala 91:22]
  assign _T_123 = _T_112[0:0]; // @[Shift.scala 92:77]
  assign _T_124 = _T_122[7:1]; // @[Shift.scala 90:30]
  assign _T_125 = _T_122[0:0]; // @[Shift.scala 90:48]
  assign _GEN_4 = {{6'd0}, _T_125}; // @[Shift.scala 90:39]
  assign _T_127 = _T_124 | _GEN_4; // @[Shift.scala 90:39]
  assign _T_129 = _T_122[7]; // @[Shift.scala 12:21]
  assign _T_130 = {_T_129,_T_127}; // @[Cat.scala 29:58]
  assign _T_131 = _T_123 ? _T_130 : _T_122; // @[Shift.scala 91:22]
  assign _T_134 = _T_107 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12]
  assign _T_135 = _T_100 ? _T_131 : _T_134; // @[Shift.scala 39:10]
  assign _T_136 = _T_135[3]; // @[convert.scala 55:31]
  assign _T_137 = _T_135[2]; // @[convert.scala 56:31]
  assign _T_138 = _T_135[1]; // @[convert.scala 57:31]
  assign _T_139 = _T_135[0]; // @[convert.scala 58:31]
  assign _T_140 = _T_135[7:3]; // @[convert.scala 59:69]
  assign _T_141 = _T_140 != 5'h0; // @[convert.scala 59:81]
  assign _T_142 = ~ _T_141; // @[convert.scala 59:50]
  assign _T_144 = _T_140 == 5'h1f; // @[convert.scala 60:81]
  assign _T_145 = _T_136 | _T_138; // @[convert.scala 61:44]
  assign _T_146 = _T_145 | _T_139; // @[convert.scala 61:52]
  assign _T_147 = _T_137 & _T_146; // @[convert.scala 61:36]
  assign _T_148 = ~ _T_144; // @[convert.scala 62:63]
  assign _T_149 = _T_148 & _T_147; // @[convert.scala 62:103]
  assign _T_150 = _T_142 | _T_149; // @[convert.scala 62:60]
  assign _GEN_5 = {{4'd0}, _T_150}; // @[convert.scala 63:56]
  assign _T_153 = _T_140 + _GEN_5; // @[convert.scala 63:56]
  assign _T_154 = {io_sumSign,_T_153}; // @[Cat.scala 29:58]
  assign _T_156 = decS_isZero ? 6'h0 : _T_154; // @[Mux.scala 87:16]
  assign io_overflow = $signed(sumScale) > $signed(6'sh8); // @[Post_Adder.scala 30:18]
  assign io_S = decS_isNaR ? 6'h20 : _T_156; // @[Post_Adder.scala 49:7]
endmodule