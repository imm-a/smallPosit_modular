module PositFMA4_0(
  input        clock,
  input        reset,
  input        io_inValid,
  input  [1:0] io_fmaOp,
  input  [3:0] io_A,
  input  [3:0] io_B,
  input  [3:0] io_C,
  output [3:0] io_F,
  output       io_outValid
);
  wire  _T; // @[PositFMA.scala 47:36]
  wire [3:0] _T_2; // @[Bitwise.scala 71:12]
  wire [3:0] _T_3; // @[PositFMA.scala 47:41]
  wire [3:0] _GEN_10; // @[PositFMA.scala 47:49]
  wire [3:0] realA; // @[PositFMA.scala 47:49]
  wire  _T_6; // @[PositFMA.scala 48:36]
  wire [3:0] _T_8; // @[Bitwise.scala 71:12]
  wire [3:0] _T_9; // @[PositFMA.scala 48:41]
  wire [3:0] _GEN_11; // @[PositFMA.scala 48:49]
  wire [3:0] realC; // @[PositFMA.scala 48:49]
  wire  _T_13; // @[convert.scala 18:24]
  wire  _T_14; // @[convert.scala 18:40]
  wire  _T_15; // @[convert.scala 18:36]
  wire [1:0] _T_16; // @[convert.scala 19:24]
  wire [1:0] _T_17; // @[convert.scala 19:43]
  wire [1:0] _T_18; // @[convert.scala 19:39]
  wire  _T_19; // @[LZD.scala 39:14]
  wire  _T_20; // @[LZD.scala 39:21]
  wire  _T_21; // @[LZD.scala 39:30]
  wire  _T_22; // @[LZD.scala 39:27]
  wire  _T_23; // @[LZD.scala 39:25]
  wire [1:0] _T_24; // @[Cat.scala 29:58]
  wire [1:0] _T_25; // @[convert.scala 21:22]
  wire  _T_26; // @[convert.scala 22:36]
  wire  _T_27; // @[Shift.scala 16:24]
  wire  _T_28; // @[Shift.scala 17:37]
  wire  _T_30; // @[Shift.scala 63:39]
  wire  decA_fraction; // @[Shift.scala 16:10]
  wire  _T_34; // @[convert.scala 25:26]
  wire [1:0] _T_36; // @[convert.scala 25:42]
  wire [2:0] _T_37; // @[Cat.scala 29:58]
  wire [2:0] _T_39; // @[convert.scala 29:56]
  wire  _T_40; // @[convert.scala 29:60]
  wire  _T_41; // @[convert.scala 29:41]
  wire  decA_isNaR; // @[convert.scala 29:39]
  wire  _T_44; // @[convert.scala 30:19]
  wire  decA_isZero; // @[convert.scala 30:41]
  wire [2:0] decA_scale; // @[convert.scala 32:24]
  wire  _T_53; // @[convert.scala 18:24]
  wire  _T_54; // @[convert.scala 18:40]
  wire  _T_55; // @[convert.scala 18:36]
  wire [1:0] _T_56; // @[convert.scala 19:24]
  wire [1:0] _T_57; // @[convert.scala 19:43]
  wire [1:0] _T_58; // @[convert.scala 19:39]
  wire  _T_59; // @[LZD.scala 39:14]
  wire  _T_60; // @[LZD.scala 39:21]
  wire  _T_61; // @[LZD.scala 39:30]
  wire  _T_62; // @[LZD.scala 39:27]
  wire  _T_63; // @[LZD.scala 39:25]
  wire [1:0] _T_64; // @[Cat.scala 29:58]
  wire [1:0] _T_65; // @[convert.scala 21:22]
  wire  _T_66; // @[convert.scala 22:36]
  wire  _T_67; // @[Shift.scala 16:24]
  wire  _T_68; // @[Shift.scala 17:37]
  wire  _T_70; // @[Shift.scala 63:39]
  wire  decB_fraction; // @[Shift.scala 16:10]
  wire  _T_74; // @[convert.scala 25:26]
  wire [1:0] _T_76; // @[convert.scala 25:42]
  wire [2:0] _T_77; // @[Cat.scala 29:58]
  wire [2:0] _T_79; // @[convert.scala 29:56]
  wire  _T_80; // @[convert.scala 29:60]
  wire  _T_81; // @[convert.scala 29:41]
  wire  decB_isNaR; // @[convert.scala 29:39]
  wire  _T_84; // @[convert.scala 30:19]
  wire  decB_isZero; // @[convert.scala 30:41]
  wire [2:0] decB_scale; // @[convert.scala 32:24]
  wire  _T_93; // @[convert.scala 18:24]
  wire  _T_94; // @[convert.scala 18:40]
  wire  _T_95; // @[convert.scala 18:36]
  wire [1:0] _T_96; // @[convert.scala 19:24]
  wire [1:0] _T_97; // @[convert.scala 19:43]
  wire [1:0] _T_98; // @[convert.scala 19:39]
  wire  _T_99; // @[LZD.scala 39:14]
  wire  _T_100; // @[LZD.scala 39:21]
  wire  _T_101; // @[LZD.scala 39:30]
  wire  _T_102; // @[LZD.scala 39:27]
  wire  _T_103; // @[LZD.scala 39:25]
  wire [1:0] _T_104; // @[Cat.scala 29:58]
  wire [1:0] _T_105; // @[convert.scala 21:22]
  wire  _T_106; // @[convert.scala 22:36]
  wire  _T_107; // @[Shift.scala 16:24]
  wire  _T_108; // @[Shift.scala 17:37]
  wire  _T_110; // @[Shift.scala 63:39]
  wire  decC_fraction; // @[Shift.scala 16:10]
  wire  _T_114; // @[convert.scala 25:26]
  wire [1:0] _T_116; // @[convert.scala 25:42]
  wire [2:0] _T_117; // @[Cat.scala 29:58]
  wire [2:0] _T_119; // @[convert.scala 29:56]
  wire  _T_120; // @[convert.scala 29:60]
  wire  _T_121; // @[convert.scala 29:41]
  wire  decC_isNaR; // @[convert.scala 29:39]
  wire  _T_124; // @[convert.scala 30:19]
  wire  decC_isZero; // @[convert.scala 30:41]
  wire [2:0] decC_scale; // @[convert.scala 32:24]
  wire  _T_132; // @[PositFMA.scala 58:30]
  wire  outIsNaR; // @[PositFMA.scala 58:44]
  wire  _T_133; // @[PositFMA.scala 59:34]
  wire  _T_134; // @[PositFMA.scala 59:47]
  wire  _T_135; // @[PositFMA.scala 59:45]
  wire [2:0] _T_137; // @[Cat.scala 29:58]
  wire [2:0] sigA; // @[PositFMA.scala 59:76]
  wire  _T_138; // @[PositFMA.scala 60:34]
  wire  _T_139; // @[PositFMA.scala 60:47]
  wire  _T_140; // @[PositFMA.scala 60:45]
  wire [2:0] _T_142; // @[Cat.scala 29:58]
  wire [2:0] sigB; // @[PositFMA.scala 60:76]
  wire [5:0] _T_143; // @[PositFMA.scala 62:25]
  wire [5:0] sigP; // @[PositFMA.scala 62:33]
  wire [1:0] head2; // @[PositFMA.scala 63:28]
  wire  _T_144; // @[PositFMA.scala 64:31]
  wire  _T_145; // @[PositFMA.scala 64:25]
  wire  _T_146; // @[PositFMA.scala 64:42]
  wire  addTwo; // @[PositFMA.scala 64:35]
  wire  _T_147; // @[PositFMA.scala 66:23]
  wire  _T_148; // @[PositFMA.scala 66:49]
  wire  addOne; // @[PositFMA.scala 66:43]
  wire [1:0] _T_149; // @[Cat.scala 29:58]
  wire [2:0] expBias; // @[PositFMA.scala 67:39]
  wire  mulSign; // @[PositFMA.scala 68:28]
  wire [3:0] _T_150; // @[PositFMA.scala 70:30]
  wire [3:0] _GEN_12; // @[PositFMA.scala 70:44]
  wire [3:0] _T_152; // @[PositFMA.scala 70:44]
  wire [3:0] mulScale; // @[PositFMA.scala 70:44]
  wire [3:0] _T_153; // @[PositFMA.scala 73:29]
  wire [2:0] _T_154; // @[PositFMA.scala 74:29]
  wire [3:0] _T_155; // @[PositFMA.scala 74:48]
  wire [3:0] mulSigTmp; // @[PositFMA.scala 71:22]
  wire  _T_157; // @[PositFMA.scala 78:39]
  wire  _T_158; // @[PositFMA.scala 78:43]
  wire [2:0] _T_159; // @[PositFMA.scala 79:39]
  wire [4:0] mulSig; // @[Cat.scala 29:58]
  reg  outIsNaR_phase2; // @[Reg.scala 15:16]
  reg [31:0] _RAND_0;
  reg [4:0] mulSig_phase2; // @[Reg.scala 15:16]
  reg [31:0] _RAND_1;
  reg  addFrac_phase2; // @[Reg.scala 15:16]
  reg [31:0] _RAND_2;
  reg [3:0] mulScale_phase2; // @[Reg.scala 15:16]
  reg [31:0] _RAND_3;
  reg [2:0] addScale_phase2; // @[Reg.scala 15:16]
  reg [31:0] _RAND_4;
  reg  addSign_phase2; // @[Reg.scala 15:16]
  reg [31:0] _RAND_5;
  reg  addZero_phase2; // @[Reg.scala 15:16]
  reg [31:0] _RAND_6;
  reg  inValid_phase2; // @[Valid.scala 117:22]
  reg [31:0] _RAND_7;
  wire  _T_185; // @[PositFMA.scala 108:29]
  wire  _T_186; // @[PositFMA.scala 108:47]
  wire  _T_187; // @[PositFMA.scala 108:45]
  wire [4:0] extAddSig; // @[Cat.scala 29:58]
  wire [3:0] _GEN_13; // @[PositFMA.scala 112:39]
  wire  mulGreater; // @[PositFMA.scala 112:39]
  wire [3:0] greaterScale; // @[PositFMA.scala 113:26]
  wire [3:0] smallerScale; // @[PositFMA.scala 114:26]
  wire [3:0] _T_191; // @[PositFMA.scala 115:36]
  wire [3:0] scaleDiff; // @[PositFMA.scala 115:36]
  wire [4:0] greaterSig; // @[PositFMA.scala 116:26]
  wire [4:0] smallerSigTmp; // @[PositFMA.scala 117:26]
  wire [3:0] _T_192; // @[PositFMA.scala 118:69]
  wire  _T_193; // @[Shift.scala 39:24]
  wire [2:0] _T_194; // @[Shift.scala 40:44]
  wire  _T_195; // @[Shift.scala 90:30]
  wire [3:0] _T_196; // @[Shift.scala 90:48]
  wire  _T_197; // @[Shift.scala 90:57]
  wire  _T_198; // @[Shift.scala 90:39]
  wire  _T_199; // @[Shift.scala 12:21]
  wire  _T_200; // @[Shift.scala 12:21]
  wire [3:0] _T_202; // @[Bitwise.scala 71:12]
  wire [4:0] _T_203; // @[Cat.scala 29:58]
  wire [4:0] _T_204; // @[Shift.scala 91:22]
  wire [1:0] _T_205; // @[Shift.scala 92:77]
  wire [2:0] _T_206; // @[Shift.scala 90:30]
  wire [1:0] _T_207; // @[Shift.scala 90:48]
  wire  _T_208; // @[Shift.scala 90:57]
  wire [2:0] _GEN_14; // @[Shift.scala 90:39]
  wire [2:0] _T_209; // @[Shift.scala 90:39]
  wire  _T_210; // @[Shift.scala 12:21]
  wire  _T_211; // @[Shift.scala 12:21]
  wire [1:0] _T_213; // @[Bitwise.scala 71:12]
  wire [4:0] _T_214; // @[Cat.scala 29:58]
  wire [4:0] _T_215; // @[Shift.scala 91:22]
  wire  _T_216; // @[Shift.scala 92:77]
  wire [3:0] _T_217; // @[Shift.scala 90:30]
  wire  _T_218; // @[Shift.scala 90:48]
  wire [3:0] _GEN_15; // @[Shift.scala 90:39]
  wire [3:0] _T_220; // @[Shift.scala 90:39]
  wire  _T_222; // @[Shift.scala 12:21]
  wire [4:0] _T_223; // @[Cat.scala 29:58]
  wire [4:0] _T_224; // @[Shift.scala 91:22]
  wire [4:0] _T_227; // @[Bitwise.scala 71:12]
  wire [4:0] smallerSig; // @[Shift.scala 39:10]
  wire [5:0] rawSumSig; // @[PositFMA.scala 119:34]
  wire  _T_228; // @[PositFMA.scala 120:42]
  wire  _T_229; // @[PositFMA.scala 120:46]
  wire  _T_230; // @[PositFMA.scala 120:79]
  wire  sumSign; // @[PositFMA.scala 120:63]
  wire [4:0] _T_232; // @[PositFMA.scala 121:50]
  wire [5:0] signSumSig; // @[Cat.scala 29:58]
  wire [4:0] _T_233; // @[PositFMA.scala 126:33]
  wire [4:0] _T_234; // @[PositFMA.scala 126:68]
  wire [4:0] sumXor; // @[PositFMA.scala 126:51]
  wire [3:0] _T_235; // @[LZD.scala 43:32]
  wire [1:0] _T_236; // @[LZD.scala 43:32]
  wire  _T_237; // @[LZD.scala 39:14]
  wire  _T_238; // @[LZD.scala 39:21]
  wire  _T_239; // @[LZD.scala 39:30]
  wire  _T_240; // @[LZD.scala 39:27]
  wire  _T_241; // @[LZD.scala 39:25]
  wire [1:0] _T_242; // @[Cat.scala 29:58]
  wire [1:0] _T_243; // @[LZD.scala 44:32]
  wire  _T_244; // @[LZD.scala 39:14]
  wire  _T_245; // @[LZD.scala 39:21]
  wire  _T_246; // @[LZD.scala 39:30]
  wire  _T_247; // @[LZD.scala 39:27]
  wire  _T_248; // @[LZD.scala 39:25]
  wire [1:0] _T_249; // @[Cat.scala 29:58]
  wire  _T_250; // @[Shift.scala 12:21]
  wire  _T_251; // @[Shift.scala 12:21]
  wire  _T_252; // @[LZD.scala 49:16]
  wire  _T_253; // @[LZD.scala 49:27]
  wire  _T_254; // @[LZD.scala 49:25]
  wire  _T_255; // @[LZD.scala 49:47]
  wire  _T_256; // @[LZD.scala 49:59]
  wire  _T_257; // @[LZD.scala 49:35]
  wire [2:0] _T_259; // @[Cat.scala 29:58]
  wire  _T_260; // @[LZD.scala 44:32]
  wire  _T_262; // @[Shift.scala 12:21]
  wire [1:0] _T_264; // @[Cat.scala 29:58]
  wire [1:0] _T_265; // @[LZD.scala 55:32]
  wire [1:0] _T_266; // @[LZD.scala 55:20]
  wire [2:0] sumLZD; // @[Cat.scala 29:58]
  wire [2:0] shiftValue; // @[PositFMA.scala 128:24]
  wire [3:0] _T_267; // @[PositFMA.scala 129:38]
  wire  _T_268; // @[Shift.scala 16:24]
  wire [1:0] _T_269; // @[Shift.scala 17:37]
  wire  _T_270; // @[Shift.scala 12:21]
  wire [1:0] _T_271; // @[Shift.scala 64:52]
  wire [3:0] _T_273; // @[Cat.scala 29:58]
  wire [3:0] _T_274; // @[Shift.scala 64:27]
  wire  _T_275; // @[Shift.scala 66:70]
  wire [2:0] _T_277; // @[Shift.scala 64:52]
  wire [3:0] _T_278; // @[Cat.scala 29:58]
  wire [3:0] _T_279; // @[Shift.scala 64:27]
  wire [3:0] normalFracTmp; // @[Shift.scala 16:10]
  wire [3:0] _T_281; // @[PositFMA.scala 132:36]
  wire [3:0] _T_282; // @[PositFMA.scala 132:36]
  wire [3:0] _T_283; // @[Cat.scala 29:58]
  wire [3:0] _T_284; // @[PositFMA.scala 132:61]
  wire [3:0] _T_286; // @[PositFMA.scala 132:42]
  wire [3:0] sumScale; // @[PositFMA.scala 132:42]
  wire  sumFrac; // @[PositFMA.scala 133:41]
  wire [2:0] grsTmp; // @[PositFMA.scala 136:41]
  wire [1:0] _T_287; // @[PositFMA.scala 139:40]
  wire  _T_288; // @[PositFMA.scala 139:56]
  wire  underflow; // @[PositFMA.scala 146:32]
  wire  overflow; // @[PositFMA.scala 147:32]
  wire  _T_290; // @[PositFMA.scala 156:32]
  wire  decF_isZero; // @[PositFMA.scala 156:20]
  wire [3:0] _T_292; // @[Mux.scala 87:16]
  wire [3:0] _T_293; // @[Mux.scala 87:16]
  wire [2:0] _GEN_16; // @[PositFMA.scala 153:18 PositFMA.scala 159:17]
  wire [2:0] decF_scale; // @[PositFMA.scala 153:18 PositFMA.scala 159:17]
  wire  _T_295; // @[convert.scala 49:36]
  wire [2:0] _T_297; // @[convert.scala 50:36]
  wire [2:0] _T_298; // @[convert.scala 50:36]
  wire [2:0] _T_299; // @[convert.scala 50:28]
  wire  _T_300; // @[convert.scala 51:31]
  wire  _T_301; // @[convert.scala 53:34]
  wire [5:0] _T_304; // @[Cat.scala 29:58]
  wire [2:0] _T_305; // @[Shift.scala 39:17]
  wire  _T_306; // @[Shift.scala 39:24]
  wire [1:0] _T_308; // @[Shift.scala 90:30]
  wire [3:0] _T_309; // @[Shift.scala 90:48]
  wire  _T_310; // @[Shift.scala 90:57]
  wire [1:0] _GEN_17; // @[Shift.scala 90:39]
  wire [1:0] _T_311; // @[Shift.scala 90:39]
  wire  _T_312; // @[Shift.scala 12:21]
  wire  _T_313; // @[Shift.scala 12:21]
  wire [3:0] _T_315; // @[Bitwise.scala 71:12]
  wire [5:0] _T_316; // @[Cat.scala 29:58]
  wire [5:0] _T_317; // @[Shift.scala 91:22]
  wire [1:0] _T_318; // @[Shift.scala 92:77]
  wire [3:0] _T_319; // @[Shift.scala 90:30]
  wire [1:0] _T_320; // @[Shift.scala 90:48]
  wire  _T_321; // @[Shift.scala 90:57]
  wire [3:0] _GEN_18; // @[Shift.scala 90:39]
  wire [3:0] _T_322; // @[Shift.scala 90:39]
  wire  _T_323; // @[Shift.scala 12:21]
  wire  _T_324; // @[Shift.scala 12:21]
  wire [1:0] _T_326; // @[Bitwise.scala 71:12]
  wire [5:0] _T_327; // @[Cat.scala 29:58]
  wire [5:0] _T_328; // @[Shift.scala 91:22]
  wire  _T_329; // @[Shift.scala 92:77]
  wire [4:0] _T_330; // @[Shift.scala 90:30]
  wire  _T_331; // @[Shift.scala 90:48]
  wire [4:0] _GEN_19; // @[Shift.scala 90:39]
  wire [4:0] _T_333; // @[Shift.scala 90:39]
  wire  _T_335; // @[Shift.scala 12:21]
  wire [5:0] _T_336; // @[Cat.scala 29:58]
  wire [5:0] _T_337; // @[Shift.scala 91:22]
  wire [5:0] _T_340; // @[Bitwise.scala 71:12]
  wire [5:0] _T_341; // @[Shift.scala 39:10]
  wire  _T_342; // @[convert.scala 55:31]
  wire  _T_343; // @[convert.scala 56:31]
  wire  _T_344; // @[convert.scala 57:31]
  wire  _T_345; // @[convert.scala 58:31]
  wire [2:0] _T_346; // @[convert.scala 59:69]
  wire  _T_347; // @[convert.scala 59:81]
  wire  _T_348; // @[convert.scala 59:50]
  wire  _T_350; // @[convert.scala 60:81]
  wire  _T_351; // @[convert.scala 61:44]
  wire  _T_352; // @[convert.scala 61:52]
  wire  _T_353; // @[convert.scala 61:36]
  wire  _T_354; // @[convert.scala 62:63]
  wire  _T_355; // @[convert.scala 62:103]
  wire  _T_356; // @[convert.scala 62:60]
  wire [2:0] _GEN_20; // @[convert.scala 63:56]
  wire [2:0] _T_359; // @[convert.scala 63:56]
  wire [3:0] _T_360; // @[Cat.scala 29:58]
  reg  _T_364; // @[Valid.scala 117:22]
  reg [31:0] _RAND_8;
  reg [3:0] _T_368; // @[Reg.scala 15:16]
  reg [31:0] _RAND_9;
  assign _T = io_fmaOp[1]; // @[PositFMA.scala 47:36]
  assign _T_2 = _T ? 4'hf : 4'h0; // @[Bitwise.scala 71:12]
  assign _T_3 = _T_2 ^ io_A; // @[PositFMA.scala 47:41]
  assign _GEN_10 = {{3'd0}, _T}; // @[PositFMA.scala 47:49]
  assign realA = _T_3 + _GEN_10; // @[PositFMA.scala 47:49]
  assign _T_6 = io_fmaOp[0]; // @[PositFMA.scala 48:36]
  assign _T_8 = _T_6 ? 4'hf : 4'h0; // @[Bitwise.scala 71:12]
  assign _T_9 = _T_8 ^ io_C; // @[PositFMA.scala 48:41]
  assign _GEN_11 = {{3'd0}, _T_6}; // @[PositFMA.scala 48:49]
  assign realC = _T_9 + _GEN_11; // @[PositFMA.scala 48:49]
  assign _T_13 = realA[3]; // @[convert.scala 18:24]
  assign _T_14 = realA[2]; // @[convert.scala 18:40]
  assign _T_15 = _T_13 ^ _T_14; // @[convert.scala 18:36]
  assign _T_16 = realA[2:1]; // @[convert.scala 19:24]
  assign _T_17 = realA[1:0]; // @[convert.scala 19:43]
  assign _T_18 = _T_16 ^ _T_17; // @[convert.scala 19:39]
  assign _T_19 = _T_18 != 2'h0; // @[LZD.scala 39:14]
  assign _T_20 = _T_18[1]; // @[LZD.scala 39:21]
  assign _T_21 = _T_18[0]; // @[LZD.scala 39:30]
  assign _T_22 = ~ _T_21; // @[LZD.scala 39:27]
  assign _T_23 = _T_20 | _T_22; // @[LZD.scala 39:25]
  assign _T_24 = {_T_19,_T_23}; // @[Cat.scala 29:58]
  assign _T_25 = ~ _T_24; // @[convert.scala 21:22]
  assign _T_26 = realA[0:0]; // @[convert.scala 22:36]
  assign _T_27 = _T_25 < 2'h1; // @[Shift.scala 16:24]
  assign _T_28 = _T_25[0]; // @[Shift.scala 17:37]
  assign _T_30 = _T_28 ? 1'h0 : _T_26; // @[Shift.scala 63:39]
  assign decA_fraction = _T_27 & _T_30; // @[Shift.scala 16:10]
  assign _T_34 = _T_15 == 1'h0; // @[convert.scala 25:26]
  assign _T_36 = _T_15 ? _T_25 : _T_24; // @[convert.scala 25:42]
  assign _T_37 = {_T_34,_T_36}; // @[Cat.scala 29:58]
  assign _T_39 = realA[2:0]; // @[convert.scala 29:56]
  assign _T_40 = _T_39 != 3'h0; // @[convert.scala 29:60]
  assign _T_41 = ~ _T_40; // @[convert.scala 29:41]
  assign decA_isNaR = _T_13 & _T_41; // @[convert.scala 29:39]
  assign _T_44 = _T_13 == 1'h0; // @[convert.scala 30:19]
  assign decA_isZero = _T_44 & _T_41; // @[convert.scala 30:41]
  assign decA_scale = $signed(_T_37); // @[convert.scala 32:24]
  assign _T_53 = io_B[3]; // @[convert.scala 18:24]
  assign _T_54 = io_B[2]; // @[convert.scala 18:40]
  assign _T_55 = _T_53 ^ _T_54; // @[convert.scala 18:36]
  assign _T_56 = io_B[2:1]; // @[convert.scala 19:24]
  assign _T_57 = io_B[1:0]; // @[convert.scala 19:43]
  assign _T_58 = _T_56 ^ _T_57; // @[convert.scala 19:39]
  assign _T_59 = _T_58 != 2'h0; // @[LZD.scala 39:14]
  assign _T_60 = _T_58[1]; // @[LZD.scala 39:21]
  assign _T_61 = _T_58[0]; // @[LZD.scala 39:30]
  assign _T_62 = ~ _T_61; // @[LZD.scala 39:27]
  assign _T_63 = _T_60 | _T_62; // @[LZD.scala 39:25]
  assign _T_64 = {_T_59,_T_63}; // @[Cat.scala 29:58]
  assign _T_65 = ~ _T_64; // @[convert.scala 21:22]
  assign _T_66 = io_B[0:0]; // @[convert.scala 22:36]
  assign _T_67 = _T_65 < 2'h1; // @[Shift.scala 16:24]
  assign _T_68 = _T_65[0]; // @[Shift.scala 17:37]
  assign _T_70 = _T_68 ? 1'h0 : _T_66; // @[Shift.scala 63:39]
  assign decB_fraction = _T_67 & _T_70; // @[Shift.scala 16:10]
  assign _T_74 = _T_55 == 1'h0; // @[convert.scala 25:26]
  assign _T_76 = _T_55 ? _T_65 : _T_64; // @[convert.scala 25:42]
  assign _T_77 = {_T_74,_T_76}; // @[Cat.scala 29:58]
  assign _T_79 = io_B[2:0]; // @[convert.scala 29:56]
  assign _T_80 = _T_79 != 3'h0; // @[convert.scala 29:60]
  assign _T_81 = ~ _T_80; // @[convert.scala 29:41]
  assign decB_isNaR = _T_53 & _T_81; // @[convert.scala 29:39]
  assign _T_84 = _T_53 == 1'h0; // @[convert.scala 30:19]
  assign decB_isZero = _T_84 & _T_81; // @[convert.scala 30:41]
  assign decB_scale = $signed(_T_77); // @[convert.scala 32:24]
  assign _T_93 = realC[3]; // @[convert.scala 18:24]
  assign _T_94 = realC[2]; // @[convert.scala 18:40]
  assign _T_95 = _T_93 ^ _T_94; // @[convert.scala 18:36]
  assign _T_96 = realC[2:1]; // @[convert.scala 19:24]
  assign _T_97 = realC[1:0]; // @[convert.scala 19:43]
  assign _T_98 = _T_96 ^ _T_97; // @[convert.scala 19:39]
  assign _T_99 = _T_98 != 2'h0; // @[LZD.scala 39:14]
  assign _T_100 = _T_98[1]; // @[LZD.scala 39:21]
  assign _T_101 = _T_98[0]; // @[LZD.scala 39:30]
  assign _T_102 = ~ _T_101; // @[LZD.scala 39:27]
  assign _T_103 = _T_100 | _T_102; // @[LZD.scala 39:25]
  assign _T_104 = {_T_99,_T_103}; // @[Cat.scala 29:58]
  assign _T_105 = ~ _T_104; // @[convert.scala 21:22]
  assign _T_106 = realC[0:0]; // @[convert.scala 22:36]
  assign _T_107 = _T_105 < 2'h1; // @[Shift.scala 16:24]
  assign _T_108 = _T_105[0]; // @[Shift.scala 17:37]
  assign _T_110 = _T_108 ? 1'h0 : _T_106; // @[Shift.scala 63:39]
  assign decC_fraction = _T_107 & _T_110; // @[Shift.scala 16:10]
  assign _T_114 = _T_95 == 1'h0; // @[convert.scala 25:26]
  assign _T_116 = _T_95 ? _T_105 : _T_104; // @[convert.scala 25:42]
  assign _T_117 = {_T_114,_T_116}; // @[Cat.scala 29:58]
  assign _T_119 = realC[2:0]; // @[convert.scala 29:56]
  assign _T_120 = _T_119 != 3'h0; // @[convert.scala 29:60]
  assign _T_121 = ~ _T_120; // @[convert.scala 29:41]
  assign decC_isNaR = _T_93 & _T_121; // @[convert.scala 29:39]
  assign _T_124 = _T_93 == 1'h0; // @[convert.scala 30:19]
  assign decC_isZero = _T_124 & _T_121; // @[convert.scala 30:41]
  assign decC_scale = $signed(_T_117); // @[convert.scala 32:24]
  assign _T_132 = decA_isNaR | decB_isNaR; // @[PositFMA.scala 58:30]
  assign outIsNaR = _T_132 | decC_isNaR; // @[PositFMA.scala 58:44]
  assign _T_133 = ~ _T_13; // @[PositFMA.scala 59:34]
  assign _T_134 = ~ decA_isZero; // @[PositFMA.scala 59:47]
  assign _T_135 = _T_133 & _T_134; // @[PositFMA.scala 59:45]
  assign _T_137 = {_T_13,_T_135,decA_fraction}; // @[Cat.scala 29:58]
  assign sigA = $signed(_T_137); // @[PositFMA.scala 59:76]
  assign _T_138 = ~ _T_53; // @[PositFMA.scala 60:34]
  assign _T_139 = ~ decB_isZero; // @[PositFMA.scala 60:47]
  assign _T_140 = _T_138 & _T_139; // @[PositFMA.scala 60:45]
  assign _T_142 = {_T_53,_T_140,decB_fraction}; // @[Cat.scala 29:58]
  assign sigB = $signed(_T_142); // @[PositFMA.scala 60:76]
  assign _T_143 = $signed(sigA) * $signed(sigB); // @[PositFMA.scala 62:25]
  assign sigP = $unsigned(_T_143); // @[PositFMA.scala 62:33]
  assign head2 = sigP[5:4]; // @[PositFMA.scala 63:28]
  assign _T_144 = head2[1]; // @[PositFMA.scala 64:31]
  assign _T_145 = ~ _T_144; // @[PositFMA.scala 64:25]
  assign _T_146 = head2[0]; // @[PositFMA.scala 64:42]
  assign addTwo = _T_145 & _T_146; // @[PositFMA.scala 64:35]
  assign _T_147 = sigP[5]; // @[PositFMA.scala 66:23]
  assign _T_148 = sigP[3]; // @[PositFMA.scala 66:49]
  assign addOne = _T_147 ^ _T_148; // @[PositFMA.scala 66:43]
  assign _T_149 = {addTwo,addOne}; // @[Cat.scala 29:58]
  assign expBias = {1'b0,$signed(_T_149)}; // @[PositFMA.scala 67:39]
  assign mulSign = sigP[5:5]; // @[PositFMA.scala 68:28]
  assign _T_150 = $signed(decA_scale) + $signed(decB_scale); // @[PositFMA.scala 70:30]
  assign _GEN_12 = {{1{expBias[2]}},expBias}; // @[PositFMA.scala 70:44]
  assign _T_152 = $signed(_T_150) + $signed(_GEN_12); // @[PositFMA.scala 70:44]
  assign mulScale = $signed(_T_152); // @[PositFMA.scala 70:44]
  assign _T_153 = sigP[3:0]; // @[PositFMA.scala 73:29]
  assign _T_154 = sigP[2:0]; // @[PositFMA.scala 74:29]
  assign _T_155 = {_T_154, 1'h0}; // @[PositFMA.scala 74:48]
  assign mulSigTmp = addOne ? _T_153 : _T_155; // @[PositFMA.scala 71:22]
  assign _T_157 = mulSigTmp[3:3]; // @[PositFMA.scala 78:39]
  assign _T_158 = _T_157 | addTwo; // @[PositFMA.scala 78:43]
  assign _T_159 = mulSigTmp[2:0]; // @[PositFMA.scala 79:39]
  assign mulSig = {mulSign,_T_158,_T_159}; // @[Cat.scala 29:58]
  assign _T_185 = ~ addSign_phase2; // @[PositFMA.scala 108:29]
  assign _T_186 = ~ addZero_phase2; // @[PositFMA.scala 108:47]
  assign _T_187 = _T_185 & _T_186; // @[PositFMA.scala 108:45]
  assign extAddSig = {addSign_phase2,_T_187,addFrac_phase2,2'h0}; // @[Cat.scala 29:58]
  assign _GEN_13 = {{1{addScale_phase2[2]}},addScale_phase2}; // @[PositFMA.scala 112:39]
  assign mulGreater = $signed(mulScale_phase2) > $signed(_GEN_13); // @[PositFMA.scala 112:39]
  assign greaterScale = mulGreater ? $signed(mulScale_phase2) : $signed({{1{addScale_phase2[2]}},addScale_phase2}); // @[PositFMA.scala 113:26]
  assign smallerScale = mulGreater ? $signed({{1{addScale_phase2[2]}},addScale_phase2}) : $signed(mulScale_phase2); // @[PositFMA.scala 114:26]
  assign _T_191 = $signed(greaterScale) - $signed(smallerScale); // @[PositFMA.scala 115:36]
  assign scaleDiff = $signed(_T_191); // @[PositFMA.scala 115:36]
  assign greaterSig = mulGreater ? mulSig_phase2 : extAddSig; // @[PositFMA.scala 116:26]
  assign smallerSigTmp = mulGreater ? extAddSig : mulSig_phase2; // @[PositFMA.scala 117:26]
  assign _T_192 = $unsigned(scaleDiff); // @[PositFMA.scala 118:69]
  assign _T_193 = _T_192 < 4'h5; // @[Shift.scala 39:24]
  assign _T_194 = _T_192[2:0]; // @[Shift.scala 40:44]
  assign _T_195 = smallerSigTmp[4:4]; // @[Shift.scala 90:30]
  assign _T_196 = smallerSigTmp[3:0]; // @[Shift.scala 90:48]
  assign _T_197 = _T_196 != 4'h0; // @[Shift.scala 90:57]
  assign _T_198 = _T_195 | _T_197; // @[Shift.scala 90:39]
  assign _T_199 = _T_194[2]; // @[Shift.scala 12:21]
  assign _T_200 = smallerSigTmp[4]; // @[Shift.scala 12:21]
  assign _T_202 = _T_200 ? 4'hf : 4'h0; // @[Bitwise.scala 71:12]
  assign _T_203 = {_T_202,_T_198}; // @[Cat.scala 29:58]
  assign _T_204 = _T_199 ? _T_203 : smallerSigTmp; // @[Shift.scala 91:22]
  assign _T_205 = _T_194[1:0]; // @[Shift.scala 92:77]
  assign _T_206 = _T_204[4:2]; // @[Shift.scala 90:30]
  assign _T_207 = _T_204[1:0]; // @[Shift.scala 90:48]
  assign _T_208 = _T_207 != 2'h0; // @[Shift.scala 90:57]
  assign _GEN_14 = {{2'd0}, _T_208}; // @[Shift.scala 90:39]
  assign _T_209 = _T_206 | _GEN_14; // @[Shift.scala 90:39]
  assign _T_210 = _T_205[1]; // @[Shift.scala 12:21]
  assign _T_211 = _T_204[4]; // @[Shift.scala 12:21]
  assign _T_213 = _T_211 ? 2'h3 : 2'h0; // @[Bitwise.scala 71:12]
  assign _T_214 = {_T_213,_T_209}; // @[Cat.scala 29:58]
  assign _T_215 = _T_210 ? _T_214 : _T_204; // @[Shift.scala 91:22]
  assign _T_216 = _T_205[0:0]; // @[Shift.scala 92:77]
  assign _T_217 = _T_215[4:1]; // @[Shift.scala 90:30]
  assign _T_218 = _T_215[0:0]; // @[Shift.scala 90:48]
  assign _GEN_15 = {{3'd0}, _T_218}; // @[Shift.scala 90:39]
  assign _T_220 = _T_217 | _GEN_15; // @[Shift.scala 90:39]
  assign _T_222 = _T_215[4]; // @[Shift.scala 12:21]
  assign _T_223 = {_T_222,_T_220}; // @[Cat.scala 29:58]
  assign _T_224 = _T_216 ? _T_223 : _T_215; // @[Shift.scala 91:22]
  assign _T_227 = _T_200 ? 5'h1f : 5'h0; // @[Bitwise.scala 71:12]
  assign smallerSig = _T_193 ? _T_224 : _T_227; // @[Shift.scala 39:10]
  assign rawSumSig = greaterSig + smallerSig; // @[PositFMA.scala 119:34]
  assign _T_228 = mulSig_phase2[4:4]; // @[PositFMA.scala 120:42]
  assign _T_229 = _T_228 ^ addSign_phase2; // @[PositFMA.scala 120:46]
  assign _T_230 = rawSumSig[5:5]; // @[PositFMA.scala 120:79]
  assign sumSign = _T_229 ^ _T_230; // @[PositFMA.scala 120:63]
  assign _T_232 = greaterSig + smallerSig; // @[PositFMA.scala 121:50]
  assign signSumSig = {sumSign,_T_232}; // @[Cat.scala 29:58]
  assign _T_233 = signSumSig[5:1]; // @[PositFMA.scala 126:33]
  assign _T_234 = signSumSig[4:0]; // @[PositFMA.scala 126:68]
  assign sumXor = _T_233 ^ _T_234; // @[PositFMA.scala 126:51]
  assign _T_235 = sumXor[4:1]; // @[LZD.scala 43:32]
  assign _T_236 = _T_235[3:2]; // @[LZD.scala 43:32]
  assign _T_237 = _T_236 != 2'h0; // @[LZD.scala 39:14]
  assign _T_238 = _T_236[1]; // @[LZD.scala 39:21]
  assign _T_239 = _T_236[0]; // @[LZD.scala 39:30]
  assign _T_240 = ~ _T_239; // @[LZD.scala 39:27]
  assign _T_241 = _T_238 | _T_240; // @[LZD.scala 39:25]
  assign _T_242 = {_T_237,_T_241}; // @[Cat.scala 29:58]
  assign _T_243 = _T_235[1:0]; // @[LZD.scala 44:32]
  assign _T_244 = _T_243 != 2'h0; // @[LZD.scala 39:14]
  assign _T_245 = _T_243[1]; // @[LZD.scala 39:21]
  assign _T_246 = _T_243[0]; // @[LZD.scala 39:30]
  assign _T_247 = ~ _T_246; // @[LZD.scala 39:27]
  assign _T_248 = _T_245 | _T_247; // @[LZD.scala 39:25]
  assign _T_249 = {_T_244,_T_248}; // @[Cat.scala 29:58]
  assign _T_250 = _T_242[1]; // @[Shift.scala 12:21]
  assign _T_251 = _T_249[1]; // @[Shift.scala 12:21]
  assign _T_252 = _T_250 | _T_251; // @[LZD.scala 49:16]
  assign _T_253 = ~ _T_251; // @[LZD.scala 49:27]
  assign _T_254 = _T_250 | _T_253; // @[LZD.scala 49:25]
  assign _T_255 = _T_242[0:0]; // @[LZD.scala 49:47]
  assign _T_256 = _T_249[0:0]; // @[LZD.scala 49:59]
  assign _T_257 = _T_250 ? _T_255 : _T_256; // @[LZD.scala 49:35]
  assign _T_259 = {_T_252,_T_254,_T_257}; // @[Cat.scala 29:58]
  assign _T_260 = sumXor[0:0]; // @[LZD.scala 44:32]
  assign _T_262 = _T_259[2]; // @[Shift.scala 12:21]
  assign _T_264 = {1'h1,_T_260}; // @[Cat.scala 29:58]
  assign _T_265 = _T_259[1:0]; // @[LZD.scala 55:32]
  assign _T_266 = _T_262 ? _T_265 : _T_264; // @[LZD.scala 55:20]
  assign sumLZD = {_T_262,_T_266}; // @[Cat.scala 29:58]
  assign shiftValue = ~ sumLZD; // @[PositFMA.scala 128:24]
  assign _T_267 = signSumSig[3:0]; // @[PositFMA.scala 129:38]
  assign _T_268 = shiftValue < 3'h4; // @[Shift.scala 16:24]
  assign _T_269 = shiftValue[1:0]; // @[Shift.scala 17:37]
  assign _T_270 = _T_269[1]; // @[Shift.scala 12:21]
  assign _T_271 = _T_267[1:0]; // @[Shift.scala 64:52]
  assign _T_273 = {_T_271,2'h0}; // @[Cat.scala 29:58]
  assign _T_274 = _T_270 ? _T_273 : _T_267; // @[Shift.scala 64:27]
  assign _T_275 = _T_269[0:0]; // @[Shift.scala 66:70]
  assign _T_277 = _T_274[2:0]; // @[Shift.scala 64:52]
  assign _T_278 = {_T_277,1'h0}; // @[Cat.scala 29:58]
  assign _T_279 = _T_275 ? _T_278 : _T_274; // @[Shift.scala 64:27]
  assign normalFracTmp = _T_268 ? _T_279 : 4'h0; // @[Shift.scala 16:10]
  assign _T_281 = $signed(greaterScale) + $signed(4'sh2); // @[PositFMA.scala 132:36]
  assign _T_282 = $signed(_T_281); // @[PositFMA.scala 132:36]
  assign _T_283 = {1'h1,_T_262,_T_266}; // @[Cat.scala 29:58]
  assign _T_284 = $signed(_T_283); // @[PositFMA.scala 132:61]
  assign _T_286 = $signed(_T_282) + $signed(_T_284); // @[PositFMA.scala 132:42]
  assign sumScale = $signed(_T_286); // @[PositFMA.scala 132:42]
  assign sumFrac = normalFracTmp[3:3]; // @[PositFMA.scala 133:41]
  assign grsTmp = normalFracTmp[2:0]; // @[PositFMA.scala 136:41]
  assign _T_287 = grsTmp[2:1]; // @[PositFMA.scala 139:40]
  assign _T_288 = grsTmp[0:0]; // @[PositFMA.scala 139:56]
  assign underflow = $signed(sumScale) < $signed(-4'sh3); // @[PositFMA.scala 146:32]
  assign overflow = $signed(sumScale) > $signed(4'sh2); // @[PositFMA.scala 147:32]
  assign _T_290 = signSumSig != 6'h0; // @[PositFMA.scala 156:32]
  assign decF_isZero = ~ _T_290; // @[PositFMA.scala 156:20]
  assign _T_292 = underflow ? $signed(-4'sh3) : $signed(sumScale); // @[Mux.scala 87:16]
  assign _T_293 = overflow ? $signed(4'sh2) : $signed(_T_292); // @[Mux.scala 87:16]
  assign _GEN_16 = _T_293[2:0]; // @[PositFMA.scala 153:18 PositFMA.scala 159:17]
  assign decF_scale = $signed(_GEN_16); // @[PositFMA.scala 153:18 PositFMA.scala 159:17]
  assign _T_295 = decF_scale[2:2]; // @[convert.scala 49:36]
  assign _T_297 = ~ decF_scale; // @[convert.scala 50:36]
  assign _T_298 = $signed(_T_297); // @[convert.scala 50:36]
  assign _T_299 = _T_295 ? $signed(_T_298) : $signed(decF_scale); // @[convert.scala 50:28]
  assign _T_300 = _T_295 ^ sumSign; // @[convert.scala 51:31]
  assign _T_301 = ~ _T_300; // @[convert.scala 53:34]
  assign _T_304 = {_T_301,_T_300,sumFrac,_T_287,_T_288}; // @[Cat.scala 29:58]
  assign _T_305 = $unsigned(_T_299); // @[Shift.scala 39:17]
  assign _T_306 = _T_305 < 3'h6; // @[Shift.scala 39:24]
  assign _T_308 = _T_304[5:4]; // @[Shift.scala 90:30]
  assign _T_309 = _T_304[3:0]; // @[Shift.scala 90:48]
  assign _T_310 = _T_309 != 4'h0; // @[Shift.scala 90:57]
  assign _GEN_17 = {{1'd0}, _T_310}; // @[Shift.scala 90:39]
  assign _T_311 = _T_308 | _GEN_17; // @[Shift.scala 90:39]
  assign _T_312 = _T_305[2]; // @[Shift.scala 12:21]
  assign _T_313 = _T_304[5]; // @[Shift.scala 12:21]
  assign _T_315 = _T_313 ? 4'hf : 4'h0; // @[Bitwise.scala 71:12]
  assign _T_316 = {_T_315,_T_311}; // @[Cat.scala 29:58]
  assign _T_317 = _T_312 ? _T_316 : _T_304; // @[Shift.scala 91:22]
  assign _T_318 = _T_305[1:0]; // @[Shift.scala 92:77]
  assign _T_319 = _T_317[5:2]; // @[Shift.scala 90:30]
  assign _T_320 = _T_317[1:0]; // @[Shift.scala 90:48]
  assign _T_321 = _T_320 != 2'h0; // @[Shift.scala 90:57]
  assign _GEN_18 = {{3'd0}, _T_321}; // @[Shift.scala 90:39]
  assign _T_322 = _T_319 | _GEN_18; // @[Shift.scala 90:39]
  assign _T_323 = _T_318[1]; // @[Shift.scala 12:21]
  assign _T_324 = _T_317[5]; // @[Shift.scala 12:21]
  assign _T_326 = _T_324 ? 2'h3 : 2'h0; // @[Bitwise.scala 71:12]
  assign _T_327 = {_T_326,_T_322}; // @[Cat.scala 29:58]
  assign _T_328 = _T_323 ? _T_327 : _T_317; // @[Shift.scala 91:22]
  assign _T_329 = _T_318[0:0]; // @[Shift.scala 92:77]
  assign _T_330 = _T_328[5:1]; // @[Shift.scala 90:30]
  assign _T_331 = _T_328[0:0]; // @[Shift.scala 90:48]
  assign _GEN_19 = {{4'd0}, _T_331}; // @[Shift.scala 90:39]
  assign _T_333 = _T_330 | _GEN_19; // @[Shift.scala 90:39]
  assign _T_335 = _T_328[5]; // @[Shift.scala 12:21]
  assign _T_336 = {_T_335,_T_333}; // @[Cat.scala 29:58]
  assign _T_337 = _T_329 ? _T_336 : _T_328; // @[Shift.scala 91:22]
  assign _T_340 = _T_313 ? 6'h3f : 6'h0; // @[Bitwise.scala 71:12]
  assign _T_341 = _T_306 ? _T_337 : _T_340; // @[Shift.scala 39:10]
  assign _T_342 = _T_341[3]; // @[convert.scala 55:31]
  assign _T_343 = _T_341[2]; // @[convert.scala 56:31]
  assign _T_344 = _T_341[1]; // @[convert.scala 57:31]
  assign _T_345 = _T_341[0]; // @[convert.scala 58:31]
  assign _T_346 = _T_341[5:3]; // @[convert.scala 59:69]
  assign _T_347 = _T_346 != 3'h0; // @[convert.scala 59:81]
  assign _T_348 = ~ _T_347; // @[convert.scala 59:50]
  assign _T_350 = _T_346 == 3'h7; // @[convert.scala 60:81]
  assign _T_351 = _T_342 | _T_344; // @[convert.scala 61:44]
  assign _T_352 = _T_351 | _T_345; // @[convert.scala 61:52]
  assign _T_353 = _T_343 & _T_352; // @[convert.scala 61:36]
  assign _T_354 = ~ _T_350; // @[convert.scala 62:63]
  assign _T_355 = _T_354 & _T_353; // @[convert.scala 62:103]
  assign _T_356 = _T_348 | _T_355; // @[convert.scala 62:60]
  assign _GEN_20 = {{2'd0}, _T_356}; // @[convert.scala 63:56]
  assign _T_359 = _T_346 + _GEN_20; // @[convert.scala 63:56]
  assign _T_360 = {sumSign,_T_359}; // @[Cat.scala 29:58]
  assign io_F = _T_368; // @[PositFMA.scala 176:15]
  assign io_outValid = _T_364; // @[PositFMA.scala 175:15]
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
  outIsNaR_phase2 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mulSig_phase2 = _RAND_1[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  addFrac_phase2 = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  mulScale_phase2 = _RAND_3[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  addScale_phase2 = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  addSign_phase2 = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  addZero_phase2 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  inValid_phase2 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  _T_364 = _RAND_8[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  _T_368 = _RAND_9[3:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (io_inValid) begin
      outIsNaR_phase2 <= outIsNaR;
    end
    if (io_inValid) begin
      mulSig_phase2 <= mulSig;
    end
    if (io_inValid) begin
      addFrac_phase2 <= decC_fraction;
    end
    if (io_inValid) begin
      mulScale_phase2 <= mulScale;
    end
    if (io_inValid) begin
      addScale_phase2 <= decC_scale;
    end
    if (io_inValid) begin
      addSign_phase2 <= _T_93;
    end
    if (io_inValid) begin
      addZero_phase2 <= decC_isZero;
    end
    if (reset) begin
      inValid_phase2 <= 1'h0;
    end else begin
      inValid_phase2 <= io_inValid;
    end
    if (reset) begin
      _T_364 <= 1'h0;
    end else begin
      _T_364 <= inValid_phase2;
    end
    if (inValid_phase2) begin
      if (outIsNaR_phase2) begin
        _T_368 <= 4'h8;
      end else begin
        if (decF_isZero) begin
          _T_368 <= 4'h0;
        end else begin
          _T_368 <= _T_360;
        end
      end
    end
  end
endmodule
