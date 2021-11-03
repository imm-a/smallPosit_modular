module FMAEnc4_0(
  input        clock,
  input        reset,
  input        io_inValid_phase2,
  input  [5:0] io_signSumSig,
  input        io_sumSign,
  input  [2:0] io_greaterScale,
  input        io_outIsNaR_phase2,
  output [3:0] io_F,
  output       io_outValid
);
  wire [4:0] _T; // @[FMAEnc.scala 35:36]
  wire [4:0] _T_1; // @[FMAEnc.scala 35:74]
  wire [4:0] sumXor; // @[FMAEnc.scala 35:54]
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
  wire  _T_27; // @[LZD.scala 44:32]
  wire  _T_29; // @[Shift.scala 12:21]
  wire [1:0] _T_31; // @[Cat.scala 29:58]
  wire [1:0] _T_32; // @[LZD.scala 55:32]
  wire [1:0] _T_33; // @[LZD.scala 55:20]
  wire [2:0] sumLZD; // @[Cat.scala 29:58]
  wire [2:0] shiftValue; // @[FMAEnc.scala 37:24]
  wire [3:0] _T_34; // @[FMAEnc.scala 38:41]
  wire  _T_35; // @[Shift.scala 16:24]
  wire [1:0] _T_36; // @[Shift.scala 17:37]
  wire  _T_37; // @[Shift.scala 12:21]
  wire [1:0] _T_38; // @[Shift.scala 64:52]
  wire [3:0] _T_40; // @[Cat.scala 29:58]
  wire [3:0] _T_41; // @[Shift.scala 64:27]
  wire  _T_42; // @[Shift.scala 66:70]
  wire [2:0] _T_44; // @[Shift.scala 64:52]
  wire [3:0] _T_45; // @[Cat.scala 29:58]
  wire [3:0] _T_46; // @[Shift.scala 64:27]
  wire [3:0] normalFracTmp; // @[Shift.scala 16:10]
  wire [2:0] _T_48; // @[FMAEnc.scala 41:39]
  wire [2:0] _T_49; // @[FMAEnc.scala 41:39]
  wire [3:0] _T_50; // @[Cat.scala 29:58]
  wire [3:0] _T_51; // @[FMAEnc.scala 41:64]
  wire [3:0] _GEN_2; // @[FMAEnc.scala 41:45]
  wire [3:0] _T_53; // @[FMAEnc.scala 41:45]
  wire [3:0] sumScale; // @[FMAEnc.scala 41:45]
  wire  sumFrac; // @[FMAEnc.scala 42:41]
  wire [2:0] grsTmp; // @[FMAEnc.scala 45:41]
  wire [1:0] _T_54; // @[FMAEnc.scala 48:40]
  wire  _T_55; // @[FMAEnc.scala 48:56]
  wire  underflow; // @[FMAEnc.scala 55:32]
  wire  overflow; // @[FMAEnc.scala 56:32]
  wire  _T_57; // @[FMAEnc.scala 65:35]
  wire  decF_isZero; // @[FMAEnc.scala 65:20]
  wire [3:0] _T_59; // @[Mux.scala 87:16]
  wire [3:0] _T_60; // @[Mux.scala 87:16]
  wire [2:0] _GEN_3; // @[FMAEnc.scala 62:18 FMAEnc.scala 68:17]
  wire [2:0] decF_scale; // @[FMAEnc.scala 62:18 FMAEnc.scala 68:17]
  wire  _T_62; // @[convert.scala 49:36]
  wire [2:0] _T_64; // @[convert.scala 50:36]
  wire [2:0] _T_65; // @[convert.scala 50:36]
  wire [2:0] _T_66; // @[convert.scala 50:28]
  wire  _T_67; // @[convert.scala 51:31]
  wire  _T_68; // @[convert.scala 53:34]
  wire [5:0] _T_71; // @[Cat.scala 29:58]
  wire [2:0] _T_72; // @[Shift.scala 39:17]
  wire  _T_73; // @[Shift.scala 39:24]
  wire [1:0] _T_75; // @[Shift.scala 90:30]
  wire [3:0] _T_76; // @[Shift.scala 90:48]
  wire  _T_77; // @[Shift.scala 90:57]
  wire [1:0] _GEN_4; // @[Shift.scala 90:39]
  wire [1:0] _T_78; // @[Shift.scala 90:39]
  wire  _T_79; // @[Shift.scala 12:21]
  wire  _T_80; // @[Shift.scala 12:21]
  wire [3:0] _T_82; // @[Bitwise.scala 71:12]
  wire [5:0] _T_83; // @[Cat.scala 29:58]
  wire [5:0] _T_84; // @[Shift.scala 91:22]
  wire [1:0] _T_85; // @[Shift.scala 92:77]
  wire [3:0] _T_86; // @[Shift.scala 90:30]
  wire [1:0] _T_87; // @[Shift.scala 90:48]
  wire  _T_88; // @[Shift.scala 90:57]
  wire [3:0] _GEN_5; // @[Shift.scala 90:39]
  wire [3:0] _T_89; // @[Shift.scala 90:39]
  wire  _T_90; // @[Shift.scala 12:21]
  wire  _T_91; // @[Shift.scala 12:21]
  wire [1:0] _T_93; // @[Bitwise.scala 71:12]
  wire [5:0] _T_94; // @[Cat.scala 29:58]
  wire [5:0] _T_95; // @[Shift.scala 91:22]
  wire  _T_96; // @[Shift.scala 92:77]
  wire [4:0] _T_97; // @[Shift.scala 90:30]
  wire  _T_98; // @[Shift.scala 90:48]
  wire [4:0] _GEN_6; // @[Shift.scala 90:39]
  wire [4:0] _T_100; // @[Shift.scala 90:39]
  wire  _T_102; // @[Shift.scala 12:21]
  wire [5:0] _T_103; // @[Cat.scala 29:58]
  wire [5:0] _T_104; // @[Shift.scala 91:22]
  wire [5:0] _T_107; // @[Bitwise.scala 71:12]
  wire [5:0] _T_108; // @[Shift.scala 39:10]
  wire  _T_109; // @[convert.scala 55:31]
  wire  _T_110; // @[convert.scala 56:31]
  wire  _T_111; // @[convert.scala 57:31]
  wire  _T_112; // @[convert.scala 58:31]
  wire [2:0] _T_113; // @[convert.scala 59:69]
  wire  _T_114; // @[convert.scala 59:81]
  wire  _T_115; // @[convert.scala 59:50]
  wire  _T_117; // @[convert.scala 60:81]
  wire  _T_118; // @[convert.scala 61:44]
  wire  _T_119; // @[convert.scala 61:52]
  wire  _T_120; // @[convert.scala 61:36]
  wire  _T_121; // @[convert.scala 62:63]
  wire  _T_122; // @[convert.scala 62:103]
  wire  _T_123; // @[convert.scala 62:60]
  wire [2:0] _GEN_7; // @[convert.scala 63:56]
  wire [2:0] _T_126; // @[convert.scala 63:56]
  wire [3:0] _T_127; // @[Cat.scala 29:58]
  reg  _T_131; // @[Valid.scala 117:22]
  reg [31:0] _RAND_0;
  reg [3:0] _T_135; // @[Reg.scala 15:16]
  reg [31:0] _RAND_1;
  assign _T = io_signSumSig[5:1]; // @[FMAEnc.scala 35:36]
  assign _T_1 = io_signSumSig[4:0]; // @[FMAEnc.scala 35:74]
  assign sumXor = _T ^ _T_1; // @[FMAEnc.scala 35:54]
  assign _T_2 = sumXor[4:1]; // @[LZD.scala 43:32]
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
  assign _T_27 = sumXor[0:0]; // @[LZD.scala 44:32]
  assign _T_29 = _T_26[2]; // @[Shift.scala 12:21]
  assign _T_31 = {1'h1,_T_27}; // @[Cat.scala 29:58]
  assign _T_32 = _T_26[1:0]; // @[LZD.scala 55:32]
  assign _T_33 = _T_29 ? _T_32 : _T_31; // @[LZD.scala 55:20]
  assign sumLZD = {_T_29,_T_33}; // @[Cat.scala 29:58]
  assign shiftValue = ~ sumLZD; // @[FMAEnc.scala 37:24]
  assign _T_34 = io_signSumSig[3:0]; // @[FMAEnc.scala 38:41]
  assign _T_35 = shiftValue < 3'h4; // @[Shift.scala 16:24]
  assign _T_36 = shiftValue[1:0]; // @[Shift.scala 17:37]
  assign _T_37 = _T_36[1]; // @[Shift.scala 12:21]
  assign _T_38 = _T_34[1:0]; // @[Shift.scala 64:52]
  assign _T_40 = {_T_38,2'h0}; // @[Cat.scala 29:58]
  assign _T_41 = _T_37 ? _T_40 : _T_34; // @[Shift.scala 64:27]
  assign _T_42 = _T_36[0:0]; // @[Shift.scala 66:70]
  assign _T_44 = _T_41[2:0]; // @[Shift.scala 64:52]
  assign _T_45 = {_T_44,1'h0}; // @[Cat.scala 29:58]
  assign _T_46 = _T_42 ? _T_45 : _T_41; // @[Shift.scala 64:27]
  assign normalFracTmp = _T_35 ? _T_46 : 4'h0; // @[Shift.scala 16:10]
  assign _T_48 = $signed(io_greaterScale) + $signed(3'sh2); // @[FMAEnc.scala 41:39]
  assign _T_49 = $signed(_T_48); // @[FMAEnc.scala 41:39]
  assign _T_50 = {1'h1,_T_29,_T_33}; // @[Cat.scala 29:58]
  assign _T_51 = $signed(_T_50); // @[FMAEnc.scala 41:64]
  assign _GEN_2 = {{1{_T_49[2]}},_T_49}; // @[FMAEnc.scala 41:45]
  assign _T_53 = $signed(_GEN_2) + $signed(_T_51); // @[FMAEnc.scala 41:45]
  assign sumScale = $signed(_T_53); // @[FMAEnc.scala 41:45]
  assign sumFrac = normalFracTmp[3:3]; // @[FMAEnc.scala 42:41]
  assign grsTmp = normalFracTmp[2:0]; // @[FMAEnc.scala 45:41]
  assign _T_54 = grsTmp[2:1]; // @[FMAEnc.scala 48:40]
  assign _T_55 = grsTmp[0:0]; // @[FMAEnc.scala 48:56]
  assign underflow = $signed(sumScale) < $signed(-4'sh3); // @[FMAEnc.scala 55:32]
  assign overflow = $signed(sumScale) > $signed(4'sh2); // @[FMAEnc.scala 56:32]
  assign _T_57 = io_signSumSig != 6'h0; // @[FMAEnc.scala 65:35]
  assign decF_isZero = ~ _T_57; // @[FMAEnc.scala 65:20]
  assign _T_59 = underflow ? $signed(-4'sh3) : $signed(sumScale); // @[Mux.scala 87:16]
  assign _T_60 = overflow ? $signed(4'sh2) : $signed(_T_59); // @[Mux.scala 87:16]
  assign _GEN_3 = _T_60[2:0]; // @[FMAEnc.scala 62:18 FMAEnc.scala 68:17]
  assign decF_scale = $signed(_GEN_3); // @[FMAEnc.scala 62:18 FMAEnc.scala 68:17]
  assign _T_62 = decF_scale[2:2]; // @[convert.scala 49:36]
  assign _T_64 = ~ decF_scale; // @[convert.scala 50:36]
  assign _T_65 = $signed(_T_64); // @[convert.scala 50:36]
  assign _T_66 = _T_62 ? $signed(_T_65) : $signed(decF_scale); // @[convert.scala 50:28]
  assign _T_67 = _T_62 ^ io_sumSign; // @[convert.scala 51:31]
  assign _T_68 = ~ _T_67; // @[convert.scala 53:34]
  assign _T_71 = {_T_68,_T_67,sumFrac,_T_54,_T_55}; // @[Cat.scala 29:58]
  assign _T_72 = $unsigned(_T_66); // @[Shift.scala 39:17]
  assign _T_73 = _T_72 < 3'h6; // @[Shift.scala 39:24]
  assign _T_75 = _T_71[5:4]; // @[Shift.scala 90:30]
  assign _T_76 = _T_71[3:0]; // @[Shift.scala 90:48]
  assign _T_77 = _T_76 != 4'h0; // @[Shift.scala 90:57]
  assign _GEN_4 = {{1'd0}, _T_77}; // @[Shift.scala 90:39]
  assign _T_78 = _T_75 | _GEN_4; // @[Shift.scala 90:39]
  assign _T_79 = _T_72[2]; // @[Shift.scala 12:21]
  assign _T_80 = _T_71[5]; // @[Shift.scala 12:21]
  assign _T_82 = _T_80 ? 4'hf : 4'h0; // @[Bitwise.scala 71:12]
  assign _T_83 = {_T_82,_T_78}; // @[Cat.scala 29:58]
  assign _T_84 = _T_79 ? _T_83 : _T_71; // @[Shift.scala 91:22]
  assign _T_85 = _T_72[1:0]; // @[Shift.scala 92:77]
  assign _T_86 = _T_84[5:2]; // @[Shift.scala 90:30]
  assign _T_87 = _T_84[1:0]; // @[Shift.scala 90:48]
  assign _T_88 = _T_87 != 2'h0; // @[Shift.scala 90:57]
  assign _GEN_5 = {{3'd0}, _T_88}; // @[Shift.scala 90:39]
  assign _T_89 = _T_86 | _GEN_5; // @[Shift.scala 90:39]
  assign _T_90 = _T_85[1]; // @[Shift.scala 12:21]
  assign _T_91 = _T_84[5]; // @[Shift.scala 12:21]
  assign _T_93 = _T_91 ? 2'h3 : 2'h0; // @[Bitwise.scala 71:12]
  assign _T_94 = {_T_93,_T_89}; // @[Cat.scala 29:58]
  assign _T_95 = _T_90 ? _T_94 : _T_84; // @[Shift.scala 91:22]
  assign _T_96 = _T_85[0:0]; // @[Shift.scala 92:77]
  assign _T_97 = _T_95[5:1]; // @[Shift.scala 90:30]
  assign _T_98 = _T_95[0:0]; // @[Shift.scala 90:48]
  assign _GEN_6 = {{4'd0}, _T_98}; // @[Shift.scala 90:39]
  assign _T_100 = _T_97 | _GEN_6; // @[Shift.scala 90:39]
  assign _T_102 = _T_95[5]; // @[Shift.scala 12:21]
  assign _T_103 = {_T_102,_T_100}; // @[Cat.scala 29:58]
  assign _T_104 = _T_96 ? _T_103 : _T_95; // @[Shift.scala 91:22]
  assign _T_107 = _T_80 ? 6'h3f : 6'h0; // @[Bitwise.scala 71:12]
  assign _T_108 = _T_73 ? _T_104 : _T_107; // @[Shift.scala 39:10]
  assign _T_109 = _T_108[3]; // @[convert.scala 55:31]
  assign _T_110 = _T_108[2]; // @[convert.scala 56:31]
  assign _T_111 = _T_108[1]; // @[convert.scala 57:31]
  assign _T_112 = _T_108[0]; // @[convert.scala 58:31]
  assign _T_113 = _T_108[5:3]; // @[convert.scala 59:69]
  assign _T_114 = _T_113 != 3'h0; // @[convert.scala 59:81]
  assign _T_115 = ~ _T_114; // @[convert.scala 59:50]
  assign _T_117 = _T_113 == 3'h7; // @[convert.scala 60:81]
  assign _T_118 = _T_109 | _T_111; // @[convert.scala 61:44]
  assign _T_119 = _T_118 | _T_112; // @[convert.scala 61:52]
  assign _T_120 = _T_110 & _T_119; // @[convert.scala 61:36]
  assign _T_121 = ~ _T_117; // @[convert.scala 62:63]
  assign _T_122 = _T_121 & _T_120; // @[convert.scala 62:103]
  assign _T_123 = _T_115 | _T_122; // @[convert.scala 62:60]
  assign _GEN_7 = {{2'd0}, _T_123}; // @[convert.scala 63:56]
  assign _T_126 = _T_113 + _GEN_7; // @[convert.scala 63:56]
  assign _T_127 = {io_sumSign,_T_126}; // @[Cat.scala 29:58]
  assign io_F = _T_135; // @[FMAEnc.scala 85:15]
  assign io_outValid = _T_131; // @[FMAEnc.scala 84:15]
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
  _T_131 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_135 = _RAND_1[3:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (reset) begin
      _T_131 <= 1'h0;
    end else begin
      _T_131 <= io_inValid_phase2;
    end
    if (io_inValid_phase2) begin
      if (io_outIsNaR_phase2) begin
        _T_135 <= 4'h8;
      end else begin
        if (decF_isZero) begin
          _T_135 <= 4'h0;
        end else begin
          _T_135 <= _T_127;
        end
      end
    end
  end
endmodule
