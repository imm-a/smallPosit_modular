module FMA_Dec8_3(
  input        clock,
  input        reset,
  input  [7:0] io_A,
  input  [7:0] io_B,
  input  [7:0] io_C,
  output [3:0] io_sigA,
  output [3:0] io_sigB,
  output       io_outIsNaR,
  output       io_Csign,
  output       io_CisNar,
  output       io_CisZero,
  output [1:0] io_Cfrac,
  output [6:0] io_Ascale,
  output [6:0] io_Bscale,
  output [6:0] io_Cscale
);
  wire [8:0] _T_2; // @[FMA_Dec.scala 38:46]
  wire [7:0] realA; // @[FMA_Dec.scala 38:46]
  wire [8:0] _T_5; // @[FMA_Dec.scala 39:46]
  wire [7:0] realC; // @[FMA_Dec.scala 39:46]
  wire  _T_7; // @[convert.scala 18:24]
  wire  _T_8; // @[convert.scala 18:40]
  wire  _T_9; // @[convert.scala 18:36]
  wire [5:0] _T_10; // @[convert.scala 19:24]
  wire [5:0] _T_11; // @[convert.scala 19:43]
  wire [5:0] _T_12; // @[convert.scala 19:39]
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
  wire [1:0] _T_38; // @[LZD.scala 44:32]
  wire  _T_39; // @[LZD.scala 39:14]
  wire  _T_40; // @[LZD.scala 39:21]
  wire  _T_41; // @[LZD.scala 39:30]
  wire  _T_42; // @[LZD.scala 39:27]
  wire  _T_43; // @[LZD.scala 39:25]
  wire [1:0] _T_44; // @[Cat.scala 29:58]
  wire  _T_45; // @[Shift.scala 12:21]
  wire [1:0] _T_47; // @[LZD.scala 55:32]
  wire [1:0] _T_48; // @[LZD.scala 55:20]
  wire [2:0] _T_49; // @[Cat.scala 29:58]
  wire [2:0] _T_50; // @[convert.scala 21:22]
  wire [4:0] _T_51; // @[convert.scala 22:36]
  wire  _T_52; // @[Shift.scala 16:24]
  wire  _T_54; // @[Shift.scala 12:21]
  wire  _T_55; // @[Shift.scala 64:52]
  wire [4:0] _T_57; // @[Cat.scala 29:58]
  wire [4:0] _T_58; // @[Shift.scala 64:27]
  wire [1:0] _T_59; // @[Shift.scala 66:70]
  wire  _T_60; // @[Shift.scala 12:21]
  wire [2:0] _T_61; // @[Shift.scala 64:52]
  wire [4:0] _T_63; // @[Cat.scala 29:58]
  wire [4:0] _T_64; // @[Shift.scala 64:27]
  wire  _T_65; // @[Shift.scala 66:70]
  wire [3:0] _T_67; // @[Shift.scala 64:52]
  wire [4:0] _T_68; // @[Cat.scala 29:58]
  wire [4:0] _T_69; // @[Shift.scala 64:27]
  wire [4:0] _T_70; // @[Shift.scala 16:10]
  wire [2:0] _T_71; // @[convert.scala 23:34]
  wire [1:0] decA_fraction; // @[convert.scala 24:34]
  wire  _T_73; // @[convert.scala 25:26]
  wire [2:0] _T_75; // @[convert.scala 25:42]
  wire [2:0] _T_78; // @[convert.scala 26:67]
  wire [2:0] _T_79; // @[convert.scala 26:51]
  wire [6:0] _T_80; // @[Cat.scala 29:58]
  wire [6:0] _T_82; // @[convert.scala 29:56]
  wire  _T_83; // @[convert.scala 29:60]
  wire  _T_84; // @[convert.scala 29:41]
  wire  decA_isNaR; // @[convert.scala 29:39]
  wire  _T_87; // @[convert.scala 30:19]
  wire  decA_isZero; // @[convert.scala 30:41]
  wire  _T_96; // @[convert.scala 18:24]
  wire  _T_97; // @[convert.scala 18:40]
  wire  _T_98; // @[convert.scala 18:36]
  wire [5:0] _T_99; // @[convert.scala 19:24]
  wire [5:0] _T_100; // @[convert.scala 19:43]
  wire [5:0] _T_101; // @[convert.scala 19:39]
  wire [3:0] _T_102; // @[LZD.scala 43:32]
  wire [1:0] _T_103; // @[LZD.scala 43:32]
  wire  _T_104; // @[LZD.scala 39:14]
  wire  _T_105; // @[LZD.scala 39:21]
  wire  _T_106; // @[LZD.scala 39:30]
  wire  _T_107; // @[LZD.scala 39:27]
  wire  _T_108; // @[LZD.scala 39:25]
  wire [1:0] _T_109; // @[Cat.scala 29:58]
  wire [1:0] _T_110; // @[LZD.scala 44:32]
  wire  _T_111; // @[LZD.scala 39:14]
  wire  _T_112; // @[LZD.scala 39:21]
  wire  _T_113; // @[LZD.scala 39:30]
  wire  _T_114; // @[LZD.scala 39:27]
  wire  _T_115; // @[LZD.scala 39:25]
  wire [1:0] _T_116; // @[Cat.scala 29:58]
  wire  _T_117; // @[Shift.scala 12:21]
  wire  _T_118; // @[Shift.scala 12:21]
  wire  _T_119; // @[LZD.scala 49:16]
  wire  _T_120; // @[LZD.scala 49:27]
  wire  _T_121; // @[LZD.scala 49:25]
  wire  _T_122; // @[LZD.scala 49:47]
  wire  _T_123; // @[LZD.scala 49:59]
  wire  _T_124; // @[LZD.scala 49:35]
  wire [2:0] _T_126; // @[Cat.scala 29:58]
  wire [1:0] _T_127; // @[LZD.scala 44:32]
  wire  _T_128; // @[LZD.scala 39:14]
  wire  _T_129; // @[LZD.scala 39:21]
  wire  _T_130; // @[LZD.scala 39:30]
  wire  _T_131; // @[LZD.scala 39:27]
  wire  _T_132; // @[LZD.scala 39:25]
  wire [1:0] _T_133; // @[Cat.scala 29:58]
  wire  _T_134; // @[Shift.scala 12:21]
  wire [1:0] _T_136; // @[LZD.scala 55:32]
  wire [1:0] _T_137; // @[LZD.scala 55:20]
  wire [2:0] _T_138; // @[Cat.scala 29:58]
  wire [2:0] _T_139; // @[convert.scala 21:22]
  wire [4:0] _T_140; // @[convert.scala 22:36]
  wire  _T_141; // @[Shift.scala 16:24]
  wire  _T_143; // @[Shift.scala 12:21]
  wire  _T_144; // @[Shift.scala 64:52]
  wire [4:0] _T_146; // @[Cat.scala 29:58]
  wire [4:0] _T_147; // @[Shift.scala 64:27]
  wire [1:0] _T_148; // @[Shift.scala 66:70]
  wire  _T_149; // @[Shift.scala 12:21]
  wire [2:0] _T_150; // @[Shift.scala 64:52]
  wire [4:0] _T_152; // @[Cat.scala 29:58]
  wire [4:0] _T_153; // @[Shift.scala 64:27]
  wire  _T_154; // @[Shift.scala 66:70]
  wire [3:0] _T_156; // @[Shift.scala 64:52]
  wire [4:0] _T_157; // @[Cat.scala 29:58]
  wire [4:0] _T_158; // @[Shift.scala 64:27]
  wire [4:0] _T_159; // @[Shift.scala 16:10]
  wire [2:0] _T_160; // @[convert.scala 23:34]
  wire [1:0] decB_fraction; // @[convert.scala 24:34]
  wire  _T_162; // @[convert.scala 25:26]
  wire [2:0] _T_164; // @[convert.scala 25:42]
  wire [2:0] _T_167; // @[convert.scala 26:67]
  wire [2:0] _T_168; // @[convert.scala 26:51]
  wire [6:0] _T_169; // @[Cat.scala 29:58]
  wire [6:0] _T_171; // @[convert.scala 29:56]
  wire  _T_172; // @[convert.scala 29:60]
  wire  _T_173; // @[convert.scala 29:41]
  wire  decB_isNaR; // @[convert.scala 29:39]
  wire  _T_176; // @[convert.scala 30:19]
  wire  decB_isZero; // @[convert.scala 30:41]
  wire  _T_185; // @[convert.scala 18:24]
  wire  _T_186; // @[convert.scala 18:40]
  wire  _T_187; // @[convert.scala 18:36]
  wire [5:0] _T_188; // @[convert.scala 19:24]
  wire [5:0] _T_189; // @[convert.scala 19:43]
  wire [5:0] _T_190; // @[convert.scala 19:39]
  wire [3:0] _T_191; // @[LZD.scala 43:32]
  wire [1:0] _T_192; // @[LZD.scala 43:32]
  wire  _T_193; // @[LZD.scala 39:14]
  wire  _T_194; // @[LZD.scala 39:21]
  wire  _T_195; // @[LZD.scala 39:30]
  wire  _T_196; // @[LZD.scala 39:27]
  wire  _T_197; // @[LZD.scala 39:25]
  wire [1:0] _T_198; // @[Cat.scala 29:58]
  wire [1:0] _T_199; // @[LZD.scala 44:32]
  wire  _T_200; // @[LZD.scala 39:14]
  wire  _T_201; // @[LZD.scala 39:21]
  wire  _T_202; // @[LZD.scala 39:30]
  wire  _T_203; // @[LZD.scala 39:27]
  wire  _T_204; // @[LZD.scala 39:25]
  wire [1:0] _T_205; // @[Cat.scala 29:58]
  wire  _T_206; // @[Shift.scala 12:21]
  wire  _T_207; // @[Shift.scala 12:21]
  wire  _T_208; // @[LZD.scala 49:16]
  wire  _T_209; // @[LZD.scala 49:27]
  wire  _T_210; // @[LZD.scala 49:25]
  wire  _T_211; // @[LZD.scala 49:47]
  wire  _T_212; // @[LZD.scala 49:59]
  wire  _T_213; // @[LZD.scala 49:35]
  wire [2:0] _T_215; // @[Cat.scala 29:58]
  wire [1:0] _T_216; // @[LZD.scala 44:32]
  wire  _T_217; // @[LZD.scala 39:14]
  wire  _T_218; // @[LZD.scala 39:21]
  wire  _T_219; // @[LZD.scala 39:30]
  wire  _T_220; // @[LZD.scala 39:27]
  wire  _T_221; // @[LZD.scala 39:25]
  wire [1:0] _T_222; // @[Cat.scala 29:58]
  wire  _T_223; // @[Shift.scala 12:21]
  wire [1:0] _T_225; // @[LZD.scala 55:32]
  wire [1:0] _T_226; // @[LZD.scala 55:20]
  wire [2:0] _T_227; // @[Cat.scala 29:58]
  wire [2:0] _T_228; // @[convert.scala 21:22]
  wire [4:0] _T_229; // @[convert.scala 22:36]
  wire  _T_230; // @[Shift.scala 16:24]
  wire  _T_232; // @[Shift.scala 12:21]
  wire  _T_233; // @[Shift.scala 64:52]
  wire [4:0] _T_235; // @[Cat.scala 29:58]
  wire [4:0] _T_236; // @[Shift.scala 64:27]
  wire [1:0] _T_237; // @[Shift.scala 66:70]
  wire  _T_238; // @[Shift.scala 12:21]
  wire [2:0] _T_239; // @[Shift.scala 64:52]
  wire [4:0] _T_241; // @[Cat.scala 29:58]
  wire [4:0] _T_242; // @[Shift.scala 64:27]
  wire  _T_243; // @[Shift.scala 66:70]
  wire [3:0] _T_245; // @[Shift.scala 64:52]
  wire [4:0] _T_246; // @[Cat.scala 29:58]
  wire [4:0] _T_247; // @[Shift.scala 64:27]
  wire [4:0] _T_248; // @[Shift.scala 16:10]
  wire [2:0] _T_249; // @[convert.scala 23:34]
  wire  _T_251; // @[convert.scala 25:26]
  wire [2:0] _T_253; // @[convert.scala 25:42]
  wire [2:0] _T_256; // @[convert.scala 26:67]
  wire [2:0] _T_257; // @[convert.scala 26:51]
  wire [6:0] _T_258; // @[Cat.scala 29:58]
  wire [6:0] _T_260; // @[convert.scala 29:56]
  wire  _T_261; // @[convert.scala 29:60]
  wire  _T_262; // @[convert.scala 29:41]
  wire  decC_isNaR; // @[convert.scala 29:39]
  wire  _T_265; // @[convert.scala 30:19]
  wire  _T_273; // @[FMA_Dec.scala 46:30]
  wire  _T_275; // @[FMA_Dec.scala 49:34]
  wire  _T_276; // @[FMA_Dec.scala 49:47]
  wire  _T_277; // @[FMA_Dec.scala 49:45]
  wire [3:0] _T_279; // @[Cat.scala 29:58]
  wire  _T_281; // @[FMA_Dec.scala 50:34]
  wire  _T_282; // @[FMA_Dec.scala 50:47]
  wire  _T_283; // @[FMA_Dec.scala 50:45]
  wire [3:0] _T_285; // @[Cat.scala 29:58]
  assign _T_2 = {{1'd0}, io_A}; // @[FMA_Dec.scala 38:46]
  assign realA = _T_2[7:0]; // @[FMA_Dec.scala 38:46]
  assign _T_5 = {{1'd0}, io_C}; // @[FMA_Dec.scala 39:46]
  assign realC = _T_5[7:0]; // @[FMA_Dec.scala 39:46]
  assign _T_7 = realA[7]; // @[convert.scala 18:24]
  assign _T_8 = realA[6]; // @[convert.scala 18:40]
  assign _T_9 = _T_7 ^ _T_8; // @[convert.scala 18:36]
  assign _T_10 = realA[6:1]; // @[convert.scala 19:24]
  assign _T_11 = realA[5:0]; // @[convert.scala 19:43]
  assign _T_12 = _T_10 ^ _T_11; // @[convert.scala 19:39]
  assign _T_13 = _T_12[5:2]; // @[LZD.scala 43:32]
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
  assign _T_38 = _T_12[1:0]; // @[LZD.scala 44:32]
  assign _T_39 = _T_38 != 2'h0; // @[LZD.scala 39:14]
  assign _T_40 = _T_38[1]; // @[LZD.scala 39:21]
  assign _T_41 = _T_38[0]; // @[LZD.scala 39:30]
  assign _T_42 = ~ _T_41; // @[LZD.scala 39:27]
  assign _T_43 = _T_40 | _T_42; // @[LZD.scala 39:25]
  assign _T_44 = {_T_39,_T_43}; // @[Cat.scala 29:58]
  assign _T_45 = _T_37[2]; // @[Shift.scala 12:21]
  assign _T_47 = _T_37[1:0]; // @[LZD.scala 55:32]
  assign _T_48 = _T_45 ? _T_47 : _T_44; // @[LZD.scala 55:20]
  assign _T_49 = {_T_45,_T_48}; // @[Cat.scala 29:58]
  assign _T_50 = ~ _T_49; // @[convert.scala 21:22]
  assign _T_51 = realA[4:0]; // @[convert.scala 22:36]
  assign _T_52 = _T_50 < 3'h5; // @[Shift.scala 16:24]
  assign _T_54 = _T_50[2]; // @[Shift.scala 12:21]
  assign _T_55 = _T_51[0:0]; // @[Shift.scala 64:52]
  assign _T_57 = {_T_55,4'h0}; // @[Cat.scala 29:58]
  assign _T_58 = _T_54 ? _T_57 : _T_51; // @[Shift.scala 64:27]
  assign _T_59 = _T_50[1:0]; // @[Shift.scala 66:70]
  assign _T_60 = _T_59[1]; // @[Shift.scala 12:21]
  assign _T_61 = _T_58[2:0]; // @[Shift.scala 64:52]
  assign _T_63 = {_T_61,2'h0}; // @[Cat.scala 29:58]
  assign _T_64 = _T_60 ? _T_63 : _T_58; // @[Shift.scala 64:27]
  assign _T_65 = _T_59[0:0]; // @[Shift.scala 66:70]
  assign _T_67 = _T_64[3:0]; // @[Shift.scala 64:52]
  assign _T_68 = {_T_67,1'h0}; // @[Cat.scala 29:58]
  assign _T_69 = _T_65 ? _T_68 : _T_64; // @[Shift.scala 64:27]
  assign _T_70 = _T_52 ? _T_69 : 5'h0; // @[Shift.scala 16:10]
  assign _T_71 = _T_70[4:2]; // @[convert.scala 23:34]
  assign decA_fraction = _T_70[1:0]; // @[convert.scala 24:34]
  assign _T_73 = _T_9 == 1'h0; // @[convert.scala 25:26]
  assign _T_75 = _T_9 ? _T_50 : _T_49; // @[convert.scala 25:42]
  assign _T_78 = ~ _T_71; // @[convert.scala 26:67]
  assign _T_79 = _T_7 ? _T_78 : _T_71; // @[convert.scala 26:51]
  assign _T_80 = {_T_73,_T_75,_T_79}; // @[Cat.scala 29:58]
  assign _T_82 = realA[6:0]; // @[convert.scala 29:56]
  assign _T_83 = _T_82 != 7'h0; // @[convert.scala 29:60]
  assign _T_84 = ~ _T_83; // @[convert.scala 29:41]
  assign decA_isNaR = _T_7 & _T_84; // @[convert.scala 29:39]
  assign _T_87 = _T_7 == 1'h0; // @[convert.scala 30:19]
  assign decA_isZero = _T_87 & _T_84; // @[convert.scala 30:41]
  assign _T_96 = io_B[7]; // @[convert.scala 18:24]
  assign _T_97 = io_B[6]; // @[convert.scala 18:40]
  assign _T_98 = _T_96 ^ _T_97; // @[convert.scala 18:36]
  assign _T_99 = io_B[6:1]; // @[convert.scala 19:24]
  assign _T_100 = io_B[5:0]; // @[convert.scala 19:43]
  assign _T_101 = _T_99 ^ _T_100; // @[convert.scala 19:39]
  assign _T_102 = _T_101[5:2]; // @[LZD.scala 43:32]
  assign _T_103 = _T_102[3:2]; // @[LZD.scala 43:32]
  assign _T_104 = _T_103 != 2'h0; // @[LZD.scala 39:14]
  assign _T_105 = _T_103[1]; // @[LZD.scala 39:21]
  assign _T_106 = _T_103[0]; // @[LZD.scala 39:30]
  assign _T_107 = ~ _T_106; // @[LZD.scala 39:27]
  assign _T_108 = _T_105 | _T_107; // @[LZD.scala 39:25]
  assign _T_109 = {_T_104,_T_108}; // @[Cat.scala 29:58]
  assign _T_110 = _T_102[1:0]; // @[LZD.scala 44:32]
  assign _T_111 = _T_110 != 2'h0; // @[LZD.scala 39:14]
  assign _T_112 = _T_110[1]; // @[LZD.scala 39:21]
  assign _T_113 = _T_110[0]; // @[LZD.scala 39:30]
  assign _T_114 = ~ _T_113; // @[LZD.scala 39:27]
  assign _T_115 = _T_112 | _T_114; // @[LZD.scala 39:25]
  assign _T_116 = {_T_111,_T_115}; // @[Cat.scala 29:58]
  assign _T_117 = _T_109[1]; // @[Shift.scala 12:21]
  assign _T_118 = _T_116[1]; // @[Shift.scala 12:21]
  assign _T_119 = _T_117 | _T_118; // @[LZD.scala 49:16]
  assign _T_120 = ~ _T_118; // @[LZD.scala 49:27]
  assign _T_121 = _T_117 | _T_120; // @[LZD.scala 49:25]
  assign _T_122 = _T_109[0:0]; // @[LZD.scala 49:47]
  assign _T_123 = _T_116[0:0]; // @[LZD.scala 49:59]
  assign _T_124 = _T_117 ? _T_122 : _T_123; // @[LZD.scala 49:35]
  assign _T_126 = {_T_119,_T_121,_T_124}; // @[Cat.scala 29:58]
  assign _T_127 = _T_101[1:0]; // @[LZD.scala 44:32]
  assign _T_128 = _T_127 != 2'h0; // @[LZD.scala 39:14]
  assign _T_129 = _T_127[1]; // @[LZD.scala 39:21]
  assign _T_130 = _T_127[0]; // @[LZD.scala 39:30]
  assign _T_131 = ~ _T_130; // @[LZD.scala 39:27]
  assign _T_132 = _T_129 | _T_131; // @[LZD.scala 39:25]
  assign _T_133 = {_T_128,_T_132}; // @[Cat.scala 29:58]
  assign _T_134 = _T_126[2]; // @[Shift.scala 12:21]
  assign _T_136 = _T_126[1:0]; // @[LZD.scala 55:32]
  assign _T_137 = _T_134 ? _T_136 : _T_133; // @[LZD.scala 55:20]
  assign _T_138 = {_T_134,_T_137}; // @[Cat.scala 29:58]
  assign _T_139 = ~ _T_138; // @[convert.scala 21:22]
  assign _T_140 = io_B[4:0]; // @[convert.scala 22:36]
  assign _T_141 = _T_139 < 3'h5; // @[Shift.scala 16:24]
  assign _T_143 = _T_139[2]; // @[Shift.scala 12:21]
  assign _T_144 = _T_140[0:0]; // @[Shift.scala 64:52]
  assign _T_146 = {_T_144,4'h0}; // @[Cat.scala 29:58]
  assign _T_147 = _T_143 ? _T_146 : _T_140; // @[Shift.scala 64:27]
  assign _T_148 = _T_139[1:0]; // @[Shift.scala 66:70]
  assign _T_149 = _T_148[1]; // @[Shift.scala 12:21]
  assign _T_150 = _T_147[2:0]; // @[Shift.scala 64:52]
  assign _T_152 = {_T_150,2'h0}; // @[Cat.scala 29:58]
  assign _T_153 = _T_149 ? _T_152 : _T_147; // @[Shift.scala 64:27]
  assign _T_154 = _T_148[0:0]; // @[Shift.scala 66:70]
  assign _T_156 = _T_153[3:0]; // @[Shift.scala 64:52]
  assign _T_157 = {_T_156,1'h0}; // @[Cat.scala 29:58]
  assign _T_158 = _T_154 ? _T_157 : _T_153; // @[Shift.scala 64:27]
  assign _T_159 = _T_141 ? _T_158 : 5'h0; // @[Shift.scala 16:10]
  assign _T_160 = _T_159[4:2]; // @[convert.scala 23:34]
  assign decB_fraction = _T_159[1:0]; // @[convert.scala 24:34]
  assign _T_162 = _T_98 == 1'h0; // @[convert.scala 25:26]
  assign _T_164 = _T_98 ? _T_139 : _T_138; // @[convert.scala 25:42]
  assign _T_167 = ~ _T_160; // @[convert.scala 26:67]
  assign _T_168 = _T_96 ? _T_167 : _T_160; // @[convert.scala 26:51]
  assign _T_169 = {_T_162,_T_164,_T_168}; // @[Cat.scala 29:58]
  assign _T_171 = io_B[6:0]; // @[convert.scala 29:56]
  assign _T_172 = _T_171 != 7'h0; // @[convert.scala 29:60]
  assign _T_173 = ~ _T_172; // @[convert.scala 29:41]
  assign decB_isNaR = _T_96 & _T_173; // @[convert.scala 29:39]
  assign _T_176 = _T_96 == 1'h0; // @[convert.scala 30:19]
  assign decB_isZero = _T_176 & _T_173; // @[convert.scala 30:41]
  assign _T_185 = realC[7]; // @[convert.scala 18:24]
  assign _T_186 = realC[6]; // @[convert.scala 18:40]
  assign _T_187 = _T_185 ^ _T_186; // @[convert.scala 18:36]
  assign _T_188 = realC[6:1]; // @[convert.scala 19:24]
  assign _T_189 = realC[5:0]; // @[convert.scala 19:43]
  assign _T_190 = _T_188 ^ _T_189; // @[convert.scala 19:39]
  assign _T_191 = _T_190[5:2]; // @[LZD.scala 43:32]
  assign _T_192 = _T_191[3:2]; // @[LZD.scala 43:32]
  assign _T_193 = _T_192 != 2'h0; // @[LZD.scala 39:14]
  assign _T_194 = _T_192[1]; // @[LZD.scala 39:21]
  assign _T_195 = _T_192[0]; // @[LZD.scala 39:30]
  assign _T_196 = ~ _T_195; // @[LZD.scala 39:27]
  assign _T_197 = _T_194 | _T_196; // @[LZD.scala 39:25]
  assign _T_198 = {_T_193,_T_197}; // @[Cat.scala 29:58]
  assign _T_199 = _T_191[1:0]; // @[LZD.scala 44:32]
  assign _T_200 = _T_199 != 2'h0; // @[LZD.scala 39:14]
  assign _T_201 = _T_199[1]; // @[LZD.scala 39:21]
  assign _T_202 = _T_199[0]; // @[LZD.scala 39:30]
  assign _T_203 = ~ _T_202; // @[LZD.scala 39:27]
  assign _T_204 = _T_201 | _T_203; // @[LZD.scala 39:25]
  assign _T_205 = {_T_200,_T_204}; // @[Cat.scala 29:58]
  assign _T_206 = _T_198[1]; // @[Shift.scala 12:21]
  assign _T_207 = _T_205[1]; // @[Shift.scala 12:21]
  assign _T_208 = _T_206 | _T_207; // @[LZD.scala 49:16]
  assign _T_209 = ~ _T_207; // @[LZD.scala 49:27]
  assign _T_210 = _T_206 | _T_209; // @[LZD.scala 49:25]
  assign _T_211 = _T_198[0:0]; // @[LZD.scala 49:47]
  assign _T_212 = _T_205[0:0]; // @[LZD.scala 49:59]
  assign _T_213 = _T_206 ? _T_211 : _T_212; // @[LZD.scala 49:35]
  assign _T_215 = {_T_208,_T_210,_T_213}; // @[Cat.scala 29:58]
  assign _T_216 = _T_190[1:0]; // @[LZD.scala 44:32]
  assign _T_217 = _T_216 != 2'h0; // @[LZD.scala 39:14]
  assign _T_218 = _T_216[1]; // @[LZD.scala 39:21]
  assign _T_219 = _T_216[0]; // @[LZD.scala 39:30]
  assign _T_220 = ~ _T_219; // @[LZD.scala 39:27]
  assign _T_221 = _T_218 | _T_220; // @[LZD.scala 39:25]
  assign _T_222 = {_T_217,_T_221}; // @[Cat.scala 29:58]
  assign _T_223 = _T_215[2]; // @[Shift.scala 12:21]
  assign _T_225 = _T_215[1:0]; // @[LZD.scala 55:32]
  assign _T_226 = _T_223 ? _T_225 : _T_222; // @[LZD.scala 55:20]
  assign _T_227 = {_T_223,_T_226}; // @[Cat.scala 29:58]
  assign _T_228 = ~ _T_227; // @[convert.scala 21:22]
  assign _T_229 = realC[4:0]; // @[convert.scala 22:36]
  assign _T_230 = _T_228 < 3'h5; // @[Shift.scala 16:24]
  assign _T_232 = _T_228[2]; // @[Shift.scala 12:21]
  assign _T_233 = _T_229[0:0]; // @[Shift.scala 64:52]
  assign _T_235 = {_T_233,4'h0}; // @[Cat.scala 29:58]
  assign _T_236 = _T_232 ? _T_235 : _T_229; // @[Shift.scala 64:27]
  assign _T_237 = _T_228[1:0]; // @[Shift.scala 66:70]
  assign _T_238 = _T_237[1]; // @[Shift.scala 12:21]
  assign _T_239 = _T_236[2:0]; // @[Shift.scala 64:52]
  assign _T_241 = {_T_239,2'h0}; // @[Cat.scala 29:58]
  assign _T_242 = _T_238 ? _T_241 : _T_236; // @[Shift.scala 64:27]
  assign _T_243 = _T_237[0:0]; // @[Shift.scala 66:70]
  assign _T_245 = _T_242[3:0]; // @[Shift.scala 64:52]
  assign _T_246 = {_T_245,1'h0}; // @[Cat.scala 29:58]
  assign _T_247 = _T_243 ? _T_246 : _T_242; // @[Shift.scala 64:27]
  assign _T_248 = _T_230 ? _T_247 : 5'h0; // @[Shift.scala 16:10]
  assign _T_249 = _T_248[4:2]; // @[convert.scala 23:34]
  assign _T_251 = _T_187 == 1'h0; // @[convert.scala 25:26]
  assign _T_253 = _T_187 ? _T_228 : _T_227; // @[convert.scala 25:42]
  assign _T_256 = ~ _T_249; // @[convert.scala 26:67]
  assign _T_257 = _T_185 ? _T_256 : _T_249; // @[convert.scala 26:51]
  assign _T_258 = {_T_251,_T_253,_T_257}; // @[Cat.scala 29:58]
  assign _T_260 = realC[6:0]; // @[convert.scala 29:56]
  assign _T_261 = _T_260 != 7'h0; // @[convert.scala 29:60]
  assign _T_262 = ~ _T_261; // @[convert.scala 29:41]
  assign decC_isNaR = _T_185 & _T_262; // @[convert.scala 29:39]
  assign _T_265 = _T_185 == 1'h0; // @[convert.scala 30:19]
  assign _T_273 = decA_isNaR | decB_isNaR; // @[FMA_Dec.scala 46:30]
  assign _T_275 = ~ _T_7; // @[FMA_Dec.scala 49:34]
  assign _T_276 = ~ decA_isZero; // @[FMA_Dec.scala 49:47]
  assign _T_277 = _T_275 & _T_276; // @[FMA_Dec.scala 49:45]
  assign _T_279 = {_T_7,_T_277,decA_fraction}; // @[Cat.scala 29:58]
  assign _T_281 = ~ _T_96; // @[FMA_Dec.scala 50:34]
  assign _T_282 = ~ decB_isZero; // @[FMA_Dec.scala 50:47]
  assign _T_283 = _T_281 & _T_282; // @[FMA_Dec.scala 50:45]
  assign _T_285 = {_T_96,_T_283,decB_fraction}; // @[Cat.scala 29:58]
  assign io_sigA = $signed(_T_279); // @[FMA_Dec.scala 49:16]
  assign io_sigB = $signed(_T_285); // @[FMA_Dec.scala 50:16]
  assign io_outIsNaR = _T_273 | decC_isNaR; // @[FMA_Dec.scala 46:16]
  assign io_Csign = realC[7]; // @[FMA_Dec.scala 55:12]
  assign io_CisNar = _T_185 & _T_262; // @[FMA_Dec.scala 51:17]
  assign io_CisZero = _T_265 & _T_262; // @[FMA_Dec.scala 52:17]
  assign io_Cfrac = _T_248[1:0]; // @[FMA_Dec.scala 53:17]
  assign io_Ascale = $signed(_T_80); // @[FMA_Dec.scala 47:13]
  assign io_Bscale = $signed(_T_169); // @[FMA_Dec.scala 48:13]
  assign io_Cscale = $signed(_T_258); // @[FMA_Dec.scala 54:16]
endmodule
