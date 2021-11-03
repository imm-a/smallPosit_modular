module Post_Adder8_0(
  input         clock,
  input         reset,
  input  [10:0] io_signSumSig,
  input  [3:0]  io_greaterExp,
  input         io_sumSign,
  output        io_overflow,
  input         io_AisNar,
  input         io_BisNar,
  input         io_AisZero,
  input         io_BisZero,
  output [7:0]  io_S
);
  wire [9:0] _T; // @[Post_Adder.scala 26:34]
  wire [9:0] _T_1; // @[Post_Adder.scala 26:72]
  wire [9:0] sumXor; // @[Post_Adder.scala 26:52]
  wire [7:0] _T_2; // @[LZD.scala 43:32]
  wire [3:0] _T_3; // @[LZD.scala 43:32]
  wire [1:0] _T_4; // @[LZD.scala 43:32]
  wire  _T_5; // @[LZD.scala 39:14]
  wire  _T_6; // @[LZD.scala 39:21]
  wire  _T_7; // @[LZD.scala 39:30]
  wire  _T_8; // @[LZD.scala 39:27]
  wire  _T_9; // @[LZD.scala 39:25]
  wire [1:0] _T_10; // @[Cat.scala 29:58]
  wire [1:0] _T_11; // @[LZD.scala 44:32]
  wire  _T_12; // @[LZD.scala 39:14]
  wire  _T_13; // @[LZD.scala 39:21]
  wire  _T_14; // @[LZD.scala 39:30]
  wire  _T_15; // @[LZD.scala 39:27]
  wire  _T_16; // @[LZD.scala 39:25]
  wire [1:0] _T_17; // @[Cat.scala 29:58]
  wire  _T_18; // @[Shift.scala 12:21]
  wire  _T_19; // @[Shift.scala 12:21]
  wire  _T_20; // @[LZD.scala 49:16]
  wire  _T_21; // @[LZD.scala 49:27]
  wire  _T_22; // @[LZD.scala 49:25]
  wire  _T_23; // @[LZD.scala 49:47]
  wire  _T_24; // @[LZD.scala 49:59]
  wire  _T_25; // @[LZD.scala 49:35]
  wire [2:0] _T_27; // @[Cat.scala 29:58]
  wire [3:0] _T_28; // @[LZD.scala 44:32]
  wire [1:0] _T_29; // @[LZD.scala 43:32]
  wire  _T_30; // @[LZD.scala 39:14]
  wire  _T_31; // @[LZD.scala 39:21]
  wire  _T_32; // @[LZD.scala 39:30]
  wire  _T_33; // @[LZD.scala 39:27]
  wire  _T_34; // @[LZD.scala 39:25]
  wire [1:0] _T_35; // @[Cat.scala 29:58]
  wire [1:0] _T_36; // @[LZD.scala 44:32]
  wire  _T_37; // @[LZD.scala 39:14]
  wire  _T_38; // @[LZD.scala 39:21]
  wire  _T_39; // @[LZD.scala 39:30]
  wire  _T_40; // @[LZD.scala 39:27]
  wire  _T_41; // @[LZD.scala 39:25]
  wire [1:0] _T_42; // @[Cat.scala 29:58]
  wire  _T_43; // @[Shift.scala 12:21]
  wire  _T_44; // @[Shift.scala 12:21]
  wire  _T_45; // @[LZD.scala 49:16]
  wire  _T_46; // @[LZD.scala 49:27]
  wire  _T_47; // @[LZD.scala 49:25]
  wire  _T_48; // @[LZD.scala 49:47]
  wire  _T_49; // @[LZD.scala 49:59]
  wire  _T_50; // @[LZD.scala 49:35]
  wire [2:0] _T_52; // @[Cat.scala 29:58]
  wire  _T_53; // @[Shift.scala 12:21]
  wire  _T_54; // @[Shift.scala 12:21]
  wire  _T_55; // @[LZD.scala 49:16]
  wire  _T_56; // @[LZD.scala 49:27]
  wire  _T_57; // @[LZD.scala 49:25]
  wire [1:0] _T_58; // @[LZD.scala 49:47]
  wire [1:0] _T_59; // @[LZD.scala 49:59]
  wire [1:0] _T_60; // @[LZD.scala 49:35]
  wire [3:0] _T_62; // @[Cat.scala 29:58]
  wire [1:0] _T_63; // @[LZD.scala 44:32]
  wire  _T_64; // @[LZD.scala 39:14]
  wire  _T_65; // @[LZD.scala 39:21]
  wire  _T_66; // @[LZD.scala 39:30]
  wire  _T_67; // @[LZD.scala 39:27]
  wire  _T_68; // @[LZD.scala 39:25]
  wire  _T_70; // @[Shift.scala 12:21]
  wire [2:0] _T_72; // @[Cat.scala 29:58]
  wire [2:0] _T_73; // @[LZD.scala 55:32]
  wire [2:0] _T_74; // @[LZD.scala 55:20]
  wire [3:0] sumLZD; // @[Cat.scala 29:58]
  wire [4:0] _T_75; // @[Cat.scala 29:58]
  wire [4:0] _T_76; // @[Post_Adder.scala 28:37]
  wire [4:0] _T_78; // @[Post_Adder.scala 28:44]
  wire [4:0] scaleBias; // @[Post_Adder.scala 28:44]
  wire [4:0] _GEN_0; // @[Post_Adder.scala 29:35]
  wire [5:0] sumScale; // @[Post_Adder.scala 29:35]
  wire [3:0] normalShift; // @[Post_Adder.scala 31:22]
  wire [8:0] _T_80; // @[Post_Adder.scala 32:39]
  wire  _T_81; // @[Shift.scala 16:24]
  wire  _T_83; // @[Shift.scala 12:21]
  wire  _T_84; // @[Shift.scala 64:52]
  wire [8:0] _T_86; // @[Cat.scala 29:58]
  wire [8:0] _T_87; // @[Shift.scala 64:27]
  wire [2:0] _T_88; // @[Shift.scala 66:70]
  wire  _T_89; // @[Shift.scala 12:21]
  wire [4:0] _T_90; // @[Shift.scala 64:52]
  wire [8:0] _T_92; // @[Cat.scala 29:58]
  wire [8:0] _T_93; // @[Shift.scala 64:27]
  wire [1:0] _T_94; // @[Shift.scala 66:70]
  wire  _T_95; // @[Shift.scala 12:21]
  wire [6:0] _T_96; // @[Shift.scala 64:52]
  wire [8:0] _T_98; // @[Cat.scala 29:58]
  wire [8:0] _T_99; // @[Shift.scala 64:27]
  wire  _T_100; // @[Shift.scala 66:70]
  wire [7:0] _T_102; // @[Shift.scala 64:52]
  wire [8:0] _T_103; // @[Cat.scala 29:58]
  wire [8:0] _T_104; // @[Shift.scala 64:27]
  wire [8:0] shiftSig; // @[Shift.scala 16:10]
  wire [5:0] _T_105; // @[Post_Adder.scala 44:24]
  wire [4:0] decS_fraction; // @[Post_Adder.scala 45:34]
  wire  decS_isNaR; // @[Post_Adder.scala 46:31]
  wire  _T_108; // @[Post_Adder.scala 47:36]
  wire  _T_109; // @[Post_Adder.scala 47:21]
  wire  _T_110; // @[Post_Adder.scala 47:54]
  wire  decS_isZero; // @[Post_Adder.scala 47:40]
  wire [1:0] _T_112; // @[Post_Adder.scala 48:33]
  wire  _T_113; // @[Post_Adder.scala 48:49]
  wire  _T_114; // @[Post_Adder.scala 48:63]
  wire  _T_115; // @[Post_Adder.scala 48:53]
  wire [3:0] _GEN_1; // @[Post_Adder.scala 41:24 Post_Adder.scala 44:18]
  wire [3:0] decS_scale; // @[Post_Adder.scala 41:24 Post_Adder.scala 44:18]
  wire  _T_119; // @[convert.scala 49:36]
  wire [3:0] _T_121; // @[convert.scala 50:36]
  wire [3:0] _T_122; // @[convert.scala 50:36]
  wire [3:0] _T_123; // @[convert.scala 50:28]
  wire  _T_124; // @[convert.scala 51:31]
  wire  _T_125; // @[convert.scala 53:34]
  wire [9:0] _T_128; // @[Cat.scala 29:58]
  wire [3:0] _T_129; // @[Shift.scala 39:17]
  wire  _T_130; // @[Shift.scala 39:24]
  wire [1:0] _T_132; // @[Shift.scala 90:30]
  wire [7:0] _T_133; // @[Shift.scala 90:48]
  wire  _T_134; // @[Shift.scala 90:57]
  wire [1:0] _GEN_2; // @[Shift.scala 90:39]
  wire [1:0] _T_135; // @[Shift.scala 90:39]
  wire  _T_136; // @[Shift.scala 12:21]
  wire  _T_137; // @[Shift.scala 12:21]
  wire [7:0] _T_139; // @[Bitwise.scala 71:12]
  wire [9:0] _T_140; // @[Cat.scala 29:58]
  wire [9:0] _T_141; // @[Shift.scala 91:22]
  wire [2:0] _T_142; // @[Shift.scala 92:77]
  wire [5:0] _T_143; // @[Shift.scala 90:30]
  wire [3:0] _T_144; // @[Shift.scala 90:48]
  wire  _T_145; // @[Shift.scala 90:57]
  wire [5:0] _GEN_3; // @[Shift.scala 90:39]
  wire [5:0] _T_146; // @[Shift.scala 90:39]
  wire  _T_147; // @[Shift.scala 12:21]
  wire  _T_148; // @[Shift.scala 12:21]
  wire [3:0] _T_150; // @[Bitwise.scala 71:12]
  wire [9:0] _T_151; // @[Cat.scala 29:58]
  wire [9:0] _T_152; // @[Shift.scala 91:22]
  wire [1:0] _T_153; // @[Shift.scala 92:77]
  wire [7:0] _T_154; // @[Shift.scala 90:30]
  wire [1:0] _T_155; // @[Shift.scala 90:48]
  wire  _T_156; // @[Shift.scala 90:57]
  wire [7:0] _GEN_4; // @[Shift.scala 90:39]
  wire [7:0] _T_157; // @[Shift.scala 90:39]
  wire  _T_158; // @[Shift.scala 12:21]
  wire  _T_159; // @[Shift.scala 12:21]
  wire [1:0] _T_161; // @[Bitwise.scala 71:12]
  wire [9:0] _T_162; // @[Cat.scala 29:58]
  wire [9:0] _T_163; // @[Shift.scala 91:22]
  wire  _T_164; // @[Shift.scala 92:77]
  wire [8:0] _T_165; // @[Shift.scala 90:30]
  wire  _T_166; // @[Shift.scala 90:48]
  wire [8:0] _GEN_5; // @[Shift.scala 90:39]
  wire [8:0] _T_168; // @[Shift.scala 90:39]
  wire  _T_170; // @[Shift.scala 12:21]
  wire [9:0] _T_171; // @[Cat.scala 29:58]
  wire [9:0] _T_172; // @[Shift.scala 91:22]
  wire [9:0] _T_175; // @[Bitwise.scala 71:12]
  wire [9:0] _T_176; // @[Shift.scala 39:10]
  wire  _T_177; // @[convert.scala 55:31]
  wire  _T_178; // @[convert.scala 56:31]
  wire  _T_179; // @[convert.scala 57:31]
  wire  _T_180; // @[convert.scala 58:31]
  wire [6:0] _T_181; // @[convert.scala 59:69]
  wire  _T_182; // @[convert.scala 59:81]
  wire  _T_183; // @[convert.scala 59:50]
  wire  _T_185; // @[convert.scala 60:81]
  wire  _T_186; // @[convert.scala 61:44]
  wire  _T_187; // @[convert.scala 61:52]
  wire  _T_188; // @[convert.scala 61:36]
  wire  _T_189; // @[convert.scala 62:63]
  wire  _T_190; // @[convert.scala 62:103]
  wire  _T_191; // @[convert.scala 62:60]
  wire [6:0] _GEN_6; // @[convert.scala 63:56]
  wire [6:0] _T_194; // @[convert.scala 63:56]
  wire [7:0] _T_195; // @[Cat.scala 29:58]
  wire [7:0] _T_197; // @[Mux.scala 87:16]
  assign _T = io_signSumSig[10:1]; // @[Post_Adder.scala 26:34]
  assign _T_1 = io_signSumSig[9:0]; // @[Post_Adder.scala 26:72]
  assign sumXor = _T ^ _T_1; // @[Post_Adder.scala 26:52]
  assign _T_2 = sumXor[9:2]; // @[LZD.scala 43:32]
  assign _T_3 = _T_2[7:4]; // @[LZD.scala 43:32]
  assign _T_4 = _T_3[3:2]; // @[LZD.scala 43:32]
  assign _T_5 = _T_4 != 2'h0; // @[LZD.scala 39:14]
  assign _T_6 = _T_4[1]; // @[LZD.scala 39:21]
  assign _T_7 = _T_4[0]; // @[LZD.scala 39:30]
  assign _T_8 = ~ _T_7; // @[LZD.scala 39:27]
  assign _T_9 = _T_6 | _T_8; // @[LZD.scala 39:25]
  assign _T_10 = {_T_5,_T_9}; // @[Cat.scala 29:58]
  assign _T_11 = _T_3[1:0]; // @[LZD.scala 44:32]
  assign _T_12 = _T_11 != 2'h0; // @[LZD.scala 39:14]
  assign _T_13 = _T_11[1]; // @[LZD.scala 39:21]
  assign _T_14 = _T_11[0]; // @[LZD.scala 39:30]
  assign _T_15 = ~ _T_14; // @[LZD.scala 39:27]
  assign _T_16 = _T_13 | _T_15; // @[LZD.scala 39:25]
  assign _T_17 = {_T_12,_T_16}; // @[Cat.scala 29:58]
  assign _T_18 = _T_10[1]; // @[Shift.scala 12:21]
  assign _T_19 = _T_17[1]; // @[Shift.scala 12:21]
  assign _T_20 = _T_18 | _T_19; // @[LZD.scala 49:16]
  assign _T_21 = ~ _T_19; // @[LZD.scala 49:27]
  assign _T_22 = _T_18 | _T_21; // @[LZD.scala 49:25]
  assign _T_23 = _T_10[0:0]; // @[LZD.scala 49:47]
  assign _T_24 = _T_17[0:0]; // @[LZD.scala 49:59]
  assign _T_25 = _T_18 ? _T_23 : _T_24; // @[LZD.scala 49:35]
  assign _T_27 = {_T_20,_T_22,_T_25}; // @[Cat.scala 29:58]
  assign _T_28 = _T_2[3:0]; // @[LZD.scala 44:32]
  assign _T_29 = _T_28[3:2]; // @[LZD.scala 43:32]
  assign _T_30 = _T_29 != 2'h0; // @[LZD.scala 39:14]
  assign _T_31 = _T_29[1]; // @[LZD.scala 39:21]
  assign _T_32 = _T_29[0]; // @[LZD.scala 39:30]
  assign _T_33 = ~ _T_32; // @[LZD.scala 39:27]
  assign _T_34 = _T_31 | _T_33; // @[LZD.scala 39:25]
  assign _T_35 = {_T_30,_T_34}; // @[Cat.scala 29:58]
  assign _T_36 = _T_28[1:0]; // @[LZD.scala 44:32]
  assign _T_37 = _T_36 != 2'h0; // @[LZD.scala 39:14]
  assign _T_38 = _T_36[1]; // @[LZD.scala 39:21]
  assign _T_39 = _T_36[0]; // @[LZD.scala 39:30]
  assign _T_40 = ~ _T_39; // @[LZD.scala 39:27]
  assign _T_41 = _T_38 | _T_40; // @[LZD.scala 39:25]
  assign _T_42 = {_T_37,_T_41}; // @[Cat.scala 29:58]
  assign _T_43 = _T_35[1]; // @[Shift.scala 12:21]
  assign _T_44 = _T_42[1]; // @[Shift.scala 12:21]
  assign _T_45 = _T_43 | _T_44; // @[LZD.scala 49:16]
  assign _T_46 = ~ _T_44; // @[LZD.scala 49:27]
  assign _T_47 = _T_43 | _T_46; // @[LZD.scala 49:25]
  assign _T_48 = _T_35[0:0]; // @[LZD.scala 49:47]
  assign _T_49 = _T_42[0:0]; // @[LZD.scala 49:59]
  assign _T_50 = _T_43 ? _T_48 : _T_49; // @[LZD.scala 49:35]
  assign _T_52 = {_T_45,_T_47,_T_50}; // @[Cat.scala 29:58]
  assign _T_53 = _T_27[2]; // @[Shift.scala 12:21]
  assign _T_54 = _T_52[2]; // @[Shift.scala 12:21]
  assign _T_55 = _T_53 | _T_54; // @[LZD.scala 49:16]
  assign _T_56 = ~ _T_54; // @[LZD.scala 49:27]
  assign _T_57 = _T_53 | _T_56; // @[LZD.scala 49:25]
  assign _T_58 = _T_27[1:0]; // @[LZD.scala 49:47]
  assign _T_59 = _T_52[1:0]; // @[LZD.scala 49:59]
  assign _T_60 = _T_53 ? _T_58 : _T_59; // @[LZD.scala 49:35]
  assign _T_62 = {_T_55,_T_57,_T_60}; // @[Cat.scala 29:58]
  assign _T_63 = sumXor[1:0]; // @[LZD.scala 44:32]
  assign _T_64 = _T_63 != 2'h0; // @[LZD.scala 39:14]
  assign _T_65 = _T_63[1]; // @[LZD.scala 39:21]
  assign _T_66 = _T_63[0]; // @[LZD.scala 39:30]
  assign _T_67 = ~ _T_66; // @[LZD.scala 39:27]
  assign _T_68 = _T_65 | _T_67; // @[LZD.scala 39:25]
  assign _T_70 = _T_62[3]; // @[Shift.scala 12:21]
  assign _T_72 = {1'h1,_T_64,_T_68}; // @[Cat.scala 29:58]
  assign _T_73 = _T_62[2:0]; // @[LZD.scala 55:32]
  assign _T_74 = _T_70 ? _T_73 : _T_72; // @[LZD.scala 55:20]
  assign sumLZD = {_T_70,_T_74}; // @[Cat.scala 29:58]
  assign _T_75 = {1'h1,_T_70,_T_74}; // @[Cat.scala 29:58]
  assign _T_76 = $signed(_T_75); // @[Post_Adder.scala 28:37]
  assign _T_78 = $signed(_T_76) + $signed(5'sh2); // @[Post_Adder.scala 28:44]
  assign scaleBias = $signed(_T_78); // @[Post_Adder.scala 28:44]
  assign _GEN_0 = {{1{io_greaterExp[3]}},io_greaterExp}; // @[Post_Adder.scala 29:35]
  assign sumScale = $signed(_GEN_0) + $signed(scaleBias); // @[Post_Adder.scala 29:35]
  assign normalShift = ~ sumLZD; // @[Post_Adder.scala 31:22]
  assign _T_80 = io_signSumSig[8:0]; // @[Post_Adder.scala 32:39]
  assign _T_81 = normalShift < 4'h9; // @[Shift.scala 16:24]
  assign _T_83 = normalShift[3]; // @[Shift.scala 12:21]
  assign _T_84 = _T_80[0:0]; // @[Shift.scala 64:52]
  assign _T_86 = {_T_84,8'h0}; // @[Cat.scala 29:58]
  assign _T_87 = _T_83 ? _T_86 : _T_80; // @[Shift.scala 64:27]
  assign _T_88 = normalShift[2:0]; // @[Shift.scala 66:70]
  assign _T_89 = _T_88[2]; // @[Shift.scala 12:21]
  assign _T_90 = _T_87[4:0]; // @[Shift.scala 64:52]
  assign _T_92 = {_T_90,4'h0}; // @[Cat.scala 29:58]
  assign _T_93 = _T_89 ? _T_92 : _T_87; // @[Shift.scala 64:27]
  assign _T_94 = _T_88[1:0]; // @[Shift.scala 66:70]
  assign _T_95 = _T_94[1]; // @[Shift.scala 12:21]
  assign _T_96 = _T_93[6:0]; // @[Shift.scala 64:52]
  assign _T_98 = {_T_96,2'h0}; // @[Cat.scala 29:58]
  assign _T_99 = _T_95 ? _T_98 : _T_93; // @[Shift.scala 64:27]
  assign _T_100 = _T_94[0:0]; // @[Shift.scala 66:70]
  assign _T_102 = _T_99[7:0]; // @[Shift.scala 64:52]
  assign _T_103 = {_T_102,1'h0}; // @[Cat.scala 29:58]
  assign _T_104 = _T_100 ? _T_103 : _T_99; // @[Shift.scala 64:27]
  assign shiftSig = _T_81 ? _T_104 : 9'h0; // @[Shift.scala 16:10]
  assign _T_105 = io_overflow ? $signed(6'sh6) : $signed(sumScale); // @[Post_Adder.scala 44:24]
  assign decS_fraction = shiftSig[8:4]; // @[Post_Adder.scala 45:34]
  assign decS_isNaR = io_AisNar | io_BisNar; // @[Post_Adder.scala 46:31]
  assign _T_108 = io_signSumSig != 11'h0; // @[Post_Adder.scala 47:36]
  assign _T_109 = ~ _T_108; // @[Post_Adder.scala 47:21]
  assign _T_110 = io_AisZero & io_BisZero; // @[Post_Adder.scala 47:54]
  assign decS_isZero = _T_109 | _T_110; // @[Post_Adder.scala 47:40]
  assign _T_112 = shiftSig[3:2]; // @[Post_Adder.scala 48:33]
  assign _T_113 = shiftSig[1]; // @[Post_Adder.scala 48:49]
  assign _T_114 = shiftSig[0]; // @[Post_Adder.scala 48:63]
  assign _T_115 = _T_113 | _T_114; // @[Post_Adder.scala 48:53]
  assign _GEN_1 = _T_105[3:0]; // @[Post_Adder.scala 41:24 Post_Adder.scala 44:18]
  assign decS_scale = $signed(_GEN_1); // @[Post_Adder.scala 41:24 Post_Adder.scala 44:18]
  assign _T_119 = decS_scale[3:3]; // @[convert.scala 49:36]
  assign _T_121 = ~ decS_scale; // @[convert.scala 50:36]
  assign _T_122 = $signed(_T_121); // @[convert.scala 50:36]
  assign _T_123 = _T_119 ? $signed(_T_122) : $signed(decS_scale); // @[convert.scala 50:28]
  assign _T_124 = _T_119 ^ io_sumSign; // @[convert.scala 51:31]
  assign _T_125 = ~ _T_124; // @[convert.scala 53:34]
  assign _T_128 = {_T_125,_T_124,decS_fraction,_T_112,_T_115}; // @[Cat.scala 29:58]
  assign _T_129 = $unsigned(_T_123); // @[Shift.scala 39:17]
  assign _T_130 = _T_129 < 4'ha; // @[Shift.scala 39:24]
  assign _T_132 = _T_128[9:8]; // @[Shift.scala 90:30]
  assign _T_133 = _T_128[7:0]; // @[Shift.scala 90:48]
  assign _T_134 = _T_133 != 8'h0; // @[Shift.scala 90:57]
  assign _GEN_2 = {{1'd0}, _T_134}; // @[Shift.scala 90:39]
  assign _T_135 = _T_132 | _GEN_2; // @[Shift.scala 90:39]
  assign _T_136 = _T_129[3]; // @[Shift.scala 12:21]
  assign _T_137 = _T_128[9]; // @[Shift.scala 12:21]
  assign _T_139 = _T_137 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12]
  assign _T_140 = {_T_139,_T_135}; // @[Cat.scala 29:58]
  assign _T_141 = _T_136 ? _T_140 : _T_128; // @[Shift.scala 91:22]
  assign _T_142 = _T_129[2:0]; // @[Shift.scala 92:77]
  assign _T_143 = _T_141[9:4]; // @[Shift.scala 90:30]
  assign _T_144 = _T_141[3:0]; // @[Shift.scala 90:48]
  assign _T_145 = _T_144 != 4'h0; // @[Shift.scala 90:57]
  assign _GEN_3 = {{5'd0}, _T_145}; // @[Shift.scala 90:39]
  assign _T_146 = _T_143 | _GEN_3; // @[Shift.scala 90:39]
  assign _T_147 = _T_142[2]; // @[Shift.scala 12:21]
  assign _T_148 = _T_141[9]; // @[Shift.scala 12:21]
  assign _T_150 = _T_148 ? 4'hf : 4'h0; // @[Bitwise.scala 71:12]
  assign _T_151 = {_T_150,_T_146}; // @[Cat.scala 29:58]
  assign _T_152 = _T_147 ? _T_151 : _T_141; // @[Shift.scala 91:22]
  assign _T_153 = _T_142[1:0]; // @[Shift.scala 92:77]
  assign _T_154 = _T_152[9:2]; // @[Shift.scala 90:30]
  assign _T_155 = _T_152[1:0]; // @[Shift.scala 90:48]
  assign _T_156 = _T_155 != 2'h0; // @[Shift.scala 90:57]
  assign _GEN_4 = {{7'd0}, _T_156}; // @[Shift.scala 90:39]
  assign _T_157 = _T_154 | _GEN_4; // @[Shift.scala 90:39]
  assign _T_158 = _T_153[1]; // @[Shift.scala 12:21]
  assign _T_159 = _T_152[9]; // @[Shift.scala 12:21]
  assign _T_161 = _T_159 ? 2'h3 : 2'h0; // @[Bitwise.scala 71:12]
  assign _T_162 = {_T_161,_T_157}; // @[Cat.scala 29:58]
  assign _T_163 = _T_158 ? _T_162 : _T_152; // @[Shift.scala 91:22]
  assign _T_164 = _T_153[0:0]; // @[Shift.scala 92:77]
  assign _T_165 = _T_163[9:1]; // @[Shift.scala 90:30]
  assign _T_166 = _T_163[0:0]; // @[Shift.scala 90:48]
  assign _GEN_5 = {{8'd0}, _T_166}; // @[Shift.scala 90:39]
  assign _T_168 = _T_165 | _GEN_5; // @[Shift.scala 90:39]
  assign _T_170 = _T_163[9]; // @[Shift.scala 12:21]
  assign _T_171 = {_T_170,_T_168}; // @[Cat.scala 29:58]
  assign _T_172 = _T_164 ? _T_171 : _T_163; // @[Shift.scala 91:22]
  assign _T_175 = _T_137 ? 10'h3ff : 10'h0; // @[Bitwise.scala 71:12]
  assign _T_176 = _T_130 ? _T_172 : _T_175; // @[Shift.scala 39:10]
  assign _T_177 = _T_176[3]; // @[convert.scala 55:31]
  assign _T_178 = _T_176[2]; // @[convert.scala 56:31]
  assign _T_179 = _T_176[1]; // @[convert.scala 57:31]
  assign _T_180 = _T_176[0]; // @[convert.scala 58:31]
  assign _T_181 = _T_176[9:3]; // @[convert.scala 59:69]
  assign _T_182 = _T_181 != 7'h0; // @[convert.scala 59:81]
  assign _T_183 = ~ _T_182; // @[convert.scala 59:50]
  assign _T_185 = _T_181 == 7'h7f; // @[convert.scala 60:81]
  assign _T_186 = _T_177 | _T_179; // @[convert.scala 61:44]
  assign _T_187 = _T_186 | _T_180; // @[convert.scala 61:52]
  assign _T_188 = _T_178 & _T_187; // @[convert.scala 61:36]
  assign _T_189 = ~ _T_185; // @[convert.scala 62:63]
  assign _T_190 = _T_189 & _T_188; // @[convert.scala 62:103]
  assign _T_191 = _T_183 | _T_190; // @[convert.scala 62:60]
  assign _GEN_6 = {{6'd0}, _T_191}; // @[convert.scala 63:56]
  assign _T_194 = _T_181 + _GEN_6; // @[convert.scala 63:56]
  assign _T_195 = {io_sumSign,_T_194}; // @[Cat.scala 29:58]
  assign _T_197 = decS_isZero ? 8'h0 : _T_195; // @[Mux.scala 87:16]
  assign io_overflow = $signed(sumScale) > $signed(6'sh6); // @[Post_Adder.scala 30:18]
  assign io_S = decS_isNaR ? 8'h80 : _T_197; // @[Post_Adder.scala 49:7]
endmodule
