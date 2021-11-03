module PositDivSqrter4_0(
  input        clock,
  input        reset,
  output       io_inReady,
  input        io_inValid,
  input        io_sqrtOp,
  input  [3:0] io_A,
  input  [3:0] io_B,
  output       io_diviValid,
  output       io_sqrtValid,
  output       io_invalidExc,
  output [3:0] io_Q
);
  reg [2:0] cycleNum; // @[PositDivisionSqrt.scala 63:26]
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
  reg  fractB_Z; // @[PositDivisionSqrt.scala 70:22]
  reg [31:0] _RAND_6;
  reg [7:0] rem_Z; // @[PositDivisionSqrt.scala 71:22]
  reg [31:0] _RAND_7;
  reg [7:0] sigX_Z; // @[PositDivisionSqrt.scala 72:22]
  reg [31:0] _RAND_8;
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
  wire  decA_isNaR; // @[convert.scala 29:39]
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
  wire  decB_isNaR; // @[convert.scala 29:39]
  wire  _T_72; // @[convert.scala 30:19]
  wire  decB_isZero; // @[convert.scala 30:41]
  wire [2:0] decB_scale; // @[convert.scala 32:24]
  wire [2:0] _T_81; // @[Bitwise.scala 71:12]
  wire  _T_82; // @[PositDivisionSqrt.scala 80:40]
  wire [7:0] sigA_S; // @[Cat.scala 29:58]
  wire  _T_85; // @[PositDivisionSqrt.scala 82:31]
  wire [7:0] sigB_S; // @[Cat.scala 29:58]
  wire  _T_88; // @[PositDivisionSqrt.scala 85:25]
  wire  invalidSqrt; // @[PositDivisionSqrt.scala 85:37]
  wire  _T_89; // @[PositDivisionSqrt.scala 88:42]
  wire  _T_90; // @[PositDivisionSqrt.scala 89:42]
  wire  _T_91; // @[PositDivisionSqrt.scala 89:56]
  wire  _T_92; // @[PositDivisionSqrt.scala 94:46]
  wire  _T_93; // @[PositDivisionSqrt.scala 94:43]
  wire  _T_94; // @[PositDivisionSqrt.scala 94:62]
  wire  _T_95; // @[PositDivisionSqrt.scala 94:59]
  wire  specialCaseA_S; // @[PositDivisionSqrt.scala 97:38]
  wire  specialCaseB_S; // @[PositDivisionSqrt.scala 98:38]
  wire  _T_96; // @[PositDivisionSqrt.scala 99:27]
  wire  _T_97; // @[PositDivisionSqrt.scala 99:46]
  wire  normalCase_S_div; // @[PositDivisionSqrt.scala 99:43]
  wire  normalCase_S_sqrt; // @[PositDivisionSqrt.scala 100:43]
  wire  normalCase_S; // @[PositDivisionSqrt.scala 101:30]
  wire [3:0] sExpQuot_S_div; // @[PositDivisionSqrt.scala 103:38]
  wire  _T_100; // @[PositDivisionSqrt.scala 104:50]
  wire  oddSqrt_S; // @[PositDivisionSqrt.scala 104:37]
  wire  idle; // @[PositDivisionSqrt.scala 109:39]
  wire  ready; // @[PositDivisionSqrt.scala 110:39]
  wire  entering; // @[PositDivisionSqrt.scala 111:35]
  wire  entering_normalCase; // @[PositDivisionSqrt.scala 112:38]
  wire  _T_101; // @[PositDivisionSqrt.scala 113:35]
  wire  _T_102; // @[PositDivisionSqrt.scala 113:58]
  wire  scaleNotChange; // @[PositDivisionSqrt.scala 113:50]
  wire  _T_103; // @[PositDivisionSqrt.scala 114:39]
  wire  skipCycle2; // @[PositDivisionSqrt.scala 114:48]
  wire  _T_104; // @[PositDivisionSqrt.scala 116:8]
  wire  _T_105; // @[PositDivisionSqrt.scala 116:14]
  wire  _T_106; // @[PositDivisionSqrt.scala 117:32]
  wire  _T_107; // @[PositDivisionSqrt.scala 117:30]
  wire [3:0] _T_109; // @[PositDivisionSqrt.scala 119:26]
  wire [3:0] _T_110; // @[PositDivisionSqrt.scala 118:20]
  wire [3:0] _GEN_9; // @[PositDivisionSqrt.scala 117:64]
  wire [3:0] _T_111; // @[PositDivisionSqrt.scala 117:64]
  wire  _T_113; // @[PositDivisionSqrt.scala 123:30]
  wire  _T_114; // @[PositDivisionSqrt.scala 123:27]
  wire [2:0] _T_116; // @[PositDivisionSqrt.scala 123:52]
  wire [2:0] _T_117; // @[PositDivisionSqrt.scala 123:20]
  wire [3:0] _GEN_10; // @[PositDivisionSqrt.scala 122:64]
  wire [3:0] _T_118; // @[PositDivisionSqrt.scala 122:64]
  wire  _T_120; // @[PositDivisionSqrt.scala 124:27]
  wire [3:0] _GEN_11; // @[PositDivisionSqrt.scala 123:64]
  wire [3:0] _T_122; // @[PositDivisionSqrt.scala 123:64]
  wire [3:0] _GEN_0; // @[PositDivisionSqrt.scala 116:29]
  wire [1:0] _T_123; // @[PositDivisionSqrt.scala 134:42]
  wire  _T_125; // @[PositDivisionSqrt.scala 137:31]
  wire  _T_126; // @[PositDivisionSqrt.scala 137:28]
  wire [7:0] _T_127; // @[PositDivisionSqrt.scala 146:22]
  wire [5:0] _T_128; // @[PositDivisionSqrt.scala 146:35]
  wire  _T_129; // @[PositDivisionSqrt.scala 148:26]
  wire  _T_130; // @[PositDivisionSqrt.scala 148:23]
  wire [7:0] _T_131; // @[PositDivisionSqrt.scala 148:16]
  wire  _T_132; // @[PositDivisionSqrt.scala 149:23]
  wire [8:0] _T_133; // @[PositDivisionSqrt.scala 149:46]
  wire [7:0] _T_134; // @[PositDivisionSqrt.scala 149:56]
  wire [7:0] _T_135; // @[PositDivisionSqrt.scala 149:16]
  wire [7:0] _T_136; // @[PositDivisionSqrt.scala 148:66]
  wire  _T_137; // @[PositDivisionSqrt.scala 150:17]
  wire [7:0] _T_138; // @[PositDivisionSqrt.scala 150:16]
  wire [7:0] rem; // @[PositDivisionSqrt.scala 149:66]
  wire  _T_140; // @[PositDivisionSqrt.scala 152:29]
  wire [7:0] _T_141; // @[PositDivisionSqrt.scala 152:22]
  wire  _T_142; // @[PositDivisionSqrt.scala 153:29]
  wire [4:0] _T_143; // @[PositDivisionSqrt.scala 153:22]
  wire [7:0] _GEN_12; // @[PositDivisionSqrt.scala 152:93]
  wire [7:0] _T_144; // @[PositDivisionSqrt.scala 152:93]
  wire  _T_146; // @[PositDivisionSqrt.scala 154:33]
  wire  _T_147; // @[PositDivisionSqrt.scala 154:30]
  wire  _T_148; // @[PositDivisionSqrt.scala 154:57]
  wire [7:0] _T_151; // @[Cat.scala 29:58]
  wire [7:0] _T_152; // @[PositDivisionSqrt.scala 154:22]
  wire [7:0] _T_153; // @[PositDivisionSqrt.scala 153:93]
  wire  _T_155; // @[PositDivisionSqrt.scala 155:30]
  wire  _T_156; // @[PositDivisionSqrt.scala 156:83]
  wire [3:0] _T_158; // @[Bitwise.scala 71:12]
  wire [6:0] bitMask; // @[PositDivisionSqrt.scala 145:21 PositDivisionSqrt.scala 146:14]
  wire [6:0] _GEN_13; // @[PositDivisionSqrt.scala 156:53]
  wire [6:0] _T_159; // @[PositDivisionSqrt.scala 156:53]
  wire [7:0] _GEN_14; // @[PositDivisionSqrt.scala 155:51]
  wire [7:0] _T_160; // @[PositDivisionSqrt.scala 155:51]
  wire [5:0] _T_161; // @[PositDivisionSqrt.scala 157:53]
  wire [7:0] _GEN_15; // @[PositDivisionSqrt.scala 156:89]
  wire [7:0] _T_162; // @[PositDivisionSqrt.scala 156:89]
  wire [7:0] _T_163; // @[PositDivisionSqrt.scala 155:22]
  wire [7:0] trialTerm; // @[PositDivisionSqrt.scala 154:93]
  wire  _T_165; // @[PositDivisionSqrt.scala 162:56]
  wire  _T_166; // @[PositDivisionSqrt.scala 162:40]
  wire [7:0] _T_169; // @[PositDivisionSqrt.scala 163:97]
  wire [7:0] _T_171; // @[PositDivisionSqrt.scala 164:97]
  wire [7:0] _T_172; // @[PositDivisionSqrt.scala 161:92]
  wire [8:0] _T_177; // @[PositDivisionSqrt.scala 168:98]
  wire [7:0] _T_178; // @[PositDivisionSqrt.scala 168:108]
  wire [7:0] _T_180; // @[PositDivisionSqrt.scala 168:112]
  wire [7:0] _T_184; // @[PositDivisionSqrt.scala 169:112]
  wire [7:0] _T_185; // @[PositDivisionSqrt.scala 166:26]
  wire [7:0] trialRem; // @[PositDivisionSqrt.scala 159:27]
  wire  _T_186; // @[PositDivisionSqrt.scala 173:35]
  wire  trIsZero; // @[PositDivisionSqrt.scala 173:25]
  wire  _T_187; // @[PositDivisionSqrt.scala 174:30]
  wire  remIsZero; // @[PositDivisionSqrt.scala 174:25]
  wire  _T_189; // @[PositDivisionSqrt.scala 176:64]
  wire  _T_190; // @[PositDivisionSqrt.scala 176:49]
  wire  _T_191; // @[PositDivisionSqrt.scala 176:29]
  wire  _T_192; // @[PositDivisionSqrt.scala 178:61]
  wire  _T_193; // @[PositDivisionSqrt.scala 178:49]
  wire  _T_195; // @[Mux.scala 87:16]
  wire  newBit; // @[Mux.scala 87:16]
  wire  _T_196; // @[PositDivisionSqrt.scala 183:41]
  wire  _T_197; // @[PositDivisionSqrt.scala 183:51]
  wire  _T_198; // @[PositDivisionSqrt.scala 183:48]
  wire  _T_199; // @[PositDivisionSqrt.scala 183:28]
  wire  _T_202; // @[PositDivisionSqrt.scala 187:39]
  wire  _T_203; // @[PositDivisionSqrt.scala 187:28]
  wire [7:0] _T_206; // @[PositDivisionSqrt.scala 188:47]
  wire [7:0] _T_207; // @[PositDivisionSqrt.scala 188:18]
  wire [5:0] _T_209; // @[PositDivisionSqrt.scala 189:18]
  wire [7:0] _GEN_16; // @[PositDivisionSqrt.scala 188:78]
  wire [7:0] _T_210; // @[PositDivisionSqrt.scala 188:78]
  wire [7:0] _GEN_17; // @[PositDivisionSqrt.scala 190:47]
  wire [7:0] _T_212; // @[PositDivisionSqrt.scala 190:47]
  wire [7:0] _T_213; // @[PositDivisionSqrt.scala 190:18]
  wire [7:0] _T_214; // @[PositDivisionSqrt.scala 189:78]
  wire [1:0] _T_216; // @[PositDivisionSqrt.scala 196:53]
  wire [1:0] sigXBias; // @[PositDivisionSqrt.scala 196:21]
  wire [7:0] _GEN_18; // @[PositDivisionSqrt.scala 197:25]
  wire [7:0] realSigX; // @[PositDivisionSqrt.scala 197:25]
  wire  _T_219; // @[PositDivisionSqrt.scala 200:97]
  wire  _T_220; // @[PositDivisionSqrt.scala 201:97]
  wire  realFrac; // @[PositDivisionSqrt.scala 198:21]
  wire  _T_221; // @[PositDivisionSqrt.scala 205:33]
  wire  _T_222; // @[PositDivisionSqrt.scala 205:58]
  wire  _T_223; // @[PositDivisionSqrt.scala 205:48]
  wire  scaleNeedSub; // @[PositDivisionSqrt.scala 205:23]
  wire  notNeedSubTwo; // @[PositDivisionSqrt.scala 206:46]
  wire  scaleSubOne; // @[PositDivisionSqrt.scala 207:36]
  wire  _T_226; // @[PositDivisionSqrt.scala 208:38]
  wire  scaleSubTwo; // @[PositDivisionSqrt.scala 208:36]
  wire [1:0] _T_227; // @[Cat.scala 29:58]
  wire [2:0] _T_228; // @[PositDivisionSqrt.scala 209:63]
  wire [3:0] _GEN_19; // @[PositDivisionSqrt.scala 209:31]
  wire [3:0] _T_230; // @[PositDivisionSqrt.scala 209:31]
  wire [3:0] realExp; // @[PositDivisionSqrt.scala 209:31]
  wire  underflow; // @[PositDivisionSqrt.scala 210:31]
  wire  overflow; // @[PositDivisionSqrt.scala 211:31]
  wire  decQ_sign; // @[PositDivisionSqrt.scala 215:33]
  wire [3:0] _T_232; // @[Mux.scala 87:16]
  wire [3:0] _T_233; // @[Mux.scala 87:16]
  wire [2:0] _T_234; // @[PositDivisionSqrt.scala 224:48]
  wire [2:0] _T_235; // @[PositDivisionSqrt.scala 224:64]
  wire [2:0] decQ_grs; // @[PositDivisionSqrt.scala 224:23]
  wire  outValid; // @[PositDivisionSqrt.scala 229:28]
  wire [2:0] _GEN_20; // @[PositDivisionSqrt.scala 204:27 PositDivisionSqrt.scala 216:23]
  wire [2:0] decQ_scale; // @[PositDivisionSqrt.scala 204:27 PositDivisionSqrt.scala 216:23]
  wire  _T_242; // @[convert.scala 49:36]
  wire [2:0] _T_244; // @[convert.scala 50:36]
  wire [2:0] _T_245; // @[convert.scala 50:36]
  wire [2:0] _T_246; // @[convert.scala 50:28]
  wire  _T_247; // @[convert.scala 51:31]
  wire  _T_248; // @[convert.scala 53:34]
  wire [5:0] _T_251; // @[Cat.scala 29:58]
  wire [2:0] _T_252; // @[Shift.scala 39:17]
  wire  _T_253; // @[Shift.scala 39:24]
  wire [1:0] _T_255; // @[Shift.scala 90:30]
  wire [3:0] _T_256; // @[Shift.scala 90:48]
  wire  _T_257; // @[Shift.scala 90:57]
  wire [1:0] _GEN_21; // @[Shift.scala 90:39]
  wire [1:0] _T_258; // @[Shift.scala 90:39]
  wire  _T_259; // @[Shift.scala 12:21]
  wire  _T_260; // @[Shift.scala 12:21]
  wire [3:0] _T_262; // @[Bitwise.scala 71:12]
  wire [5:0] _T_263; // @[Cat.scala 29:58]
  wire [5:0] _T_264; // @[Shift.scala 91:22]
  wire [1:0] _T_265; // @[Shift.scala 92:77]
  wire [3:0] _T_266; // @[Shift.scala 90:30]
  wire [1:0] _T_267; // @[Shift.scala 90:48]
  wire  _T_268; // @[Shift.scala 90:57]
  wire [3:0] _GEN_22; // @[Shift.scala 90:39]
  wire [3:0] _T_269; // @[Shift.scala 90:39]
  wire  _T_270; // @[Shift.scala 12:21]
  wire  _T_271; // @[Shift.scala 12:21]
  wire [1:0] _T_273; // @[Bitwise.scala 71:12]
  wire [5:0] _T_274; // @[Cat.scala 29:58]
  wire [5:0] _T_275; // @[Shift.scala 91:22]
  wire  _T_276; // @[Shift.scala 92:77]
  wire [4:0] _T_277; // @[Shift.scala 90:30]
  wire  _T_278; // @[Shift.scala 90:48]
  wire [4:0] _GEN_23; // @[Shift.scala 90:39]
  wire [4:0] _T_280; // @[Shift.scala 90:39]
  wire  _T_282; // @[Shift.scala 12:21]
  wire [5:0] _T_283; // @[Cat.scala 29:58]
  wire [5:0] _T_284; // @[Shift.scala 91:22]
  wire [5:0] _T_287; // @[Bitwise.scala 71:12]
  wire [5:0] _T_288; // @[Shift.scala 39:10]
  wire  _T_289; // @[convert.scala 55:31]
  wire  _T_290; // @[convert.scala 56:31]
  wire  _T_291; // @[convert.scala 57:31]
  wire  _T_292; // @[convert.scala 58:31]
  wire [2:0] _T_293; // @[convert.scala 59:69]
  wire  _T_294; // @[convert.scala 59:81]
  wire  _T_295; // @[convert.scala 59:50]
  wire  _T_297; // @[convert.scala 60:81]
  wire  _T_298; // @[convert.scala 61:44]
  wire  _T_299; // @[convert.scala 61:52]
  wire  _T_300; // @[convert.scala 61:36]
  wire  _T_301; // @[convert.scala 62:63]
  wire  _T_302; // @[convert.scala 62:103]
  wire  _T_303; // @[convert.scala 62:60]
  wire [2:0] _GEN_24; // @[convert.scala 63:56]
  wire [2:0] _T_306; // @[convert.scala 63:56]
  wire [3:0] _T_307; // @[Cat.scala 29:58]
  wire [3:0] _T_309; // @[Mux.scala 87:16]
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
  assign decA_isNaR = _T_1 & _T_29; // @[convert.scala 29:39]
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
  assign decB_isNaR = _T_41 & _T_69; // @[convert.scala 29:39]
  assign _T_72 = _T_41 == 1'h0; // @[convert.scala 30:19]
  assign decB_isZero = _T_72 & _T_69; // @[convert.scala 30:41]
  assign decB_scale = $signed(_T_65); // @[convert.scala 32:24]
  assign _T_81 = _T_1 ? 3'h7 : 3'h0; // @[Bitwise.scala 71:12]
  assign _T_82 = ~ _T_1; // @[PositDivisionSqrt.scala 80:40]
  assign sigA_S = {_T_81,_T_82,decA_fraction,3'h0}; // @[Cat.scala 29:58]
  assign _T_85 = ~ _T_41; // @[PositDivisionSqrt.scala 82:31]
  assign sigB_S = {_T_41,_T_85,decB_fraction,5'h0}; // @[Cat.scala 29:58]
  assign _T_88 = decA_isNaR == 1'h0; // @[PositDivisionSqrt.scala 85:25]
  assign invalidSqrt = _T_88 & _T_1; // @[PositDivisionSqrt.scala 85:37]
  assign _T_89 = decA_isNaR | invalidSqrt; // @[PositDivisionSqrt.scala 88:42]
  assign _T_90 = decA_isNaR | decB_isNaR; // @[PositDivisionSqrt.scala 89:42]
  assign _T_91 = _T_90 | decB_isZero; // @[PositDivisionSqrt.scala 89:56]
  assign _T_92 = decB_isZero == 1'h0; // @[PositDivisionSqrt.scala 94:46]
  assign _T_93 = decA_isZero & _T_92; // @[PositDivisionSqrt.scala 94:43]
  assign _T_94 = decB_isNaR == 1'h0; // @[PositDivisionSqrt.scala 94:62]
  assign _T_95 = _T_93 & _T_94; // @[PositDivisionSqrt.scala 94:59]
  assign specialCaseA_S = decA_isNaR | decA_isZero; // @[PositDivisionSqrt.scala 97:38]
  assign specialCaseB_S = decB_isNaR | decB_isZero; // @[PositDivisionSqrt.scala 98:38]
  assign _T_96 = specialCaseA_S == 1'h0; // @[PositDivisionSqrt.scala 99:27]
  assign _T_97 = specialCaseB_S == 1'h0; // @[PositDivisionSqrt.scala 99:46]
  assign normalCase_S_div = _T_96 & _T_97; // @[PositDivisionSqrt.scala 99:43]
  assign normalCase_S_sqrt = _T_96 & _T_32; // @[PositDivisionSqrt.scala 100:43]
  assign normalCase_S = io_sqrtOp ? normalCase_S_sqrt : normalCase_S_div; // @[PositDivisionSqrt.scala 101:30]
  assign sExpQuot_S_div = $signed(decA_scale) - $signed(decB_scale); // @[PositDivisionSqrt.scala 103:38]
  assign _T_100 = decA_scale[0]; // @[PositDivisionSqrt.scala 104:50]
  assign oddSqrt_S = io_sqrtOp & _T_100; // @[PositDivisionSqrt.scala 104:37]
  assign idle = cycleNum == 3'h0; // @[PositDivisionSqrt.scala 109:39]
  assign ready = cycleNum <= 3'h1; // @[PositDivisionSqrt.scala 110:39]
  assign entering = ready & io_inValid; // @[PositDivisionSqrt.scala 111:35]
  assign entering_normalCase = entering & normalCase_S; // @[PositDivisionSqrt.scala 112:38]
  assign _T_101 = sigX_Z[7]; // @[PositDivisionSqrt.scala 113:35]
  assign _T_102 = sigX_Z[5]; // @[PositDivisionSqrt.scala 113:58]
  assign scaleNotChange = _T_101 ^ _T_102; // @[PositDivisionSqrt.scala 113:50]
  assign _T_103 = cycleNum == 3'h3; // @[PositDivisionSqrt.scala 114:39]
  assign skipCycle2 = _T_103 & scaleNotChange; // @[PositDivisionSqrt.scala 114:48]
  assign _T_104 = idle == 1'h0; // @[PositDivisionSqrt.scala 116:8]
  assign _T_105 = _T_104 | io_inValid; // @[PositDivisionSqrt.scala 116:14]
  assign _T_106 = normalCase_S == 1'h0; // @[PositDivisionSqrt.scala 117:32]
  assign _T_107 = entering & _T_106; // @[PositDivisionSqrt.scala 117:30]
  assign _T_109 = io_sqrtOp ? 4'h6 : 4'h8; // @[PositDivisionSqrt.scala 119:26]
  assign _T_110 = entering_normalCase ? _T_109 : 4'h0; // @[PositDivisionSqrt.scala 118:20]
  assign _GEN_9 = {{3'd0}, _T_107}; // @[PositDivisionSqrt.scala 117:64]
  assign _T_111 = _GEN_9 | _T_110; // @[PositDivisionSqrt.scala 117:64]
  assign _T_113 = skipCycle2 == 1'h0; // @[PositDivisionSqrt.scala 123:30]
  assign _T_114 = _T_104 & _T_113; // @[PositDivisionSqrt.scala 123:27]
  assign _T_116 = cycleNum - 3'h1; // @[PositDivisionSqrt.scala 123:52]
  assign _T_117 = _T_114 ? _T_116 : 3'h0; // @[PositDivisionSqrt.scala 123:20]
  assign _GEN_10 = {{1'd0}, _T_117}; // @[PositDivisionSqrt.scala 122:64]
  assign _T_118 = _T_111 | _GEN_10; // @[PositDivisionSqrt.scala 122:64]
  assign _T_120 = _T_104 & skipCycle2; // @[PositDivisionSqrt.scala 124:27]
  assign _GEN_11 = {{3'd0}, _T_120}; // @[PositDivisionSqrt.scala 123:64]
  assign _T_122 = _T_118 | _GEN_11; // @[PositDivisionSqrt.scala 123:64]
  assign _GEN_0 = _T_105 ? _T_122 : {{1'd0}, cycleNum}; // @[PositDivisionSqrt.scala 116:29]
  assign _T_123 = decA_scale[2:1]; // @[PositDivisionSqrt.scala 134:42]
  assign _T_125 = io_sqrtOp == 1'h0; // @[PositDivisionSqrt.scala 137:31]
  assign _T_126 = entering_normalCase & _T_125; // @[PositDivisionSqrt.scala 137:28]
  assign _T_127 = 8'h1 << cycleNum; // @[PositDivisionSqrt.scala 146:22]
  assign _T_128 = _T_127[7:2]; // @[PositDivisionSqrt.scala 146:35]
  assign _T_129 = oddSqrt_S == 1'h0; // @[PositDivisionSqrt.scala 148:26]
  assign _T_130 = ready & _T_129; // @[PositDivisionSqrt.scala 148:23]
  assign _T_131 = _T_130 ? sigA_S : 8'h0; // @[PositDivisionSqrt.scala 148:16]
  assign _T_132 = ready & oddSqrt_S; // @[PositDivisionSqrt.scala 149:23]
  assign _T_133 = {sigA_S, 1'h0}; // @[PositDivisionSqrt.scala 149:46]
  assign _T_134 = _T_133[7:0]; // @[PositDivisionSqrt.scala 149:56]
  assign _T_135 = _T_132 ? _T_134 : 8'h0; // @[PositDivisionSqrt.scala 149:16]
  assign _T_136 = _T_131 | _T_135; // @[PositDivisionSqrt.scala 148:66]
  assign _T_137 = ready == 1'h0; // @[PositDivisionSqrt.scala 150:17]
  assign _T_138 = _T_137 ? rem_Z : 8'h0; // @[PositDivisionSqrt.scala 150:16]
  assign rem = _T_136 | _T_138; // @[PositDivisionSqrt.scala 149:66]
  assign _T_140 = ready & _T_125; // @[PositDivisionSqrt.scala 152:29]
  assign _T_141 = _T_140 ? sigB_S : 8'h0; // @[PositDivisionSqrt.scala 152:22]
  assign _T_142 = ready & io_sqrtOp; // @[PositDivisionSqrt.scala 153:29]
  assign _T_143 = _T_142 ? 5'h10 : 5'h0; // @[PositDivisionSqrt.scala 153:22]
  assign _GEN_12 = {{3'd0}, _T_143}; // @[PositDivisionSqrt.scala 152:93]
  assign _T_144 = _T_141 | _GEN_12; // @[PositDivisionSqrt.scala 152:93]
  assign _T_146 = sqrtOp_Z == 1'h0; // @[PositDivisionSqrt.scala 154:33]
  assign _T_147 = _T_137 & _T_146; // @[PositDivisionSqrt.scala 154:30]
  assign _T_148 = ~ signB_Z; // @[PositDivisionSqrt.scala 154:57]
  assign _T_151 = {signB_Z,_T_148,fractB_Z,5'h0}; // @[Cat.scala 29:58]
  assign _T_152 = _T_147 ? _T_151 : 8'h0; // @[PositDivisionSqrt.scala 154:22]
  assign _T_153 = _T_144 | _T_152; // @[PositDivisionSqrt.scala 153:93]
  assign _T_155 = _T_137 & sqrtOp_Z; // @[PositDivisionSqrt.scala 155:30]
  assign _T_156 = rem[7:7]; // @[PositDivisionSqrt.scala 156:83]
  assign _T_158 = _T_156 ? 4'hf : 4'h0; // @[Bitwise.scala 71:12]
  assign bitMask = {{1'd0}, _T_128}; // @[PositDivisionSqrt.scala 145:21 PositDivisionSqrt.scala 146:14]
  assign _GEN_13 = {{3'd0}, _T_158}; // @[PositDivisionSqrt.scala 156:53]
  assign _T_159 = bitMask & _GEN_13; // @[PositDivisionSqrt.scala 156:53]
  assign _GEN_14 = {{1'd0}, _T_159}; // @[PositDivisionSqrt.scala 155:51]
  assign _T_160 = sigX_Z | _GEN_14; // @[PositDivisionSqrt.scala 155:51]
  assign _T_161 = bitMask[6:1]; // @[PositDivisionSqrt.scala 157:53]
  assign _GEN_15 = {{2'd0}, _T_161}; // @[PositDivisionSqrt.scala 156:89]
  assign _T_162 = _T_160 | _GEN_15; // @[PositDivisionSqrt.scala 156:89]
  assign _T_163 = _T_155 ? _T_162 : 8'h0; // @[PositDivisionSqrt.scala 155:22]
  assign trialTerm = _T_153 | _T_163; // @[PositDivisionSqrt.scala 154:93]
  assign _T_165 = trialTerm[7:7]; // @[PositDivisionSqrt.scala 162:56]
  assign _T_166 = _T_156 ^ _T_165; // @[PositDivisionSqrt.scala 162:40]
  assign _T_169 = rem + trialTerm; // @[PositDivisionSqrt.scala 163:97]
  assign _T_171 = rem - trialTerm; // @[PositDivisionSqrt.scala 164:97]
  assign _T_172 = _T_166 ? _T_169 : _T_171; // @[PositDivisionSqrt.scala 161:92]
  assign _T_177 = {rem, 1'h0}; // @[PositDivisionSqrt.scala 168:98]
  assign _T_178 = _T_177[7:0]; // @[PositDivisionSqrt.scala 168:108]
  assign _T_180 = _T_178 + trialTerm; // @[PositDivisionSqrt.scala 168:112]
  assign _T_184 = _T_178 - trialTerm; // @[PositDivisionSqrt.scala 169:112]
  assign _T_185 = _T_166 ? _T_180 : _T_184; // @[PositDivisionSqrt.scala 166:26]
  assign trialRem = ready ? _T_172 : _T_185; // @[PositDivisionSqrt.scala 159:27]
  assign _T_186 = trialRem != 8'h0; // @[PositDivisionSqrt.scala 173:35]
  assign trIsZero = _T_186 == 1'h0; // @[PositDivisionSqrt.scala 173:25]
  assign _T_187 = rem != 8'h0; // @[PositDivisionSqrt.scala 174:30]
  assign remIsZero = _T_187 == 1'h0; // @[PositDivisionSqrt.scala 174:25]
  assign _T_189 = trialRem[7:7]; // @[PositDivisionSqrt.scala 176:64]
  assign _T_190 = _T_165 ^ _T_189; // @[PositDivisionSqrt.scala 176:49]
  assign _T_191 = ~ _T_190; // @[PositDivisionSqrt.scala 176:29]
  assign _T_192 = sigX_Z[7:7]; // @[PositDivisionSqrt.scala 178:61]
  assign _T_193 = ~ _T_192; // @[PositDivisionSqrt.scala 178:49]
  assign _T_195 = remIsZero ? _T_192 : _T_191; // @[Mux.scala 87:16]
  assign newBit = trIsZero ? _T_193 : _T_195; // @[Mux.scala 87:16]
  assign _T_196 = cycleNum > 3'h2; // @[PositDivisionSqrt.scala 183:41]
  assign _T_197 = remIsZero == 1'h0; // @[PositDivisionSqrt.scala 183:51]
  assign _T_198 = _T_196 & _T_197; // @[PositDivisionSqrt.scala 183:48]
  assign _T_199 = entering_normalCase | _T_198; // @[PositDivisionSqrt.scala 183:28]
  assign _T_202 = _T_137 & newBit; // @[PositDivisionSqrt.scala 187:39]
  assign _T_203 = entering_normalCase | _T_202; // @[PositDivisionSqrt.scala 187:28]
  assign _T_206 = {newBit, 7'h0}; // @[PositDivisionSqrt.scala 188:47]
  assign _T_207 = _T_140 ? _T_206 : 8'h0; // @[PositDivisionSqrt.scala 188:18]
  assign _T_209 = _T_142 ? 6'h20 : 6'h0; // @[PositDivisionSqrt.scala 189:18]
  assign _GEN_16 = {{2'd0}, _T_209}; // @[PositDivisionSqrt.scala 188:78]
  assign _T_210 = _T_207 | _GEN_16; // @[PositDivisionSqrt.scala 188:78]
  assign _GEN_17 = {{1'd0}, bitMask}; // @[PositDivisionSqrt.scala 190:47]
  assign _T_212 = sigX_Z | _GEN_17; // @[PositDivisionSqrt.scala 190:47]
  assign _T_213 = _T_137 ? _T_212 : 8'h0; // @[PositDivisionSqrt.scala 190:18]
  assign _T_214 = _T_210 | _T_213; // @[PositDivisionSqrt.scala 189:78]
  assign _T_216 = {_T_192, 1'h0}; // @[PositDivisionSqrt.scala 196:53]
  assign sigXBias = scaleNotChange ? _T_216 : {{1'd0}, _T_192}; // @[PositDivisionSqrt.scala 196:21]
  assign _GEN_18 = {{6'd0}, sigXBias}; // @[PositDivisionSqrt.scala 197:25]
  assign realSigX = sigX_Z + _GEN_18; // @[PositDivisionSqrt.scala 197:25]
  assign _T_219 = realSigX[4]; // @[PositDivisionSqrt.scala 200:97]
  assign _T_220 = realSigX[3]; // @[PositDivisionSqrt.scala 201:97]
  assign realFrac = scaleNotChange ? _T_219 : _T_220; // @[PositDivisionSqrt.scala 198:21]
  assign _T_221 = realSigX[7]; // @[PositDivisionSqrt.scala 205:33]
  assign _T_222 = realSigX[5]; // @[PositDivisionSqrt.scala 205:58]
  assign _T_223 = _T_221 ^ _T_222; // @[PositDivisionSqrt.scala 205:48]
  assign scaleNeedSub = ~ _T_223; // @[PositDivisionSqrt.scala 205:23]
  assign notNeedSubTwo = _T_221 ^ _T_219; // @[PositDivisionSqrt.scala 206:46]
  assign scaleSubOne = scaleNeedSub & notNeedSubTwo; // @[PositDivisionSqrt.scala 207:36]
  assign _T_226 = ~ notNeedSubTwo; // @[PositDivisionSqrt.scala 208:38]
  assign scaleSubTwo = scaleNeedSub & _T_226; // @[PositDivisionSqrt.scala 208:36]
  assign _T_227 = {scaleSubTwo,scaleSubOne}; // @[Cat.scala 29:58]
  assign _T_228 = {1'b0,$signed(_T_227)}; // @[PositDivisionSqrt.scala 209:63]
  assign _GEN_19 = {{1{_T_228[2]}},_T_228}; // @[PositDivisionSqrt.scala 209:31]
  assign _T_230 = $signed(scale_Z) - $signed(_GEN_19); // @[PositDivisionSqrt.scala 209:31]
  assign realExp = $signed(_T_230); // @[PositDivisionSqrt.scala 209:31]
  assign underflow = $signed(realExp) < $signed(-4'sh3); // @[PositDivisionSqrt.scala 210:31]
  assign overflow = $signed(realExp) > $signed(4'sh2); // @[PositDivisionSqrt.scala 211:31]
  assign decQ_sign = realSigX[7:7]; // @[PositDivisionSqrt.scala 215:33]
  assign _T_232 = underflow ? $signed(-4'sh3) : $signed(realExp); // @[Mux.scala 87:16]
  assign _T_233 = overflow ? $signed(4'sh2) : $signed(_T_232); // @[Mux.scala 87:16]
  assign _T_234 = realSigX[3:1]; // @[PositDivisionSqrt.scala 224:48]
  assign _T_235 = realSigX[2:0]; // @[PositDivisionSqrt.scala 224:64]
  assign decQ_grs = scaleNotChange ? _T_234 : _T_235; // @[PositDivisionSqrt.scala 224:23]
  assign outValid = cycleNum == 3'h1; // @[PositDivisionSqrt.scala 229:28]
  assign _GEN_20 = _T_233[2:0]; // @[PositDivisionSqrt.scala 204:27 PositDivisionSqrt.scala 216:23]
  assign decQ_scale = $signed(_GEN_20); // @[PositDivisionSqrt.scala 204:27 PositDivisionSqrt.scala 216:23]
  assign _T_242 = decQ_scale[2:2]; // @[convert.scala 49:36]
  assign _T_244 = ~ decQ_scale; // @[convert.scala 50:36]
  assign _T_245 = $signed(_T_244); // @[convert.scala 50:36]
  assign _T_246 = _T_242 ? $signed(_T_245) : $signed(decQ_scale); // @[convert.scala 50:28]
  assign _T_247 = _T_242 ^ decQ_sign; // @[convert.scala 51:31]
  assign _T_248 = ~ _T_247; // @[convert.scala 53:34]
  assign _T_251 = {_T_248,_T_247,realFrac,decQ_grs}; // @[Cat.scala 29:58]
  assign _T_252 = $unsigned(_T_246); // @[Shift.scala 39:17]
  assign _T_253 = _T_252 < 3'h6; // @[Shift.scala 39:24]
  assign _T_255 = _T_251[5:4]; // @[Shift.scala 90:30]
  assign _T_256 = _T_251[3:0]; // @[Shift.scala 90:48]
  assign _T_257 = _T_256 != 4'h0; // @[Shift.scala 90:57]
  assign _GEN_21 = {{1'd0}, _T_257}; // @[Shift.scala 90:39]
  assign _T_258 = _T_255 | _GEN_21; // @[Shift.scala 90:39]
  assign _T_259 = _T_252[2]; // @[Shift.scala 12:21]
  assign _T_260 = _T_251[5]; // @[Shift.scala 12:21]
  assign _T_262 = _T_260 ? 4'hf : 4'h0; // @[Bitwise.scala 71:12]
  assign _T_263 = {_T_262,_T_258}; // @[Cat.scala 29:58]
  assign _T_264 = _T_259 ? _T_263 : _T_251; // @[Shift.scala 91:22]
  assign _T_265 = _T_252[1:0]; // @[Shift.scala 92:77]
  assign _T_266 = _T_264[5:2]; // @[Shift.scala 90:30]
  assign _T_267 = _T_264[1:0]; // @[Shift.scala 90:48]
  assign _T_268 = _T_267 != 2'h0; // @[Shift.scala 90:57]
  assign _GEN_22 = {{3'd0}, _T_268}; // @[Shift.scala 90:39]
  assign _T_269 = _T_266 | _GEN_22; // @[Shift.scala 90:39]
  assign _T_270 = _T_265[1]; // @[Shift.scala 12:21]
  assign _T_271 = _T_264[5]; // @[Shift.scala 12:21]
  assign _T_273 = _T_271 ? 2'h3 : 2'h0; // @[Bitwise.scala 71:12]
  assign _T_274 = {_T_273,_T_269}; // @[Cat.scala 29:58]
  assign _T_275 = _T_270 ? _T_274 : _T_264; // @[Shift.scala 91:22]
  assign _T_276 = _T_265[0:0]; // @[Shift.scala 92:77]
  assign _T_277 = _T_275[5:1]; // @[Shift.scala 90:30]
  assign _T_278 = _T_275[0:0]; // @[Shift.scala 90:48]
  assign _GEN_23 = {{4'd0}, _T_278}; // @[Shift.scala 90:39]
  assign _T_280 = _T_277 | _GEN_23; // @[Shift.scala 90:39]
  assign _T_282 = _T_275[5]; // @[Shift.scala 12:21]
  assign _T_283 = {_T_282,_T_280}; // @[Cat.scala 29:58]
  assign _T_284 = _T_276 ? _T_283 : _T_275; // @[Shift.scala 91:22]
  assign _T_287 = _T_260 ? 6'h3f : 6'h0; // @[Bitwise.scala 71:12]
  assign _T_288 = _T_253 ? _T_284 : _T_287; // @[Shift.scala 39:10]
  assign _T_289 = _T_288[3]; // @[convert.scala 55:31]
  assign _T_290 = _T_288[2]; // @[convert.scala 56:31]
  assign _T_291 = _T_288[1]; // @[convert.scala 57:31]
  assign _T_292 = _T_288[0]; // @[convert.scala 58:31]
  assign _T_293 = _T_288[5:3]; // @[convert.scala 59:69]
  assign _T_294 = _T_293 != 3'h0; // @[convert.scala 59:81]
  assign _T_295 = ~ _T_294; // @[convert.scala 59:50]
  assign _T_297 = _T_293 == 3'h7; // @[convert.scala 60:81]
  assign _T_298 = _T_289 | _T_291; // @[convert.scala 61:44]
  assign _T_299 = _T_298 | _T_292; // @[convert.scala 61:52]
  assign _T_300 = _T_290 & _T_299; // @[convert.scala 61:36]
  assign _T_301 = ~ _T_297; // @[convert.scala 62:63]
  assign _T_302 = _T_301 & _T_300; // @[convert.scala 62:103]
  assign _T_303 = _T_295 | _T_302; // @[convert.scala 62:60]
  assign _GEN_24 = {{2'd0}, _T_303}; // @[convert.scala 63:56]
  assign _T_306 = _T_293 + _GEN_24; // @[convert.scala 63:56]
  assign _T_307 = {decQ_sign,_T_306}; // @[Cat.scala 29:58]
  assign _T_309 = isZero_Z ? 4'h0 : _T_307; // @[Mux.scala 87:16]
  assign io_inReady = cycleNum <= 3'h1; // @[PositDivisionSqrt.scala 231:17]
  assign io_diviValid = outValid & _T_146; // @[PositDivisionSqrt.scala 232:17]
  assign io_sqrtValid = outValid & sqrtOp_Z; // @[PositDivisionSqrt.scala 233:17]
  assign io_invalidExc = isNaR_Z; // @[PositDivisionSqrt.scala 234:17]
  assign io_Q = isNaR_Z ? 4'h8 : _T_309; // @[PositDivisionSqrt.scala 235:17]
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
  cycleNum = _RAND_0[2:0];
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
  fractB_Z = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  rem_Z = _RAND_7[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  sigX_Z = _RAND_8[7:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (reset) begin
      cycleNum <= 3'h0;
    end else begin
      cycleNum <= _GEN_0[2:0];
    end
    if (entering) begin
      sqrtOp_Z <= io_sqrtOp;
    end
    if (entering) begin
      if (io_sqrtOp) begin
        isNaR_Z <= _T_89;
      end else begin
        isNaR_Z <= _T_91;
      end
    end
    if (entering) begin
      if (io_sqrtOp) begin
        isZero_Z <= decA_isZero;
      end else begin
        isZero_Z <= _T_95;
      end
    end
    if (entering_normalCase) begin
      if (io_sqrtOp) begin
        scale_Z <= {{2{_T_123[1]}},_T_123};
      end else begin
        scale_Z <= sExpQuot_S_div;
      end
    end
    if (_T_126) begin
      signB_Z <= _T_41;
    end
    if (_T_126) begin
      fractB_Z <= decB_fraction;
    end
    if (_T_199) begin
      if (ready) begin
        if (_T_166) begin
          rem_Z <= _T_169;
        end else begin
          rem_Z <= _T_171;
        end
      end else begin
        if (_T_166) begin
          rem_Z <= _T_180;
        end else begin
          rem_Z <= _T_184;
        end
      end
    end
    if (_T_203) begin
      sigX_Z <= _T_214;
    end
  end
endmodule
