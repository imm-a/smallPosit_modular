module FMAEnc5_0(
  input        clock,
  input        reset,
  input        io_inValid_phase2,
  input  [7:0] io_signSumSig,
  input        io_sumSign,
  input  [2:0] io_greaterScale,
  input        io_outIsNaR_phase2,
  output [4:0] io_F,
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
  wire [2:0] _T_66; // @[FMAEnc.scala 41:39]
  wire [2:0] _T_67; // @[FMAEnc.scala 41:39]
  wire [3:0] _T_68; // @[Cat.scala 29:58]
  wire [3:0] _T_69; // @[FMAEnc.scala 41:64]
  wire [3:0] _GEN_2; // @[FMAEnc.scala 41:45]
  wire [3:0] _T_71; // @[FMAEnc.scala 41:45]
  wire [3:0] sumScale; // @[FMAEnc.scala 41:45]
  wire [1:0] sumFrac; // @[FMAEnc.scala 42:41]
  wire [3:0] grsTmp; // @[FMAEnc.scala 45:41]
  wire [1:0] _T_72; // @[FMAEnc.scala 48:40]
  wire [1:0] _T_73; // @[FMAEnc.scala 48:56]
  wire  _T_74; // @[FMAEnc.scala 48:60]
  wire  underflow; // @[FMAEnc.scala 55:32]
  wire  overflow; // @[FMAEnc.scala 56:32]
  wire  _T_75; // @[FMAEnc.scala 65:35]
  wire  decF_isZero; // @[FMAEnc.scala 65:20]
  wire [3:0] _T_77; // @[Mux.scala 87:16]
  wire [3:0] _T_78; // @[Mux.scala 87:16]
  wire [2:0] _GEN_3; // @[FMAEnc.scala 62:18 FMAEnc.scala 68:17]
  wire [2:0] decF_scale; // @[FMAEnc.scala 62:18 FMAEnc.scala 68:17]
  wire  _T_80; // @[convert.scala 49:36]
  wire [2:0] _T_82; // @[convert.scala 50:36]
  wire [2:0] _T_83; // @[convert.scala 50:36]
  wire [2:0] _T_84; // @[convert.scala 50:28]
  wire  _T_85; // @[convert.scala 51:31]
  wire  _T_86; // @[convert.scala 53:34]
  wire [6:0] _T_89; // @[Cat.scala 29:58]
  wire [2:0] _T_90; // @[Shift.scala 39:17]
  wire  _T_91; // @[Shift.scala 39:24]
  wire [2:0] _T_93; // @[Shift.scala 90:30]
  wire [3:0] _T_94; // @[Shift.scala 90:48]
  wire  _T_95; // @[Shift.scala 90:57]
  wire [2:0] _GEN_4; // @[Shift.scala 90:39]
  wire [2:0] _T_96; // @[Shift.scala 90:39]
  wire  _T_97; // @[Shift.scala 12:21]
  wire  _T_98; // @[Shift.scala 12:21]
  wire [3:0] _T_100; // @[Bitwise.scala 71:12]
  wire [6:0] _T_101; // @[Cat.scala 29:58]
  wire [6:0] _T_102; // @[Shift.scala 91:22]
  wire [1:0] _T_103; // @[Shift.scala 92:77]
  wire [4:0] _T_104; // @[Shift.scala 90:30]
  wire [1:0] _T_105; // @[Shift.scala 90:48]
  wire  _T_106; // @[Shift.scala 90:57]
  wire [4:0] _GEN_5; // @[Shift.scala 90:39]
  wire [4:0] _T_107; // @[Shift.scala 90:39]
  wire  _T_108; // @[Shift.scala 12:21]
  wire  _T_109; // @[Shift.scala 12:21]
  wire [1:0] _T_111; // @[Bitwise.scala 71:12]
  wire [6:0] _T_112; // @[Cat.scala 29:58]
  wire [6:0] _T_113; // @[Shift.scala 91:22]
  wire  _T_114; // @[Shift.scala 92:77]
  wire [5:0] _T_115; // @[Shift.scala 90:30]
  wire  _T_116; // @[Shift.scala 90:48]
  wire [5:0] _GEN_6; // @[Shift.scala 90:39]
  wire [5:0] _T_118; // @[Shift.scala 90:39]
  wire  _T_120; // @[Shift.scala 12:21]
  wire [6:0] _T_121; // @[Cat.scala 29:58]
  wire [6:0] _T_122; // @[Shift.scala 91:22]
  wire [6:0] _T_125; // @[Bitwise.scala 71:12]
  wire [6:0] _T_126; // @[Shift.scala 39:10]
  wire  _T_127; // @[convert.scala 55:31]
  wire  _T_128; // @[convert.scala 56:31]
  wire  _T_129; // @[convert.scala 57:31]
  wire  _T_130; // @[convert.scala 58:31]
  wire [3:0] _T_131; // @[convert.scala 59:69]
  wire  _T_132; // @[convert.scala 59:81]
  wire  _T_133; // @[convert.scala 59:50]
  wire  _T_135; // @[convert.scala 60:81]
  wire  _T_136; // @[convert.scala 61:44]
  wire  _T_137; // @[convert.scala 61:52]
  wire  _T_138; // @[convert.scala 61:36]
  wire  _T_139; // @[convert.scala 62:63]
  wire  _T_140; // @[convert.scala 62:103]
  wire  _T_141; // @[convert.scala 62:60]
  wire [3:0] _GEN_7; // @[convert.scala 63:56]
  wire [3:0] _T_144; // @[convert.scala 63:56]
  wire [4:0] _T_145; // @[Cat.scala 29:58]
  reg  _T_149; // @[Valid.scala 117:22]
  reg [31:0] _RAND_0;
  reg [4:0] _T_153; // @[Reg.scala 15:16]
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
  assign _T_66 = $signed(io_greaterScale) + $signed(3'sh2); // @[FMAEnc.scala 41:39]
  assign _T_67 = $signed(_T_66); // @[FMAEnc.scala 41:39]
  assign _T_68 = {1'h1,_T_42,_T_45}; // @[Cat.scala 29:58]
  assign _T_69 = $signed(_T_68); // @[FMAEnc.scala 41:64]
  assign _GEN_2 = {{1{_T_67[2]}},_T_67}; // @[FMAEnc.scala 41:45]
  assign _T_71 = $signed(_GEN_2) + $signed(_T_69); // @[FMAEnc.scala 41:45]
  assign sumScale = $signed(_T_71); // @[FMAEnc.scala 41:45]
  assign sumFrac = normalFracTmp[5:4]; // @[FMAEnc.scala 42:41]
  assign grsTmp = normalFracTmp[3:0]; // @[FMAEnc.scala 45:41]
  assign _T_72 = grsTmp[3:2]; // @[FMAEnc.scala 48:40]
  assign _T_73 = grsTmp[1:0]; // @[FMAEnc.scala 48:56]
  assign _T_74 = _T_73 != 2'h0; // @[FMAEnc.scala 48:60]
  assign underflow = $signed(sumScale) < $signed(-4'sh4); // @[FMAEnc.scala 55:32]
  assign overflow = $signed(sumScale) > $signed(4'sh3); // @[FMAEnc.scala 56:32]
  assign _T_75 = io_signSumSig != 8'h0; // @[FMAEnc.scala 65:35]
  assign decF_isZero = ~ _T_75; // @[FMAEnc.scala 65:20]
  assign _T_77 = underflow ? $signed(-4'sh4) : $signed(sumScale); // @[Mux.scala 87:16]
  assign _T_78 = overflow ? $signed(4'sh3) : $signed(_T_77); // @[Mux.scala 87:16]
  assign _GEN_3 = _T_78[2:0]; // @[FMAEnc.scala 62:18 FMAEnc.scala 68:17]
  assign decF_scale = $signed(_GEN_3); // @[FMAEnc.scala 62:18 FMAEnc.scala 68:17]
  assign _T_80 = decF_scale[2:2]; // @[convert.scala 49:36]
  assign _T_82 = ~ decF_scale; // @[convert.scala 50:36]
  assign _T_83 = $signed(_T_82); // @[convert.scala 50:36]
  assign _T_84 = _T_80 ? $signed(_T_83) : $signed(decF_scale); // @[convert.scala 50:28]
  assign _T_85 = _T_80 ^ io_sumSign; // @[convert.scala 51:31]
  assign _T_86 = ~ _T_85; // @[convert.scala 53:34]
  assign _T_89 = {_T_86,_T_85,sumFrac,_T_72,_T_74}; // @[Cat.scala 29:58]
  assign _T_90 = $unsigned(_T_84); // @[Shift.scala 39:17]
  assign _T_91 = _T_90 < 3'h7; // @[Shift.scala 39:24]
  assign _T_93 = _T_89[6:4]; // @[Shift.scala 90:30]
  assign _T_94 = _T_89[3:0]; // @[Shift.scala 90:48]
  assign _T_95 = _T_94 != 4'h0; // @[Shift.scala 90:57]
  assign _GEN_4 = {{2'd0}, _T_95}; // @[Shift.scala 90:39]
  assign _T_96 = _T_93 | _GEN_4; // @[Shift.scala 90:39]
  assign _T_97 = _T_90[2]; // @[Shift.scala 12:21]
  assign _T_98 = _T_89[6]; // @[Shift.scala 12:21]
  assign _T_100 = _T_98 ? 4'hf : 4'h0; // @[Bitwise.scala 71:12]
  assign _T_101 = {_T_100,_T_96}; // @[Cat.scala 29:58]
  assign _T_102 = _T_97 ? _T_101 : _T_89; // @[Shift.scala 91:22]
  assign _T_103 = _T_90[1:0]; // @[Shift.scala 92:77]
  assign _T_104 = _T_102[6:2]; // @[Shift.scala 90:30]
  assign _T_105 = _T_102[1:0]; // @[Shift.scala 90:48]
  assign _T_106 = _T_105 != 2'h0; // @[Shift.scala 90:57]
  assign _GEN_5 = {{4'd0}, _T_106}; // @[Shift.scala 90:39]
  assign _T_107 = _T_104 | _GEN_5; // @[Shift.scala 90:39]
  assign _T_108 = _T_103[1]; // @[Shift.scala 12:21]
  assign _T_109 = _T_102[6]; // @[Shift.scala 12:21]
  assign _T_111 = _T_109 ? 2'h3 : 2'h0; // @[Bitwise.scala 71:12]
  assign _T_112 = {_T_111,_T_107}; // @[Cat.scala 29:58]
  assign _T_113 = _T_108 ? _T_112 : _T_102; // @[Shift.scala 91:22]
  assign _T_114 = _T_103[0:0]; // @[Shift.scala 92:77]
  assign _T_115 = _T_113[6:1]; // @[Shift.scala 90:30]
  assign _T_116 = _T_113[0:0]; // @[Shift.scala 90:48]
  assign _GEN_6 = {{5'd0}, _T_116}; // @[Shift.scala 90:39]
  assign _T_118 = _T_115 | _GEN_6; // @[Shift.scala 90:39]
  assign _T_120 = _T_113[6]; // @[Shift.scala 12:21]
  assign _T_121 = {_T_120,_T_118}; // @[Cat.scala 29:58]
  assign _T_122 = _T_114 ? _T_121 : _T_113; // @[Shift.scala 91:22]
  assign _T_125 = _T_98 ? 7'h7f : 7'h0; // @[Bitwise.scala 71:12]
  assign _T_126 = _T_91 ? _T_122 : _T_125; // @[Shift.scala 39:10]
  assign _T_127 = _T_126[3]; // @[convert.scala 55:31]
  assign _T_128 = _T_126[2]; // @[convert.scala 56:31]
  assign _T_129 = _T_126[1]; // @[convert.scala 57:31]
  assign _T_130 = _T_126[0]; // @[convert.scala 58:31]
  assign _T_131 = _T_126[6:3]; // @[convert.scala 59:69]
  assign _T_132 = _T_131 != 4'h0; // @[convert.scala 59:81]
  assign _T_133 = ~ _T_132; // @[convert.scala 59:50]
  assign _T_135 = _T_131 == 4'hf; // @[convert.scala 60:81]
  assign _T_136 = _T_127 | _T_129; // @[convert.scala 61:44]
  assign _T_137 = _T_136 | _T_130; // @[convert.scala 61:52]
  assign _T_138 = _T_128 & _T_137; // @[convert.scala 61:36]
  assign _T_139 = ~ _T_135; // @[convert.scala 62:63]
  assign _T_140 = _T_139 & _T_138; // @[convert.scala 62:103]
  assign _T_141 = _T_133 | _T_140; // @[convert.scala 62:60]
  assign _GEN_7 = {{3'd0}, _T_141}; // @[convert.scala 63:56]
  assign _T_144 = _T_131 + _GEN_7; // @[convert.scala 63:56]
  assign _T_145 = {io_sumSign,_T_144}; // @[Cat.scala 29:58]
  assign io_F = _T_153; // @[FMAEnc.scala 85:15]
  assign io_outValid = _T_149; // @[FMAEnc.scala 84:15]
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
  _T_149 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_153 = _RAND_1[4:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (reset) begin
      _T_149 <= 1'h0;
    end else begin
      _T_149 <= io_inValid_phase2;
    end
    if (io_inValid_phase2) begin
      if (io_outIsNaR_phase2) begin
        _T_153 <= 5'h10;
      end else begin
        if (decF_isZero) begin
          _T_153 <= 5'h0;
        end else begin
          _T_153 <= _T_145;
        end
      end
    end
  end
endmodule
