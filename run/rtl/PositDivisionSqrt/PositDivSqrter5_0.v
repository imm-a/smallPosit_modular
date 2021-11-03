module PositDivSqrter5_0(
  input        clock,
  input        reset,
  output       io_inReady,
  input        io_inValid,
  input        io_sqrtOp,
  input  [4:0] io_A,
  input  [4:0] io_B,
  output       io_diviValid,
  output       io_sqrtValid,
  output       io_invalidExc,
  output [4:0] io_Q
);
  reg [3:0] cycleNum; // @[PositDivisionSqrt.scala 63:26]
  reg [31:0] _RAND_0;
  reg  sqrtOp_Z; // @[PositDivisionSqrt.scala 65:22]
  reg [31:0] _RAND_1;
  reg  isNaR_Z; // @[PositDivisionSqrt.scala 66:22]
  reg [31:0] _RAND_2;
  reg  isZero_Z; // @[PositDivisionSqrt.scala 67:22]
  reg [31:0] _RAND_3;
  reg [3:0] scale_Z; // @[PositDivisionSqrt.scala 68:22]
  reg [31:0] _RAND_4;
  reg  signB_Z; // @[PositDivisionSqrt.scala 69:28]
  reg [31:0] _RAND_5;
  reg [1:0] fractB_Z; // @[PositDivisionSqrt.scala 70:22]
  reg [31:0] _RAND_6;
  reg [8:0] rem_Z; // @[PositDivisionSqrt.scala 71:22]
  reg [31:0] _RAND_7;
  reg [8:0] sigX_Z; // @[PositDivisionSqrt.scala 72:22]
  reg [31:0] _RAND_8;
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
  wire [1:0] decA_fraction; // @[Shift.scala 16:10]
  wire  _T_32; // @[convert.scala 25:26]
  wire [1:0] _T_34; // @[convert.scala 25:42]
  wire [2:0] _T_35; // @[Cat.scala 29:58]
  wire [3:0] _T_37; // @[convert.scala 29:56]
  wire  _T_38; // @[convert.scala 29:60]
  wire  _T_39; // @[convert.scala 29:41]
  wire  decA_isNaR; // @[convert.scala 29:39]
  wire  _T_42; // @[convert.scala 30:19]
  wire  decA_isZero; // @[convert.scala 30:41]
  wire [2:0] decA_scale; // @[convert.scala 32:24]
  wire  _T_51; // @[convert.scala 18:24]
  wire  _T_52; // @[convert.scala 18:40]
  wire  _T_53; // @[convert.scala 18:36]
  wire [2:0] _T_54; // @[convert.scala 19:24]
  wire [2:0] _T_55; // @[convert.scala 19:43]
  wire [2:0] _T_56; // @[convert.scala 19:39]
  wire [1:0] _T_57; // @[LZD.scala 43:32]
  wire  _T_58; // @[LZD.scala 39:14]
  wire  _T_59; // @[LZD.scala 39:21]
  wire  _T_60; // @[LZD.scala 39:30]
  wire  _T_61; // @[LZD.scala 39:27]
  wire  _T_62; // @[LZD.scala 39:25]
  wire [1:0] _T_63; // @[Cat.scala 29:58]
  wire  _T_64; // @[LZD.scala 44:32]
  wire  _T_66; // @[Shift.scala 12:21]
  wire  _T_68; // @[LZD.scala 55:32]
  wire  _T_69; // @[LZD.scala 55:20]
  wire [1:0] _T_70; // @[Cat.scala 29:58]
  wire [1:0] _T_71; // @[convert.scala 21:22]
  wire [1:0] _T_72; // @[convert.scala 22:36]
  wire  _T_73; // @[Shift.scala 16:24]
  wire  _T_74; // @[Shift.scala 17:37]
  wire  _T_76; // @[Shift.scala 64:52]
  wire [1:0] _T_77; // @[Cat.scala 29:58]
  wire [1:0] _T_78; // @[Shift.scala 64:27]
  wire [1:0] decB_fraction; // @[Shift.scala 16:10]
  wire  _T_82; // @[convert.scala 25:26]
  wire [1:0] _T_84; // @[convert.scala 25:42]
  wire [2:0] _T_85; // @[Cat.scala 29:58]
  wire [3:0] _T_87; // @[convert.scala 29:56]
  wire  _T_88; // @[convert.scala 29:60]
  wire  _T_89; // @[convert.scala 29:41]
  wire  decB_isNaR; // @[convert.scala 29:39]
  wire  _T_92; // @[convert.scala 30:19]
  wire  decB_isZero; // @[convert.scala 30:41]
  wire [2:0] decB_scale; // @[convert.scala 32:24]
  wire [2:0] _T_101; // @[Bitwise.scala 71:12]
  wire  _T_102; // @[PositDivisionSqrt.scala 80:40]
  wire [8:0] sigA_S; // @[Cat.scala 29:58]
  wire  _T_105; // @[PositDivisionSqrt.scala 82:31]
  wire [8:0] sigB_S; // @[Cat.scala 29:58]
  wire  _T_108; // @[PositDivisionSqrt.scala 85:25]
  wire  invalidSqrt; // @[PositDivisionSqrt.scala 85:37]
  wire  _T_109; // @[PositDivisionSqrt.scala 88:42]
  wire  _T_110; // @[PositDivisionSqrt.scala 89:42]
  wire  _T_111; // @[PositDivisionSqrt.scala 89:56]
  wire  _T_112; // @[PositDivisionSqrt.scala 94:46]
  wire  _T_113; // @[PositDivisionSqrt.scala 94:43]
  wire  _T_114; // @[PositDivisionSqrt.scala 94:62]
  wire  _T_115; // @[PositDivisionSqrt.scala 94:59]
  wire  specialCaseA_S; // @[PositDivisionSqrt.scala 97:38]
  wire  specialCaseB_S; // @[PositDivisionSqrt.scala 98:38]
  wire  _T_116; // @[PositDivisionSqrt.scala 99:27]
  wire  _T_117; // @[PositDivisionSqrt.scala 99:46]
  wire  normalCase_S_div; // @[PositDivisionSqrt.scala 99:43]
  wire  normalCase_S_sqrt; // @[PositDivisionSqrt.scala 100:43]
  wire  normalCase_S; // @[PositDivisionSqrt.scala 101:30]
  wire [3:0] sExpQuot_S_div; // @[PositDivisionSqrt.scala 103:38]
  wire  _T_120; // @[PositDivisionSqrt.scala 104:50]
  wire  oddSqrt_S; // @[PositDivisionSqrt.scala 104:37]
  wire  idle; // @[PositDivisionSqrt.scala 109:39]
  wire  ready; // @[PositDivisionSqrt.scala 110:39]
  wire  entering; // @[PositDivisionSqrt.scala 111:35]
  wire  entering_normalCase; // @[PositDivisionSqrt.scala 112:38]
  wire  _T_121; // @[PositDivisionSqrt.scala 113:35]
  wire  _T_122; // @[PositDivisionSqrt.scala 113:58]
  wire  scaleNotChange; // @[PositDivisionSqrt.scala 113:50]
  wire  _T_123; // @[PositDivisionSqrt.scala 114:39]
  wire  skipCycle2; // @[PositDivisionSqrt.scala 114:48]
  wire  _T_124; // @[PositDivisionSqrt.scala 116:8]
  wire  _T_125; // @[PositDivisionSqrt.scala 116:14]
  wire  _T_126; // @[PositDivisionSqrt.scala 117:32]
  wire  _T_127; // @[PositDivisionSqrt.scala 117:30]
  wire [3:0] _T_129; // @[PositDivisionSqrt.scala 119:26]
  wire [3:0] _T_130; // @[PositDivisionSqrt.scala 118:20]
  wire [3:0] _GEN_9; // @[PositDivisionSqrt.scala 117:64]
  wire [3:0] _T_131; // @[PositDivisionSqrt.scala 117:64]
  wire  _T_133; // @[PositDivisionSqrt.scala 123:30]
  wire  _T_134; // @[PositDivisionSqrt.scala 123:27]
  wire [3:0] _T_136; // @[PositDivisionSqrt.scala 123:52]
  wire [3:0] _T_137; // @[PositDivisionSqrt.scala 123:20]
  wire [3:0] _T_138; // @[PositDivisionSqrt.scala 122:64]
  wire  _T_140; // @[PositDivisionSqrt.scala 124:27]
  wire [3:0] _GEN_10; // @[PositDivisionSqrt.scala 123:64]
  wire [3:0] _T_142; // @[PositDivisionSqrt.scala 123:64]
  wire [1:0] _T_143; // @[PositDivisionSqrt.scala 134:42]
  wire  _T_145; // @[PositDivisionSqrt.scala 137:31]
  wire  _T_146; // @[PositDivisionSqrt.scala 137:28]
  wire [15:0] _T_147; // @[PositDivisionSqrt.scala 146:22]
  wire [13:0] _T_148; // @[PositDivisionSqrt.scala 146:35]
  wire  _T_149; // @[PositDivisionSqrt.scala 148:26]
  wire  _T_150; // @[PositDivisionSqrt.scala 148:23]
  wire [8:0] _T_151; // @[PositDivisionSqrt.scala 148:16]
  wire  _T_152; // @[PositDivisionSqrt.scala 149:23]
  wire [9:0] _T_153; // @[PositDivisionSqrt.scala 149:46]
  wire [8:0] _T_154; // @[PositDivisionSqrt.scala 149:56]
  wire [8:0] _T_155; // @[PositDivisionSqrt.scala 149:16]
  wire [8:0] _T_156; // @[PositDivisionSqrt.scala 148:66]
  wire  _T_157; // @[PositDivisionSqrt.scala 150:17]
  wire [8:0] _T_158; // @[PositDivisionSqrt.scala 150:16]
  wire [8:0] rem; // @[PositDivisionSqrt.scala 149:66]
  wire  _T_160; // @[PositDivisionSqrt.scala 152:29]
  wire [8:0] _T_161; // @[PositDivisionSqrt.scala 152:22]
  wire  _T_162; // @[PositDivisionSqrt.scala 153:29]
  wire [5:0] _T_163; // @[PositDivisionSqrt.scala 153:22]
  wire [8:0] _GEN_11; // @[PositDivisionSqrt.scala 152:93]
  wire [8:0] _T_164; // @[PositDivisionSqrt.scala 152:93]
  wire  _T_166; // @[PositDivisionSqrt.scala 154:33]
  wire  _T_167; // @[PositDivisionSqrt.scala 154:30]
  wire  _T_168; // @[PositDivisionSqrt.scala 154:57]
  wire [8:0] _T_171; // @[Cat.scala 29:58]
  wire [8:0] _T_172; // @[PositDivisionSqrt.scala 154:22]
  wire [8:0] _T_173; // @[PositDivisionSqrt.scala 153:93]
  wire  _T_175; // @[PositDivisionSqrt.scala 155:30]
  wire  _T_176; // @[PositDivisionSqrt.scala 156:83]
  wire [4:0] _T_178; // @[Bitwise.scala 71:12]
  wire [7:0] bitMask; // @[PositDivisionSqrt.scala 145:21 PositDivisionSqrt.scala 146:14]
  wire [7:0] _GEN_12; // @[PositDivisionSqrt.scala 156:53]
  wire [7:0] _T_179; // @[PositDivisionSqrt.scala 156:53]
  wire [8:0] _GEN_13; // @[PositDivisionSqrt.scala 155:51]
  wire [8:0] _T_180; // @[PositDivisionSqrt.scala 155:51]
  wire [6:0] _T_181; // @[PositDivisionSqrt.scala 157:53]
  wire [8:0] _GEN_14; // @[PositDivisionSqrt.scala 156:89]
  wire [8:0] _T_182; // @[PositDivisionSqrt.scala 156:89]
  wire [8:0] _T_183; // @[PositDivisionSqrt.scala 155:22]
  wire [8:0] trialTerm; // @[PositDivisionSqrt.scala 154:93]
  wire  _T_185; // @[PositDivisionSqrt.scala 162:56]
  wire  _T_186; // @[PositDivisionSqrt.scala 162:40]
  wire [8:0] _T_189; // @[PositDivisionSqrt.scala 163:97]
  wire [8:0] _T_191; // @[PositDivisionSqrt.scala 164:97]
  wire [8:0] _T_192; // @[PositDivisionSqrt.scala 161:92]
  wire [9:0] _T_197; // @[PositDivisionSqrt.scala 168:98]
  wire [8:0] _T_198; // @[PositDivisionSqrt.scala 168:108]
  wire [8:0] _T_200; // @[PositDivisionSqrt.scala 168:112]
  wire [8:0] _T_204; // @[PositDivisionSqrt.scala 169:112]
  wire [8:0] _T_205; // @[PositDivisionSqrt.scala 166:26]
  wire [8:0] trialRem; // @[PositDivisionSqrt.scala 159:27]
  wire  _T_206; // @[PositDivisionSqrt.scala 173:35]
  wire  trIsZero; // @[PositDivisionSqrt.scala 173:25]
  wire  _T_207; // @[PositDivisionSqrt.scala 174:30]
  wire  remIsZero; // @[PositDivisionSqrt.scala 174:25]
  wire  _T_209; // @[PositDivisionSqrt.scala 176:64]
  wire  _T_210; // @[PositDivisionSqrt.scala 176:49]
  wire  _T_211; // @[PositDivisionSqrt.scala 176:29]
  wire  _T_212; // @[PositDivisionSqrt.scala 178:61]
  wire  _T_213; // @[PositDivisionSqrt.scala 178:49]
  wire  _T_215; // @[Mux.scala 87:16]
  wire  newBit; // @[Mux.scala 87:16]
  wire  _T_216; // @[PositDivisionSqrt.scala 183:41]
  wire  _T_217; // @[PositDivisionSqrt.scala 183:51]
  wire  _T_218; // @[PositDivisionSqrt.scala 183:48]
  wire  _T_219; // @[PositDivisionSqrt.scala 183:28]
  wire  _T_222; // @[PositDivisionSqrt.scala 187:39]
  wire  _T_223; // @[PositDivisionSqrt.scala 187:28]
  wire [8:0] _T_226; // @[PositDivisionSqrt.scala 188:47]
  wire [8:0] _T_227; // @[PositDivisionSqrt.scala 188:18]
  wire [6:0] _T_229; // @[PositDivisionSqrt.scala 189:18]
  wire [8:0] _GEN_15; // @[PositDivisionSqrt.scala 188:78]
  wire [8:0] _T_230; // @[PositDivisionSqrt.scala 188:78]
  wire [8:0] _GEN_16; // @[PositDivisionSqrt.scala 190:47]
  wire [8:0] _T_232; // @[PositDivisionSqrt.scala 190:47]
  wire [8:0] _T_233; // @[PositDivisionSqrt.scala 190:18]
  wire [8:0] _T_234; // @[PositDivisionSqrt.scala 189:78]
  wire [1:0] _T_236; // @[PositDivisionSqrt.scala 196:53]
  wire [1:0] sigXBias; // @[PositDivisionSqrt.scala 196:21]
  wire [8:0] _GEN_17; // @[PositDivisionSqrt.scala 197:25]
  wire [8:0] realSigX; // @[PositDivisionSqrt.scala 197:25]
  wire [1:0] _T_239; // @[PositDivisionSqrt.scala 200:97]
  wire [1:0] _T_240; // @[PositDivisionSqrt.scala 201:97]
  wire [1:0] realFrac; // @[PositDivisionSqrt.scala 198:21]
  wire  _T_241; // @[PositDivisionSqrt.scala 205:33]
  wire  _T_242; // @[PositDivisionSqrt.scala 205:58]
  wire  _T_243; // @[PositDivisionSqrt.scala 205:48]
  wire  scaleNeedSub; // @[PositDivisionSqrt.scala 205:23]
  wire  _T_245; // @[PositDivisionSqrt.scala 206:56]
  wire  notNeedSubTwo; // @[PositDivisionSqrt.scala 206:46]
  wire  scaleSubOne; // @[PositDivisionSqrt.scala 207:36]
  wire  _T_246; // @[PositDivisionSqrt.scala 208:38]
  wire  scaleSubTwo; // @[PositDivisionSqrt.scala 208:36]
  wire [1:0] _T_247; // @[Cat.scala 29:58]
  wire [2:0] _T_248; // @[PositDivisionSqrt.scala 209:63]
  wire [3:0] _GEN_18; // @[PositDivisionSqrt.scala 209:31]
  wire [3:0] _T_250; // @[PositDivisionSqrt.scala 209:31]
  wire [3:0] realExp; // @[PositDivisionSqrt.scala 209:31]
  wire  underflow; // @[PositDivisionSqrt.scala 210:31]
  wire  overflow; // @[PositDivisionSqrt.scala 211:31]
  wire  decQ_sign; // @[PositDivisionSqrt.scala 215:33]
  wire [3:0] _T_252; // @[Mux.scala 87:16]
  wire [3:0] _T_253; // @[Mux.scala 87:16]
  wire [2:0] _T_254; // @[PositDivisionSqrt.scala 224:48]
  wire [2:0] _T_255; // @[PositDivisionSqrt.scala 224:64]
  wire [2:0] decQ_grs; // @[PositDivisionSqrt.scala 224:23]
  wire  outValid; // @[PositDivisionSqrt.scala 229:28]
  wire [2:0] _GEN_19; // @[PositDivisionSqrt.scala 204:27 PositDivisionSqrt.scala 216:23]
  wire [2:0] decQ_scale; // @[PositDivisionSqrt.scala 204:27 PositDivisionSqrt.scala 216:23]
  wire  _T_262; // @[convert.scala 49:36]
  wire [2:0] _T_264; // @[convert.scala 50:36]
  wire [2:0] _T_265; // @[convert.scala 50:36]
  wire [2:0] _T_266; // @[convert.scala 50:28]
  wire  _T_267; // @[convert.scala 51:31]
  wire  _T_268; // @[convert.scala 53:34]
  wire [6:0] _T_271; // @[Cat.scala 29:58]
  wire [2:0] _T_272; // @[Shift.scala 39:17]
  wire  _T_273; // @[Shift.scala 39:24]
  wire [2:0] _T_275; // @[Shift.scala 90:30]
  wire [3:0] _T_276; // @[Shift.scala 90:48]
  wire  _T_277; // @[Shift.scala 90:57]
  wire [2:0] _GEN_20; // @[Shift.scala 90:39]
  wire [2:0] _T_278; // @[Shift.scala 90:39]
  wire  _T_279; // @[Shift.scala 12:21]
  wire  _T_280; // @[Shift.scala 12:21]
  wire [3:0] _T_282; // @[Bitwise.scala 71:12]
  wire [6:0] _T_283; // @[Cat.scala 29:58]
  wire [6:0] _T_284; // @[Shift.scala 91:22]
  wire [1:0] _T_285; // @[Shift.scala 92:77]
  wire [4:0] _T_286; // @[Shift.scala 90:30]
  wire [1:0] _T_287; // @[Shift.scala 90:48]
  wire  _T_288; // @[Shift.scala 90:57]
  wire [4:0] _GEN_21; // @[Shift.scala 90:39]
  wire [4:0] _T_289; // @[Shift.scala 90:39]
  wire  _T_290; // @[Shift.scala 12:21]
  wire  _T_291; // @[Shift.scala 12:21]
  wire [1:0] _T_293; // @[Bitwise.scala 71:12]
  wire [6:0] _T_294; // @[Cat.scala 29:58]
  wire [6:0] _T_295; // @[Shift.scala 91:22]
  wire  _T_296; // @[Shift.scala 92:77]
  wire [5:0] _T_297; // @[Shift.scala 90:30]
  wire  _T_298; // @[Shift.scala 90:48]
  wire [5:0] _GEN_22; // @[Shift.scala 90:39]
  wire [5:0] _T_300; // @[Shift.scala 90:39]
  wire  _T_302; // @[Shift.scala 12:21]
  wire [6:0] _T_303; // @[Cat.scala 29:58]
  wire [6:0] _T_304; // @[Shift.scala 91:22]
  wire [6:0] _T_307; // @[Bitwise.scala 71:12]
  wire [6:0] _T_308; // @[Shift.scala 39:10]
  wire  _T_309; // @[convert.scala 55:31]
  wire  _T_310; // @[convert.scala 56:31]
  wire  _T_311; // @[convert.scala 57:31]
  wire  _T_312; // @[convert.scala 58:31]
  wire [3:0] _T_313; // @[convert.scala 59:69]
  wire  _T_314; // @[convert.scala 59:81]
  wire  _T_315; // @[convert.scala 59:50]
  wire  _T_317; // @[convert.scala 60:81]
  wire  _T_318; // @[convert.scala 61:44]
  wire  _T_319; // @[convert.scala 61:52]
  wire  _T_320; // @[convert.scala 61:36]
  wire  _T_321; // @[convert.scala 62:63]
  wire  _T_322; // @[convert.scala 62:103]
  wire  _T_323; // @[convert.scala 62:60]
  wire [3:0] _GEN_23; // @[convert.scala 63:56]
  wire [3:0] _T_326; // @[convert.scala 63:56]
  wire [4:0] _T_327; // @[Cat.scala 29:58]
  wire [4:0] _T_329; // @[Mux.scala 87:16]
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
  assign decA_fraction = _T_23 ? _T_28 : 2'h0; // @[Shift.scala 16:10]
  assign _T_32 = _T_3 == 1'h0; // @[convert.scala 25:26]
  assign _T_34 = _T_3 ? _T_21 : _T_20; // @[convert.scala 25:42]
  assign _T_35 = {_T_32,_T_34}; // @[Cat.scala 29:58]
  assign _T_37 = io_A[3:0]; // @[convert.scala 29:56]
  assign _T_38 = _T_37 != 4'h0; // @[convert.scala 29:60]
  assign _T_39 = ~ _T_38; // @[convert.scala 29:41]
  assign decA_isNaR = _T_1 & _T_39; // @[convert.scala 29:39]
  assign _T_42 = _T_1 == 1'h0; // @[convert.scala 30:19]
  assign decA_isZero = _T_42 & _T_39; // @[convert.scala 30:41]
  assign decA_scale = $signed(_T_35); // @[convert.scala 32:24]
  assign _T_51 = io_B[4]; // @[convert.scala 18:24]
  assign _T_52 = io_B[3]; // @[convert.scala 18:40]
  assign _T_53 = _T_51 ^ _T_52; // @[convert.scala 18:36]
  assign _T_54 = io_B[3:1]; // @[convert.scala 19:24]
  assign _T_55 = io_B[2:0]; // @[convert.scala 19:43]
  assign _T_56 = _T_54 ^ _T_55; // @[convert.scala 19:39]
  assign _T_57 = _T_56[2:1]; // @[LZD.scala 43:32]
  assign _T_58 = _T_57 != 2'h0; // @[LZD.scala 39:14]
  assign _T_59 = _T_57[1]; // @[LZD.scala 39:21]
  assign _T_60 = _T_57[0]; // @[LZD.scala 39:30]
  assign _T_61 = ~ _T_60; // @[LZD.scala 39:27]
  assign _T_62 = _T_59 | _T_61; // @[LZD.scala 39:25]
  assign _T_63 = {_T_58,_T_62}; // @[Cat.scala 29:58]
  assign _T_64 = _T_56[0:0]; // @[LZD.scala 44:32]
  assign _T_66 = _T_63[1]; // @[Shift.scala 12:21]
  assign _T_68 = _T_63[0:0]; // @[LZD.scala 55:32]
  assign _T_69 = _T_66 ? _T_68 : _T_64; // @[LZD.scala 55:20]
  assign _T_70 = {_T_66,_T_69}; // @[Cat.scala 29:58]
  assign _T_71 = ~ _T_70; // @[convert.scala 21:22]
  assign _T_72 = io_B[1:0]; // @[convert.scala 22:36]
  assign _T_73 = _T_71 < 2'h2; // @[Shift.scala 16:24]
  assign _T_74 = _T_71[0]; // @[Shift.scala 17:37]
  assign _T_76 = _T_72[0:0]; // @[Shift.scala 64:52]
  assign _T_77 = {_T_76,1'h0}; // @[Cat.scala 29:58]
  assign _T_78 = _T_74 ? _T_77 : _T_72; // @[Shift.scala 64:27]
  assign decB_fraction = _T_73 ? _T_78 : 2'h0; // @[Shift.scala 16:10]
  assign _T_82 = _T_53 == 1'h0; // @[convert.scala 25:26]
  assign _T_84 = _T_53 ? _T_71 : _T_70; // @[convert.scala 25:42]
  assign _T_85 = {_T_82,_T_84}; // @[Cat.scala 29:58]
  assign _T_87 = io_B[3:0]; // @[convert.scala 29:56]
  assign _T_88 = _T_87 != 4'h0; // @[convert.scala 29:60]
  assign _T_89 = ~ _T_88; // @[convert.scala 29:41]
  assign decB_isNaR = _T_51 & _T_89; // @[convert.scala 29:39]
  assign _T_92 = _T_51 == 1'h0; // @[convert.scala 30:19]
  assign decB_isZero = _T_92 & _T_89; // @[convert.scala 30:41]
  assign decB_scale = $signed(_T_85); // @[convert.scala 32:24]
  assign _T_101 = _T_1 ? 3'h7 : 3'h0; // @[Bitwise.scala 71:12]
  assign _T_102 = ~ _T_1; // @[PositDivisionSqrt.scala 80:40]
  assign sigA_S = {_T_101,_T_102,decA_fraction,3'h0}; // @[Cat.scala 29:58]
  assign _T_105 = ~ _T_51; // @[PositDivisionSqrt.scala 82:31]
  assign sigB_S = {_T_51,_T_105,decB_fraction,5'h0}; // @[Cat.scala 29:58]
  assign _T_108 = decA_isNaR == 1'h0; // @[PositDivisionSqrt.scala 85:25]
  assign invalidSqrt = _T_108 & _T_1; // @[PositDivisionSqrt.scala 85:37]
  assign _T_109 = decA_isNaR | invalidSqrt; // @[PositDivisionSqrt.scala 88:42]
  assign _T_110 = decA_isNaR | decB_isNaR; // @[PositDivisionSqrt.scala 89:42]
  assign _T_111 = _T_110 | decB_isZero; // @[PositDivisionSqrt.scala 89:56]
  assign _T_112 = decB_isZero == 1'h0; // @[PositDivisionSqrt.scala 94:46]
  assign _T_113 = decA_isZero & _T_112; // @[PositDivisionSqrt.scala 94:43]
  assign _T_114 = decB_isNaR == 1'h0; // @[PositDivisionSqrt.scala 94:62]
  assign _T_115 = _T_113 & _T_114; // @[PositDivisionSqrt.scala 94:59]
  assign specialCaseA_S = decA_isNaR | decA_isZero; // @[PositDivisionSqrt.scala 97:38]
  assign specialCaseB_S = decB_isNaR | decB_isZero; // @[PositDivisionSqrt.scala 98:38]
  assign _T_116 = specialCaseA_S == 1'h0; // @[PositDivisionSqrt.scala 99:27]
  assign _T_117 = specialCaseB_S == 1'h0; // @[PositDivisionSqrt.scala 99:46]
  assign normalCase_S_div = _T_116 & _T_117; // @[PositDivisionSqrt.scala 99:43]
  assign normalCase_S_sqrt = _T_116 & _T_42; // @[PositDivisionSqrt.scala 100:43]
  assign normalCase_S = io_sqrtOp ? normalCase_S_sqrt : normalCase_S_div; // @[PositDivisionSqrt.scala 101:30]
  assign sExpQuot_S_div = $signed(decA_scale) - $signed(decB_scale); // @[PositDivisionSqrt.scala 103:38]
  assign _T_120 = decA_scale[0]; // @[PositDivisionSqrt.scala 104:50]
  assign oddSqrt_S = io_sqrtOp & _T_120; // @[PositDivisionSqrt.scala 104:37]
  assign idle = cycleNum == 4'h0; // @[PositDivisionSqrt.scala 109:39]
  assign ready = cycleNum <= 4'h1; // @[PositDivisionSqrt.scala 110:39]
  assign entering = ready & io_inValid; // @[PositDivisionSqrt.scala 111:35]
  assign entering_normalCase = entering & normalCase_S; // @[PositDivisionSqrt.scala 112:38]
  assign _T_121 = sigX_Z[8]; // @[PositDivisionSqrt.scala 113:35]
  assign _T_122 = sigX_Z[6]; // @[PositDivisionSqrt.scala 113:58]
  assign scaleNotChange = _T_121 ^ _T_122; // @[PositDivisionSqrt.scala 113:50]
  assign _T_123 = cycleNum == 4'h3; // @[PositDivisionSqrt.scala 114:39]
  assign skipCycle2 = _T_123 & scaleNotChange; // @[PositDivisionSqrt.scala 114:48]
  assign _T_124 = idle == 1'h0; // @[PositDivisionSqrt.scala 116:8]
  assign _T_125 = _T_124 | io_inValid; // @[PositDivisionSqrt.scala 116:14]
  assign _T_126 = normalCase_S == 1'h0; // @[PositDivisionSqrt.scala 117:32]
  assign _T_127 = entering & _T_126; // @[PositDivisionSqrt.scala 117:30]
  assign _T_129 = io_sqrtOp ? 4'h7 : 4'h9; // @[PositDivisionSqrt.scala 119:26]
  assign _T_130 = entering_normalCase ? _T_129 : 4'h0; // @[PositDivisionSqrt.scala 118:20]
  assign _GEN_9 = {{3'd0}, _T_127}; // @[PositDivisionSqrt.scala 117:64]
  assign _T_131 = _GEN_9 | _T_130; // @[PositDivisionSqrt.scala 117:64]
  assign _T_133 = skipCycle2 == 1'h0; // @[PositDivisionSqrt.scala 123:30]
  assign _T_134 = _T_124 & _T_133; // @[PositDivisionSqrt.scala 123:27]
  assign _T_136 = cycleNum - 4'h1; // @[PositDivisionSqrt.scala 123:52]
  assign _T_137 = _T_134 ? _T_136 : 4'h0; // @[PositDivisionSqrt.scala 123:20]
  assign _T_138 = _T_131 | _T_137; // @[PositDivisionSqrt.scala 122:64]
  assign _T_140 = _T_124 & skipCycle2; // @[PositDivisionSqrt.scala 124:27]
  assign _GEN_10 = {{3'd0}, _T_140}; // @[PositDivisionSqrt.scala 123:64]
  assign _T_142 = _T_138 | _GEN_10; // @[PositDivisionSqrt.scala 123:64]
  assign _T_143 = decA_scale[2:1]; // @[PositDivisionSqrt.scala 134:42]
  assign _T_145 = io_sqrtOp == 1'h0; // @[PositDivisionSqrt.scala 137:31]
  assign _T_146 = entering_normalCase & _T_145; // @[PositDivisionSqrt.scala 137:28]
  assign _T_147 = 16'h1 << cycleNum; // @[PositDivisionSqrt.scala 146:22]
  assign _T_148 = _T_147[15:2]; // @[PositDivisionSqrt.scala 146:35]
  assign _T_149 = oddSqrt_S == 1'h0; // @[PositDivisionSqrt.scala 148:26]
  assign _T_150 = ready & _T_149; // @[PositDivisionSqrt.scala 148:23]
  assign _T_151 = _T_150 ? sigA_S : 9'h0; // @[PositDivisionSqrt.scala 148:16]
  assign _T_152 = ready & oddSqrt_S; // @[PositDivisionSqrt.scala 149:23]
  assign _T_153 = {sigA_S, 1'h0}; // @[PositDivisionSqrt.scala 149:46]
  assign _T_154 = _T_153[8:0]; // @[PositDivisionSqrt.scala 149:56]
  assign _T_155 = _T_152 ? _T_154 : 9'h0; // @[PositDivisionSqrt.scala 149:16]
  assign _T_156 = _T_151 | _T_155; // @[PositDivisionSqrt.scala 148:66]
  assign _T_157 = ready == 1'h0; // @[PositDivisionSqrt.scala 150:17]
  assign _T_158 = _T_157 ? rem_Z : 9'h0; // @[PositDivisionSqrt.scala 150:16]
  assign rem = _T_156 | _T_158; // @[PositDivisionSqrt.scala 149:66]
  assign _T_160 = ready & _T_145; // @[PositDivisionSqrt.scala 152:29]
  assign _T_161 = _T_160 ? sigB_S : 9'h0; // @[PositDivisionSqrt.scala 152:22]
  assign _T_162 = ready & io_sqrtOp; // @[PositDivisionSqrt.scala 153:29]
  assign _T_163 = _T_162 ? 6'h20 : 6'h0; // @[PositDivisionSqrt.scala 153:22]
  assign _GEN_11 = {{3'd0}, _T_163}; // @[PositDivisionSqrt.scala 152:93]
  assign _T_164 = _T_161 | _GEN_11; // @[PositDivisionSqrt.scala 152:93]
  assign _T_166 = sqrtOp_Z == 1'h0; // @[PositDivisionSqrt.scala 154:33]
  assign _T_167 = _T_157 & _T_166; // @[PositDivisionSqrt.scala 154:30]
  assign _T_168 = ~ signB_Z; // @[PositDivisionSqrt.scala 154:57]
  assign _T_171 = {signB_Z,_T_168,fractB_Z,5'h0}; // @[Cat.scala 29:58]
  assign _T_172 = _T_167 ? _T_171 : 9'h0; // @[PositDivisionSqrt.scala 154:22]
  assign _T_173 = _T_164 | _T_172; // @[PositDivisionSqrt.scala 153:93]
  assign _T_175 = _T_157 & sqrtOp_Z; // @[PositDivisionSqrt.scala 155:30]
  assign _T_176 = rem[8:8]; // @[PositDivisionSqrt.scala 156:83]
  assign _T_178 = _T_176 ? 5'h1f : 5'h0; // @[Bitwise.scala 71:12]
  assign bitMask = _T_148[7:0]; // @[PositDivisionSqrt.scala 145:21 PositDivisionSqrt.scala 146:14]
  assign _GEN_12 = {{3'd0}, _T_178}; // @[PositDivisionSqrt.scala 156:53]
  assign _T_179 = bitMask & _GEN_12; // @[PositDivisionSqrt.scala 156:53]
  assign _GEN_13 = {{1'd0}, _T_179}; // @[PositDivisionSqrt.scala 155:51]
  assign _T_180 = sigX_Z | _GEN_13; // @[PositDivisionSqrt.scala 155:51]
  assign _T_181 = bitMask[7:1]; // @[PositDivisionSqrt.scala 157:53]
  assign _GEN_14 = {{2'd0}, _T_181}; // @[PositDivisionSqrt.scala 156:89]
  assign _T_182 = _T_180 | _GEN_14; // @[PositDivisionSqrt.scala 156:89]
  assign _T_183 = _T_175 ? _T_182 : 9'h0; // @[PositDivisionSqrt.scala 155:22]
  assign trialTerm = _T_173 | _T_183; // @[PositDivisionSqrt.scala 154:93]
  assign _T_185 = trialTerm[8:8]; // @[PositDivisionSqrt.scala 162:56]
  assign _T_186 = _T_176 ^ _T_185; // @[PositDivisionSqrt.scala 162:40]
  assign _T_189 = rem + trialTerm; // @[PositDivisionSqrt.scala 163:97]
  assign _T_191 = rem - trialTerm; // @[PositDivisionSqrt.scala 164:97]
  assign _T_192 = _T_186 ? _T_189 : _T_191; // @[PositDivisionSqrt.scala 161:92]
  assign _T_197 = {rem, 1'h0}; // @[PositDivisionSqrt.scala 168:98]
  assign _T_198 = _T_197[8:0]; // @[PositDivisionSqrt.scala 168:108]
  assign _T_200 = _T_198 + trialTerm; // @[PositDivisionSqrt.scala 168:112]
  assign _T_204 = _T_198 - trialTerm; // @[PositDivisionSqrt.scala 169:112]
  assign _T_205 = _T_186 ? _T_200 : _T_204; // @[PositDivisionSqrt.scala 166:26]
  assign trialRem = ready ? _T_192 : _T_205; // @[PositDivisionSqrt.scala 159:27]
  assign _T_206 = trialRem != 9'h0; // @[PositDivisionSqrt.scala 173:35]
  assign trIsZero = _T_206 == 1'h0; // @[PositDivisionSqrt.scala 173:25]
  assign _T_207 = rem != 9'h0; // @[PositDivisionSqrt.scala 174:30]
  assign remIsZero = _T_207 == 1'h0; // @[PositDivisionSqrt.scala 174:25]
  assign _T_209 = trialRem[8:8]; // @[PositDivisionSqrt.scala 176:64]
  assign _T_210 = _T_185 ^ _T_209; // @[PositDivisionSqrt.scala 176:49]
  assign _T_211 = ~ _T_210; // @[PositDivisionSqrt.scala 176:29]
  assign _T_212 = sigX_Z[8:8]; // @[PositDivisionSqrt.scala 178:61]
  assign _T_213 = ~ _T_212; // @[PositDivisionSqrt.scala 178:49]
  assign _T_215 = remIsZero ? _T_212 : _T_211; // @[Mux.scala 87:16]
  assign newBit = trIsZero ? _T_213 : _T_215; // @[Mux.scala 87:16]
  assign _T_216 = cycleNum > 4'h2; // @[PositDivisionSqrt.scala 183:41]
  assign _T_217 = remIsZero == 1'h0; // @[PositDivisionSqrt.scala 183:51]
  assign _T_218 = _T_216 & _T_217; // @[PositDivisionSqrt.scala 183:48]
  assign _T_219 = entering_normalCase | _T_218; // @[PositDivisionSqrt.scala 183:28]
  assign _T_222 = _T_157 & newBit; // @[PositDivisionSqrt.scala 187:39]
  assign _T_223 = entering_normalCase | _T_222; // @[PositDivisionSqrt.scala 187:28]
  assign _T_226 = {newBit, 8'h0}; // @[PositDivisionSqrt.scala 188:47]
  assign _T_227 = _T_160 ? _T_226 : 9'h0; // @[PositDivisionSqrt.scala 188:18]
  assign _T_229 = _T_162 ? 7'h40 : 7'h0; // @[PositDivisionSqrt.scala 189:18]
  assign _GEN_15 = {{2'd0}, _T_229}; // @[PositDivisionSqrt.scala 188:78]
  assign _T_230 = _T_227 | _GEN_15; // @[PositDivisionSqrt.scala 188:78]
  assign _GEN_16 = {{1'd0}, bitMask}; // @[PositDivisionSqrt.scala 190:47]
  assign _T_232 = sigX_Z | _GEN_16; // @[PositDivisionSqrt.scala 190:47]
  assign _T_233 = _T_157 ? _T_232 : 9'h0; // @[PositDivisionSqrt.scala 190:18]
  assign _T_234 = _T_230 | _T_233; // @[PositDivisionSqrt.scala 189:78]
  assign _T_236 = {_T_212, 1'h0}; // @[PositDivisionSqrt.scala 196:53]
  assign sigXBias = scaleNotChange ? _T_236 : {{1'd0}, _T_212}; // @[PositDivisionSqrt.scala 196:21]
  assign _GEN_17 = {{7'd0}, sigXBias}; // @[PositDivisionSqrt.scala 197:25]
  assign realSigX = sigX_Z + _GEN_17; // @[PositDivisionSqrt.scala 197:25]
  assign _T_239 = realSigX[5:4]; // @[PositDivisionSqrt.scala 200:97]
  assign _T_240 = realSigX[4:3]; // @[PositDivisionSqrt.scala 201:97]
  assign realFrac = scaleNotChange ? _T_239 : _T_240; // @[PositDivisionSqrt.scala 198:21]
  assign _T_241 = realSigX[8]; // @[PositDivisionSqrt.scala 205:33]
  assign _T_242 = realSigX[6]; // @[PositDivisionSqrt.scala 205:58]
  assign _T_243 = _T_241 ^ _T_242; // @[PositDivisionSqrt.scala 205:48]
  assign scaleNeedSub = ~ _T_243; // @[PositDivisionSqrt.scala 205:23]
  assign _T_245 = realSigX[5]; // @[PositDivisionSqrt.scala 206:56]
  assign notNeedSubTwo = _T_241 ^ _T_245; // @[PositDivisionSqrt.scala 206:46]
  assign scaleSubOne = scaleNeedSub & notNeedSubTwo; // @[PositDivisionSqrt.scala 207:36]
  assign _T_246 = ~ notNeedSubTwo; // @[PositDivisionSqrt.scala 208:38]
  assign scaleSubTwo = scaleNeedSub & _T_246; // @[PositDivisionSqrt.scala 208:36]
  assign _T_247 = {scaleSubTwo,scaleSubOne}; // @[Cat.scala 29:58]
  assign _T_248 = {1'b0,$signed(_T_247)}; // @[PositDivisionSqrt.scala 209:63]
  assign _GEN_18 = {{1{_T_248[2]}},_T_248}; // @[PositDivisionSqrt.scala 209:31]
  assign _T_250 = $signed(scale_Z) - $signed(_GEN_18); // @[PositDivisionSqrt.scala 209:31]
  assign realExp = $signed(_T_250); // @[PositDivisionSqrt.scala 209:31]
  assign underflow = $signed(realExp) < $signed(-4'sh4); // @[PositDivisionSqrt.scala 210:31]
  assign overflow = $signed(realExp) > $signed(4'sh3); // @[PositDivisionSqrt.scala 211:31]
  assign decQ_sign = realSigX[8:8]; // @[PositDivisionSqrt.scala 215:33]
  assign _T_252 = underflow ? $signed(-4'sh4) : $signed(realExp); // @[Mux.scala 87:16]
  assign _T_253 = overflow ? $signed(4'sh3) : $signed(_T_252); // @[Mux.scala 87:16]
  assign _T_254 = realSigX[3:1]; // @[PositDivisionSqrt.scala 224:48]
  assign _T_255 = realSigX[2:0]; // @[PositDivisionSqrt.scala 224:64]
  assign decQ_grs = scaleNotChange ? _T_254 : _T_255; // @[PositDivisionSqrt.scala 224:23]
  assign outValid = cycleNum == 4'h1; // @[PositDivisionSqrt.scala 229:28]
  assign _GEN_19 = _T_253[2:0]; // @[PositDivisionSqrt.scala 204:27 PositDivisionSqrt.scala 216:23]
  assign decQ_scale = $signed(_GEN_19); // @[PositDivisionSqrt.scala 204:27 PositDivisionSqrt.scala 216:23]
  assign _T_262 = decQ_scale[2:2]; // @[convert.scala 49:36]
  assign _T_264 = ~ decQ_scale; // @[convert.scala 50:36]
  assign _T_265 = $signed(_T_264); // @[convert.scala 50:36]
  assign _T_266 = _T_262 ? $signed(_T_265) : $signed(decQ_scale); // @[convert.scala 50:28]
  assign _T_267 = _T_262 ^ decQ_sign; // @[convert.scala 51:31]
  assign _T_268 = ~ _T_267; // @[convert.scala 53:34]
  assign _T_271 = {_T_268,_T_267,realFrac,decQ_grs}; // @[Cat.scala 29:58]
  assign _T_272 = $unsigned(_T_266); // @[Shift.scala 39:17]
  assign _T_273 = _T_272 < 3'h7; // @[Shift.scala 39:24]
  assign _T_275 = _T_271[6:4]; // @[Shift.scala 90:30]
  assign _T_276 = _T_271[3:0]; // @[Shift.scala 90:48]
  assign _T_277 = _T_276 != 4'h0; // @[Shift.scala 90:57]
  assign _GEN_20 = {{2'd0}, _T_277}; // @[Shift.scala 90:39]
  assign _T_278 = _T_275 | _GEN_20; // @[Shift.scala 90:39]
  assign _T_279 = _T_272[2]; // @[Shift.scala 12:21]
  assign _T_280 = _T_271[6]; // @[Shift.scala 12:21]
  assign _T_282 = _T_280 ? 4'hf : 4'h0; // @[Bitwise.scala 71:12]
  assign _T_283 = {_T_282,_T_278}; // @[Cat.scala 29:58]
  assign _T_284 = _T_279 ? _T_283 : _T_271; // @[Shift.scala 91:22]
  assign _T_285 = _T_272[1:0]; // @[Shift.scala 92:77]
  assign _T_286 = _T_284[6:2]; // @[Shift.scala 90:30]
  assign _T_287 = _T_284[1:0]; // @[Shift.scala 90:48]
  assign _T_288 = _T_287 != 2'h0; // @[Shift.scala 90:57]
  assign _GEN_21 = {{4'd0}, _T_288}; // @[Shift.scala 90:39]
  assign _T_289 = _T_286 | _GEN_21; // @[Shift.scala 90:39]
  assign _T_290 = _T_285[1]; // @[Shift.scala 12:21]
  assign _T_291 = _T_284[6]; // @[Shift.scala 12:21]
  assign _T_293 = _T_291 ? 2'h3 : 2'h0; // @[Bitwise.scala 71:12]
  assign _T_294 = {_T_293,_T_289}; // @[Cat.scala 29:58]
  assign _T_295 = _T_290 ? _T_294 : _T_284; // @[Shift.scala 91:22]
  assign _T_296 = _T_285[0:0]; // @[Shift.scala 92:77]
  assign _T_297 = _T_295[6:1]; // @[Shift.scala 90:30]
  assign _T_298 = _T_295[0:0]; // @[Shift.scala 90:48]
  assign _GEN_22 = {{5'd0}, _T_298}; // @[Shift.scala 90:39]
  assign _T_300 = _T_297 | _GEN_22; // @[Shift.scala 90:39]
  assign _T_302 = _T_295[6]; // @[Shift.scala 12:21]
  assign _T_303 = {_T_302,_T_300}; // @[Cat.scala 29:58]
  assign _T_304 = _T_296 ? _T_303 : _T_295; // @[Shift.scala 91:22]
  assign _T_307 = _T_280 ? 7'h7f : 7'h0; // @[Bitwise.scala 71:12]
  assign _T_308 = _T_273 ? _T_304 : _T_307; // @[Shift.scala 39:10]
  assign _T_309 = _T_308[3]; // @[convert.scala 55:31]
  assign _T_310 = _T_308[2]; // @[convert.scala 56:31]
  assign _T_311 = _T_308[1]; // @[convert.scala 57:31]
  assign _T_312 = _T_308[0]; // @[convert.scala 58:31]
  assign _T_313 = _T_308[6:3]; // @[convert.scala 59:69]
  assign _T_314 = _T_313 != 4'h0; // @[convert.scala 59:81]
  assign _T_315 = ~ _T_314; // @[convert.scala 59:50]
  assign _T_317 = _T_313 == 4'hf; // @[convert.scala 60:81]
  assign _T_318 = _T_309 | _T_311; // @[convert.scala 61:44]
  assign _T_319 = _T_318 | _T_312; // @[convert.scala 61:52]
  assign _T_320 = _T_310 & _T_319; // @[convert.scala 61:36]
  assign _T_321 = ~ _T_317; // @[convert.scala 62:63]
  assign _T_322 = _T_321 & _T_320; // @[convert.scala 62:103]
  assign _T_323 = _T_315 | _T_322; // @[convert.scala 62:60]
  assign _GEN_23 = {{3'd0}, _T_323}; // @[convert.scala 63:56]
  assign _T_326 = _T_313 + _GEN_23; // @[convert.scala 63:56]
  assign _T_327 = {decQ_sign,_T_326}; // @[Cat.scala 29:58]
  assign _T_329 = isZero_Z ? 5'h0 : _T_327; // @[Mux.scala 87:16]
  assign io_inReady = cycleNum <= 4'h1; // @[PositDivisionSqrt.scala 231:17]
  assign io_diviValid = outValid & _T_166; // @[PositDivisionSqrt.scala 232:17]
  assign io_sqrtValid = outValid & sqrtOp_Z; // @[PositDivisionSqrt.scala 233:17]
  assign io_invalidExc = isNaR_Z; // @[PositDivisionSqrt.scala 234:17]
  assign io_Q = isNaR_Z ? 5'h10 : _T_329; // @[PositDivisionSqrt.scala 235:17]
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
  cycleNum = _RAND_0[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  sqrtOp_Z = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  isNaR_Z = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  isZero_Z = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  scale_Z = _RAND_4[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  signB_Z = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  fractB_Z = _RAND_6[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  rem_Z = _RAND_7[8:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  sigX_Z = _RAND_8[8:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (reset) begin
      cycleNum <= 4'h0;
    end else begin
      if (_T_125) begin
        cycleNum <= _T_142;
      end
    end
    if (entering) begin
      sqrtOp_Z <= io_sqrtOp;
    end
    if (entering) begin
      if (io_sqrtOp) begin
        isNaR_Z <= _T_109;
      end else begin
        isNaR_Z <= _T_111;
      end
    end
    if (entering) begin
      if (io_sqrtOp) begin
        isZero_Z <= decA_isZero;
      end else begin
        isZero_Z <= _T_115;
      end
    end
    if (entering_normalCase) begin
      if (io_sqrtOp) begin
        scale_Z <= {{2{_T_143[1]}},_T_143};
      end else begin
        scale_Z <= sExpQuot_S_div;
      end
    end
    if (_T_146) begin
      signB_Z <= _T_51;
    end
    if (_T_146) begin
      if (_T_73) begin
        if (_T_74) begin
          fractB_Z <= _T_77;
        end else begin
          fractB_Z <= _T_72;
        end
      end else begin
        fractB_Z <= 2'h0;
      end
    end
    if (_T_219) begin
      if (ready) begin
        if (_T_186) begin
          rem_Z <= _T_189;
        end else begin
          rem_Z <= _T_191;
        end
      end else begin
        if (_T_186) begin
          rem_Z <= _T_200;
        end else begin
          rem_Z <= _T_204;
        end
      end
    end
    if (_T_223) begin
      sigX_Z <= _T_234;
    end
  end
endmodule
