module FMAEnc7_2(
  input        clock,
  input        reset,
  input        io_inValid_phase2,
  input  [7:0] io_signSumSig,
  input        io_sumSign,
  input  [5:0] io_greaterScale,
  input        io_outIsNaR_phase2,
  output [6:0] io_F,
  output       io_outValid
);
  wire [6:0] _T; // @[FMAEnc.scala 35:36]
  wire [6:0] _T_1; // @[FMAEnc.scala 35:74]
  wire [6:0] sumXor; // @[FMAEnc.scala 35:54]
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
  wire [2:0] shiftValue; // @[FMAEnc.scala 37:24]
  wire [5:0] _T_46; // @[FMAEnc.scala 38:41]
  wire  _T_47; // @[Shift.scala 16:24]
  wire  _T_49; // @[Shift.scala 12:21]
  wire [1:0] _T_50; // @[Shift.scala 64:52]
  wire [5:0] _T_52; // @[Cat.scala 29:58]
  wire [5:0] _T_53; // @[Shift.scala 64:27]
  wire [1:0] _T_54; // @[Shift.scala 66:70]
  wire  _T_55; // @[Shift.scala 12:21]
  wire [3:0] _T_56; // @[Shift.scala 64:52]
  wire [5:0] _T_58; // @[Cat.scala 29:58]
  wire [5:0] _T_59; // @[Shift.scala 64:27]
  wire  _T_60; // @[Shift.scala 66:70]
  wire [4:0] _T_62; // @[Shift.scala 64:52]
  wire [5:0] _T_63; // @[Cat.scala 29:58]
  wire [5:0] _T_64; // @[Shift.scala 64:27]
  wire [5:0] normalFracTmp; // @[Shift.scala 16:10]
  wire [5:0] _T_66; // @[FMAEnc.scala 41:39]
  wire [5:0] _T_67; // @[FMAEnc.scala 41:39]
  wire [3:0] _T_68; // @[Cat.scala 29:58]
  wire [3:0] _T_69; // @[FMAEnc.scala 41:64]
  wire [5:0] _GEN_2; // @[FMAEnc.scala 41:45]
  wire [5:0] _T_71; // @[FMAEnc.scala 41:45]
  wire [5:0] sumScale; // @[FMAEnc.scala 41:45]
  wire [1:0] sumFrac; // @[FMAEnc.scala 42:41]
  wire [3:0] grsTmp; // @[FMAEnc.scala 45:41]
  wire [1:0] _T_72; // @[FMAEnc.scala 48:40]
  wire [1:0] _T_73; // @[FMAEnc.scala 48:56]
  wire  _T_74; // @[FMAEnc.scala 48:60]
  wire  underflow; // @[FMAEnc.scala 55:32]
  wire  overflow; // @[FMAEnc.scala 56:32]
  wire  _T_75; // @[FMAEnc.scala 65:35]
  wire  decF_isZero; // @[FMAEnc.scala 65:20]
  wire [5:0] _T_77; // @[Mux.scala 87:16]
  wire [5:0] decF_scale; // @[Mux.scala 87:16]
  wire [1:0] _T_79; // @[convert.scala 46:61]
  wire [1:0] _T_80; // @[convert.scala 46:52]
  wire [1:0] _T_82; // @[convert.scala 46:42]
  wire [3:0] _T_83; // @[convert.scala 48:34]
  wire  _T_84; // @[convert.scala 49:36]
  wire [3:0] _T_86; // @[convert.scala 50:36]
  wire [3:0] _T_87; // @[convert.scala 50:36]
  wire [3:0] _T_88; // @[convert.scala 50:28]
  wire  _T_89; // @[convert.scala 51:31]
  wire  _T_90; // @[convert.scala 52:43]
  wire [8:0] _T_94; // @[Cat.scala 29:58]
  wire [3:0] _T_95; // @[Shift.scala 39:17]
  wire  _T_96; // @[Shift.scala 39:24]
  wire  _T_98; // @[Shift.scala 90:30]
  wire [7:0] _T_99; // @[Shift.scala 90:48]
  wire  _T_100; // @[Shift.scala 90:57]
  wire  _T_101; // @[Shift.scala 90:39]
  wire  _T_102; // @[Shift.scala 12:21]
  wire  _T_103; // @[Shift.scala 12:21]
  wire [7:0] _T_105; // @[Bitwise.scala 71:12]
  wire [8:0] _T_106; // @[Cat.scala 29:58]
  wire [8:0] _T_107; // @[Shift.scala 91:22]
  wire [2:0] _T_108; // @[Shift.scala 92:77]
  wire [4:0] _T_109; // @[Shift.scala 90:30]
  wire [3:0] _T_110; // @[Shift.scala 90:48]
  wire  _T_111; // @[Shift.scala 90:57]
  wire [4:0] _GEN_3; // @[Shift.scala 90:39]
  wire [4:0] _T_112; // @[Shift.scala 90:39]
  wire  _T_113; // @[Shift.scala 12:21]
  wire  _T_114; // @[Shift.scala 12:21]
  wire [3:0] _T_116; // @[Bitwise.scala 71:12]
  wire [8:0] _T_117; // @[Cat.scala 29:58]
  wire [8:0] _T_118; // @[Shift.scala 91:22]
  wire [1:0] _T_119; // @[Shift.scala 92:77]
  wire [6:0] _T_120; // @[Shift.scala 90:30]
  wire [1:0] _T_121; // @[Shift.scala 90:48]
  wire  _T_122; // @[Shift.scala 90:57]
  wire [6:0] _GEN_4; // @[Shift.scala 90:39]
  wire [6:0] _T_123; // @[Shift.scala 90:39]
  wire  _T_124; // @[Shift.scala 12:21]
  wire  _T_125; // @[Shift.scala 12:21]
  wire [1:0] _T_127; // @[Bitwise.scala 71:12]
  wire [8:0] _T_128; // @[Cat.scala 29:58]
  wire [8:0] _T_129; // @[Shift.scala 91:22]
  wire  _T_130; // @[Shift.scala 92:77]
  wire [7:0] _T_131; // @[Shift.scala 90:30]
  wire  _T_132; // @[Shift.scala 90:48]
  wire [7:0] _GEN_5; // @[Shift.scala 90:39]
  wire [7:0] _T_134; // @[Shift.scala 90:39]
  wire  _T_136; // @[Shift.scala 12:21]
  wire [8:0] _T_137; // @[Cat.scala 29:58]
  wire [8:0] _T_138; // @[Shift.scala 91:22]
  wire [8:0] _T_141; // @[Bitwise.scala 71:12]
  wire [8:0] _T_142; // @[Shift.scala 39:10]
  wire  _T_143; // @[convert.scala 55:31]
  wire  _T_144; // @[convert.scala 56:31]
  wire  _T_145; // @[convert.scala 57:31]
  wire  _T_146; // @[convert.scala 58:31]
  wire [5:0] _T_147; // @[convert.scala 59:69]
  wire  _T_148; // @[convert.scala 59:81]
  wire  _T_149; // @[convert.scala 59:50]
  wire  _T_151; // @[convert.scala 60:81]
  wire  _T_152; // @[convert.scala 61:44]
  wire  _T_153; // @[convert.scala 61:52]
  wire  _T_154; // @[convert.scala 61:36]
  wire  _T_155; // @[convert.scala 62:63]
  wire  _T_156; // @[convert.scala 62:103]
  wire  _T_157; // @[convert.scala 62:60]
  wire [5:0] _GEN_6; // @[convert.scala 63:56]
  wire [5:0] _T_160; // @[convert.scala 63:56]
  wire [6:0] _T_161; // @[Cat.scala 29:58]
  reg  _T_165; // @[Valid.scala 117:22]
  reg [31:0] _RAND_0;
  reg [6:0] _T_169; // @[Reg.scala 15:16]
  reg [31:0] _RAND_1;
  assign _T = io_signSumSig[7:1]; // @[FMAEnc.scala 35:36]
  assign _T_1 = io_signSumSig[6:0]; // @[FMAEnc.scala 35:74]
  assign sumXor = _T ^ _T_1; // @[FMAEnc.scala 35:54]
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
  assign shiftValue = ~ sumLZD; // @[FMAEnc.scala 37:24]
  assign _T_46 = io_signSumSig[5:0]; // @[FMAEnc.scala 38:41]
  assign _T_47 = shiftValue < 3'h6; // @[Shift.scala 16:24]
  assign _T_49 = shiftValue[2]; // @[Shift.scala 12:21]
  assign _T_50 = _T_46[1:0]; // @[Shift.scala 64:52]
  assign _T_52 = {_T_50,4'h0}; // @[Cat.scala 29:58]
  assign _T_53 = _T_49 ? _T_52 : _T_46; // @[Shift.scala 64:27]
  assign _T_54 = shiftValue[1:0]; // @[Shift.scala 66:70]
  assign _T_55 = _T_54[1]; // @[Shift.scala 12:21]
  assign _T_56 = _T_53[3:0]; // @[Shift.scala 64:52]
  assign _T_58 = {_T_56,2'h0}; // @[Cat.scala 29:58]
  assign _T_59 = _T_55 ? _T_58 : _T_53; // @[Shift.scala 64:27]
  assign _T_60 = _T_54[0:0]; // @[Shift.scala 66:70]
  assign _T_62 = _T_59[4:0]; // @[Shift.scala 64:52]
  assign _T_63 = {_T_62,1'h0}; // @[Cat.scala 29:58]
  assign _T_64 = _T_60 ? _T_63 : _T_59; // @[Shift.scala 64:27]
  assign normalFracTmp = _T_47 ? _T_64 : 6'h0; // @[Shift.scala 16:10]
  assign _T_66 = $signed(io_greaterScale) + $signed(6'sh2); // @[FMAEnc.scala 41:39]
  assign _T_67 = $signed(_T_66); // @[FMAEnc.scala 41:39]
  assign _T_68 = {1'h1,_T_42,_T_45}; // @[Cat.scala 29:58]
  assign _T_69 = $signed(_T_68); // @[FMAEnc.scala 41:64]
  assign _GEN_2 = {{2{_T_69[3]}},_T_69}; // @[FMAEnc.scala 41:45]
  assign _T_71 = $signed(_T_67) + $signed(_GEN_2); // @[FMAEnc.scala 41:45]
  assign sumScale = $signed(_T_71); // @[FMAEnc.scala 41:45]
  assign sumFrac = normalFracTmp[5:4]; // @[FMAEnc.scala 42:41]
  assign grsTmp = normalFracTmp[3:0]; // @[FMAEnc.scala 45:41]
  assign _T_72 = grsTmp[3:2]; // @[FMAEnc.scala 48:40]
  assign _T_73 = grsTmp[1:0]; // @[FMAEnc.scala 48:56]
  assign _T_74 = _T_73 != 2'h0; // @[FMAEnc.scala 48:60]
  assign underflow = $signed(sumScale) < $signed(-6'sh15); // @[FMAEnc.scala 55:32]
  assign overflow = $signed(sumScale) > $signed(6'sh14); // @[FMAEnc.scala 56:32]
  assign _T_75 = io_signSumSig != 8'h0; // @[FMAEnc.scala 65:35]
  assign decF_isZero = ~ _T_75; // @[FMAEnc.scala 65:20]
  assign _T_77 = underflow ? $signed(-6'sh15) : $signed(sumScale); // @[Mux.scala 87:16]
  assign decF_scale = overflow ? $signed(6'sh14) : $signed(_T_77); // @[Mux.scala 87:16]
  assign _T_79 = decF_scale[1:0]; // @[convert.scala 46:61]
  assign _T_80 = ~ _T_79; // @[convert.scala 46:52]
  assign _T_82 = io_sumSign ? _T_80 : _T_79; // @[convert.scala 46:42]
  assign _T_83 = decF_scale[5:2]; // @[convert.scala 48:34]
  assign _T_84 = _T_83[3:3]; // @[convert.scala 49:36]
  assign _T_86 = ~ _T_83; // @[convert.scala 50:36]
  assign _T_87 = $signed(_T_86); // @[convert.scala 50:36]
  assign _T_88 = _T_84 ? $signed(_T_87) : $signed(_T_83); // @[convert.scala 50:28]
  assign _T_89 = _T_84 ^ io_sumSign; // @[convert.scala 51:31]
  assign _T_90 = ~ _T_89; // @[convert.scala 52:43]
  assign _T_94 = {_T_90,_T_89,_T_82,sumFrac,_T_72,_T_74}; // @[Cat.scala 29:58]
  assign _T_95 = $unsigned(_T_88); // @[Shift.scala 39:17]
  assign _T_96 = _T_95 < 4'h9; // @[Shift.scala 39:24]
  assign _T_98 = _T_94[8:8]; // @[Shift.scala 90:30]
  assign _T_99 = _T_94[7:0]; // @[Shift.scala 90:48]
  assign _T_100 = _T_99 != 8'h0; // @[Shift.scala 90:57]
  assign _T_101 = _T_98 | _T_100; // @[Shift.scala 90:39]
  assign _T_102 = _T_95[3]; // @[Shift.scala 12:21]
  assign _T_103 = _T_94[8]; // @[Shift.scala 12:21]
  assign _T_105 = _T_103 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12]
  assign _T_106 = {_T_105,_T_101}; // @[Cat.scala 29:58]
  assign _T_107 = _T_102 ? _T_106 : _T_94; // @[Shift.scala 91:22]
  assign _T_108 = _T_95[2:0]; // @[Shift.scala 92:77]
  assign _T_109 = _T_107[8:4]; // @[Shift.scala 90:30]
  assign _T_110 = _T_107[3:0]; // @[Shift.scala 90:48]
  assign _T_111 = _T_110 != 4'h0; // @[Shift.scala 90:57]
  assign _GEN_3 = {{4'd0}, _T_111}; // @[Shift.scala 90:39]
  assign _T_112 = _T_109 | _GEN_3; // @[Shift.scala 90:39]
  assign _T_113 = _T_108[2]; // @[Shift.scala 12:21]
  assign _T_114 = _T_107[8]; // @[Shift.scala 12:21]
  assign _T_116 = _T_114 ? 4'hf : 4'h0; // @[Bitwise.scala 71:12]
  assign _T_117 = {_T_116,_T_112}; // @[Cat.scala 29:58]
  assign _T_118 = _T_113 ? _T_117 : _T_107; // @[Shift.scala 91:22]
  assign _T_119 = _T_108[1:0]; // @[Shift.scala 92:77]
  assign _T_120 = _T_118[8:2]; // @[Shift.scala 90:30]
  assign _T_121 = _T_118[1:0]; // @[Shift.scala 90:48]
  assign _T_122 = _T_121 != 2'h0; // @[Shift.scala 90:57]
  assign _GEN_4 = {{6'd0}, _T_122}; // @[Shift.scala 90:39]
  assign _T_123 = _T_120 | _GEN_4; // @[Shift.scala 90:39]
  assign _T_124 = _T_119[1]; // @[Shift.scala 12:21]
  assign _T_125 = _T_118[8]; // @[Shift.scala 12:21]
  assign _T_127 = _T_125 ? 2'h3 : 2'h0; // @[Bitwise.scala 71:12]
  assign _T_128 = {_T_127,_T_123}; // @[Cat.scala 29:58]
  assign _T_129 = _T_124 ? _T_128 : _T_118; // @[Shift.scala 91:22]
  assign _T_130 = _T_119[0:0]; // @[Shift.scala 92:77]
  assign _T_131 = _T_129[8:1]; // @[Shift.scala 90:30]
  assign _T_132 = _T_129[0:0]; // @[Shift.scala 90:48]
  assign _GEN_5 = {{7'd0}, _T_132}; // @[Shift.scala 90:39]
  assign _T_134 = _T_131 | _GEN_5; // @[Shift.scala 90:39]
  assign _T_136 = _T_129[8]; // @[Shift.scala 12:21]
  assign _T_137 = {_T_136,_T_134}; // @[Cat.scala 29:58]
  assign _T_138 = _T_130 ? _T_137 : _T_129; // @[Shift.scala 91:22]
  assign _T_141 = _T_103 ? 9'h1ff : 9'h0; // @[Bitwise.scala 71:12]
  assign _T_142 = _T_96 ? _T_138 : _T_141; // @[Shift.scala 39:10]
  assign _T_143 = _T_142[3]; // @[convert.scala 55:31]
  assign _T_144 = _T_142[2]; // @[convert.scala 56:31]
  assign _T_145 = _T_142[1]; // @[convert.scala 57:31]
  assign _T_146 = _T_142[0]; // @[convert.scala 58:31]
  assign _T_147 = _T_142[8:3]; // @[convert.scala 59:69]
  assign _T_148 = _T_147 != 6'h0; // @[convert.scala 59:81]
  assign _T_149 = ~ _T_148; // @[convert.scala 59:50]
  assign _T_151 = _T_147 == 6'h3f; // @[convert.scala 60:81]
  assign _T_152 = _T_143 | _T_145; // @[convert.scala 61:44]
  assign _T_153 = _T_152 | _T_146; // @[convert.scala 61:52]
  assign _T_154 = _T_144 & _T_153; // @[convert.scala 61:36]
  assign _T_155 = ~ _T_151; // @[convert.scala 62:63]
  assign _T_156 = _T_155 & _T_154; // @[convert.scala 62:103]
  assign _T_157 = _T_149 | _T_156; // @[convert.scala 62:60]
  assign _GEN_6 = {{5'd0}, _T_157}; // @[convert.scala 63:56]
  assign _T_160 = _T_147 + _GEN_6; // @[convert.scala 63:56]
  assign _T_161 = {io_sumSign,_T_160}; // @[Cat.scala 29:58]
  assign io_F = _T_169; // @[FMAEnc.scala 85:15]
  assign io_outValid = _T_165; // @[FMAEnc.scala 84:15]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_165 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_169 = _RAND_1[6:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (reset) begin
      _T_165 <= 1'h0;
    end else begin
      _T_165 <= io_inValid_phase2;
    end
    if (io_inValid_phase2) begin
      if (io_outIsNaR_phase2) begin
        _T_169 <= 7'h40;
      end else begin
        if (decF_isZero) begin
          _T_169 <= 7'h0;
        end else begin
          _T_169 <= _T_161;
        end
      end
    end
  end
endmodule
