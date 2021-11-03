module FMA5_1(
  input        clock,
  input        reset,
  input        io_inValid,
  input  [2:0] io_sigA,
  input  [2:0] io_sigB,
  input        io_outIsNaR,
  input        io_Csign,
  input        io_CisNar,
  input        io_CisZero,
  input  [2:0] io_Cfrac,
  input  [3:0] io_Ascale,
  input  [3:0] io_Bscale,
  input  [3:0] io_Cscale,
  output [5:0] io_signSumSig,
  output [3:0] io_greaterScale,
  output       io_outIsNaR_phase2,
  output       io_sumSign,
  output       io_inValid_phase2
);
  wire [5:0] _T; // @[FMA.scala 43:28]
  wire [5:0] sigP; // @[FMA.scala 43:39]
  wire [1:0] head2; // @[FMA.scala 44:28]
  wire  _T_1; // @[FMA.scala 45:31]
  wire  _T_2; // @[FMA.scala 45:25]
  wire  _T_3; // @[FMA.scala 45:42]
  wire  addTwo; // @[FMA.scala 45:35]
  wire  _T_4; // @[FMA.scala 47:23]
  wire  _T_5; // @[FMA.scala 47:49]
  wire  addOne; // @[FMA.scala 47:43]
  wire [1:0] _T_6; // @[Cat.scala 29:58]
  wire [2:0] expBias; // @[FMA.scala 48:39]
  wire  mulSign; // @[FMA.scala 49:28]
  wire [4:0] _T_7; // @[FMA.scala 51:29]
  wire [4:0] _GEN_8; // @[FMA.scala 51:42]
  wire [4:0] _T_9; // @[FMA.scala 51:42]
  wire [4:0] mulScale; // @[FMA.scala 51:42]
  wire [3:0] _T_10; // @[FMA.scala 54:29]
  wire [2:0] _T_11; // @[FMA.scala 55:29]
  wire [3:0] _T_12; // @[FMA.scala 55:48]
  wire [3:0] mulSigTmp; // @[FMA.scala 52:22]
  wire  _T_14; // @[FMA.scala 59:39]
  wire  _T_15; // @[FMA.scala 59:43]
  wire [2:0] _T_16; // @[FMA.scala 60:39]
  wire [4:0] mulSig; // @[Cat.scala 29:58]
  reg  _T_19; // @[Reg.scala 15:16]
  reg [31:0] _RAND_0;
  reg [4:0] mulSig_phase2; // @[Reg.scala 15:16]
  reg [31:0] _RAND_1;
  reg [2:0] _T_25; // @[Reg.scala 15:16]
  reg [31:0] _RAND_2;
  reg [4:0] mulScale_phase2; // @[Reg.scala 15:16]
  reg [31:0] _RAND_3;
  reg [3:0] addScale_phase2; // @[Reg.scala 15:16]
  reg [31:0] _RAND_4;
  reg  addSign_phase2; // @[Reg.scala 15:16]
  reg [31:0] _RAND_5;
  reg  addZero_phase2; // @[Reg.scala 15:16]
  reg [31:0] _RAND_6;
  reg  _T_39; // @[Valid.scala 117:22]
  reg [31:0] _RAND_7;
  wire  _T_42; // @[FMA.scala 89:29]
  wire  _T_43; // @[FMA.scala 89:47]
  wire  _T_44; // @[FMA.scala 89:45]
  wire  addFrac_phase2; // @[FMA.scala 67:29 FMA.scala 76:19]
  wire [4:0] extAddSig; // @[Cat.scala 29:58]
  wire [4:0] _GEN_9; // @[FMA.scala 94:36]
  wire [4:0] _T_48; // @[FMA.scala 94:36]
  wire [4:0] scale_diff; // @[FMA.scala 94:36]
  wire  _T_49; // @[FMA.scala 95:43]
  wire  mulGreater; // @[FMA.scala 95:27]
  wire [4:0] _T_51; // @[FMA.scala 96:26]
  wire [4:0] _T_53; // @[FMA.scala 98:53]
  wire [4:0] _T_54; // @[FMA.scala 98:53]
  wire [4:0] sDiff; // @[FMA.scala 98:30]
  wire [4:0] greaterSig; // @[FMA.scala 99:26]
  wire [4:0] smallerSigTmp; // @[FMA.scala 100:26]
  wire [4:0] _T_55; // @[FMA.scala 101:65]
  wire  _T_56; // @[Shift.scala 39:24]
  wire [2:0] _T_57; // @[Shift.scala 40:44]
  wire  _T_58; // @[Shift.scala 90:30]
  wire [3:0] _T_59; // @[Shift.scala 90:48]
  wire  _T_60; // @[Shift.scala 90:57]
  wire  _T_61; // @[Shift.scala 90:39]
  wire  _T_62; // @[Shift.scala 12:21]
  wire  _T_63; // @[Shift.scala 12:21]
  wire [3:0] _T_65; // @[Bitwise.scala 71:12]
  wire [4:0] _T_66; // @[Cat.scala 29:58]
  wire [4:0] _T_67; // @[Shift.scala 91:22]
  wire [1:0] _T_68; // @[Shift.scala 92:77]
  wire [2:0] _T_69; // @[Shift.scala 90:30]
  wire [1:0] _T_70; // @[Shift.scala 90:48]
  wire  _T_71; // @[Shift.scala 90:57]
  wire [2:0] _GEN_10; // @[Shift.scala 90:39]
  wire [2:0] _T_72; // @[Shift.scala 90:39]
  wire  _T_73; // @[Shift.scala 12:21]
  wire  _T_74; // @[Shift.scala 12:21]
  wire [1:0] _T_76; // @[Bitwise.scala 71:12]
  wire [4:0] _T_77; // @[Cat.scala 29:58]
  wire [4:0] _T_78; // @[Shift.scala 91:22]
  wire  _T_79; // @[Shift.scala 92:77]
  wire [3:0] _T_80; // @[Shift.scala 90:30]
  wire  _T_81; // @[Shift.scala 90:48]
  wire [3:0] _GEN_11; // @[Shift.scala 90:39]
  wire [3:0] _T_83; // @[Shift.scala 90:39]
  wire  _T_85; // @[Shift.scala 12:21]
  wire [4:0] _T_86; // @[Cat.scala 29:58]
  wire [4:0] _T_87; // @[Shift.scala 91:22]
  wire [4:0] _T_90; // @[Bitwise.scala 71:12]
  wire [4:0] smallerSig; // @[Shift.scala 39:10]
  wire [5:0] rawSumSig; // @[FMA.scala 102:34]
  wire  _T_91; // @[FMA.scala 103:42]
  wire  _T_92; // @[FMA.scala 103:46]
  wire  _T_93; // @[FMA.scala 103:79]
  wire [4:0] _T_96; // @[FMA.scala 105:53]
  wire [3:0] _GEN_12; // @[FMA.scala 96:20]
  assign _T = $signed(io_sigA) * $signed(io_sigB); // @[FMA.scala 43:28]
  assign sigP = $unsigned(_T); // @[FMA.scala 43:39]
  assign head2 = sigP[5:4]; // @[FMA.scala 44:28]
  assign _T_1 = head2[1]; // @[FMA.scala 45:31]
  assign _T_2 = ~ _T_1; // @[FMA.scala 45:25]
  assign _T_3 = head2[0]; // @[FMA.scala 45:42]
  assign addTwo = _T_2 & _T_3; // @[FMA.scala 45:35]
  assign _T_4 = sigP[5]; // @[FMA.scala 47:23]
  assign _T_5 = sigP[3]; // @[FMA.scala 47:49]
  assign addOne = _T_4 ^ _T_5; // @[FMA.scala 47:43]
  assign _T_6 = {addTwo,addOne}; // @[Cat.scala 29:58]
  assign expBias = {1'b0,$signed(_T_6)}; // @[FMA.scala 48:39]
  assign mulSign = sigP[5:5]; // @[FMA.scala 49:28]
  assign _T_7 = $signed(io_Ascale) + $signed(io_Bscale); // @[FMA.scala 51:29]
  assign _GEN_8 = {{2{expBias[2]}},expBias}; // @[FMA.scala 51:42]
  assign _T_9 = $signed(_T_7) + $signed(_GEN_8); // @[FMA.scala 51:42]
  assign mulScale = $signed(_T_9); // @[FMA.scala 51:42]
  assign _T_10 = sigP[3:0]; // @[FMA.scala 54:29]
  assign _T_11 = sigP[2:0]; // @[FMA.scala 55:29]
  assign _T_12 = {_T_11, 1'h0}; // @[FMA.scala 55:48]
  assign mulSigTmp = addOne ? _T_10 : _T_12; // @[FMA.scala 52:22]
  assign _T_14 = mulSigTmp[3:3]; // @[FMA.scala 59:39]
  assign _T_15 = _T_14 | addTwo; // @[FMA.scala 59:43]
  assign _T_16 = mulSigTmp[2:0]; // @[FMA.scala 60:39]
  assign mulSig = {mulSign,_T_15,_T_16}; // @[Cat.scala 29:58]
  assign _T_42 = ~ addSign_phase2; // @[FMA.scala 89:29]
  assign _T_43 = ~ addZero_phase2; // @[FMA.scala 89:47]
  assign _T_44 = _T_42 & _T_43; // @[FMA.scala 89:45]
  assign addFrac_phase2 = _T_25[0]; // @[FMA.scala 67:29 FMA.scala 76:19]
  assign extAddSig = {addSign_phase2,_T_44,addFrac_phase2,2'h0}; // @[Cat.scala 29:58]
  assign _GEN_9 = {{1{addScale_phase2[3]}},addScale_phase2}; // @[FMA.scala 94:36]
  assign _T_48 = $signed(mulScale_phase2) - $signed(_GEN_9); // @[FMA.scala 94:36]
  assign scale_diff = $signed(_T_48); // @[FMA.scala 94:36]
  assign _T_49 = scale_diff[4:4]; // @[FMA.scala 95:43]
  assign mulGreater = ~ _T_49; // @[FMA.scala 95:27]
  assign _T_51 = mulGreater ? $signed(mulScale_phase2) : $signed({{1{addScale_phase2[3]}},addScale_phase2}); // @[FMA.scala 96:26]
  assign _T_53 = $signed(5'sh0) - $signed(scale_diff); // @[FMA.scala 98:53]
  assign _T_54 = $signed(_T_53); // @[FMA.scala 98:53]
  assign sDiff = mulGreater ? $signed(scale_diff) : $signed(_T_54); // @[FMA.scala 98:30]
  assign greaterSig = mulGreater ? mulSig_phase2 : extAddSig; // @[FMA.scala 99:26]
  assign smallerSigTmp = mulGreater ? extAddSig : mulSig_phase2; // @[FMA.scala 100:26]
  assign _T_55 = $unsigned(sDiff); // @[FMA.scala 101:65]
  assign _T_56 = _T_55 < 5'h5; // @[Shift.scala 39:24]
  assign _T_57 = _T_55[2:0]; // @[Shift.scala 40:44]
  assign _T_58 = smallerSigTmp[4:4]; // @[Shift.scala 90:30]
  assign _T_59 = smallerSigTmp[3:0]; // @[Shift.scala 90:48]
  assign _T_60 = _T_59 != 4'h0; // @[Shift.scala 90:57]
  assign _T_61 = _T_58 | _T_60; // @[Shift.scala 90:39]
  assign _T_62 = _T_57[2]; // @[Shift.scala 12:21]
  assign _T_63 = smallerSigTmp[4]; // @[Shift.scala 12:21]
  assign _T_65 = _T_63 ? 4'hf : 4'h0; // @[Bitwise.scala 71:12]
  assign _T_66 = {_T_65,_T_61}; // @[Cat.scala 29:58]
  assign _T_67 = _T_62 ? _T_66 : smallerSigTmp; // @[Shift.scala 91:22]
  assign _T_68 = _T_57[1:0]; // @[Shift.scala 92:77]
  assign _T_69 = _T_67[4:2]; // @[Shift.scala 90:30]
  assign _T_70 = _T_67[1:0]; // @[Shift.scala 90:48]
  assign _T_71 = _T_70 != 2'h0; // @[Shift.scala 90:57]
  assign _GEN_10 = {{2'd0}, _T_71}; // @[Shift.scala 90:39]
  assign _T_72 = _T_69 | _GEN_10; // @[Shift.scala 90:39]
  assign _T_73 = _T_68[1]; // @[Shift.scala 12:21]
  assign _T_74 = _T_67[4]; // @[Shift.scala 12:21]
  assign _T_76 = _T_74 ? 2'h3 : 2'h0; // @[Bitwise.scala 71:12]
  assign _T_77 = {_T_76,_T_72}; // @[Cat.scala 29:58]
  assign _T_78 = _T_73 ? _T_77 : _T_67; // @[Shift.scala 91:22]
  assign _T_79 = _T_68[0:0]; // @[Shift.scala 92:77]
  assign _T_80 = _T_78[4:1]; // @[Shift.scala 90:30]
  assign _T_81 = _T_78[0:0]; // @[Shift.scala 90:48]
  assign _GEN_11 = {{3'd0}, _T_81}; // @[Shift.scala 90:39]
  assign _T_83 = _T_80 | _GEN_11; // @[Shift.scala 90:39]
  assign _T_85 = _T_78[4]; // @[Shift.scala 12:21]
  assign _T_86 = {_T_85,_T_83}; // @[Cat.scala 29:58]
  assign _T_87 = _T_79 ? _T_86 : _T_78; // @[Shift.scala 91:22]
  assign _T_90 = _T_63 ? 5'h1f : 5'h0; // @[Bitwise.scala 71:12]
  assign smallerSig = _T_56 ? _T_87 : _T_90; // @[Shift.scala 39:10]
  assign rawSumSig = greaterSig + smallerSig; // @[FMA.scala 102:34]
  assign _T_91 = mulSig_phase2[4:4]; // @[FMA.scala 103:42]
  assign _T_92 = _T_91 ^ addSign_phase2; // @[FMA.scala 103:46]
  assign _T_93 = rawSumSig[5:5]; // @[FMA.scala 103:79]
  assign _T_96 = greaterSig + smallerSig; // @[FMA.scala 105:53]
  assign io_signSumSig = {io_sumSign,_T_96}; // @[FMA.scala 105:20]
  assign _GEN_12 = _T_51[3:0]; // @[FMA.scala 96:20]
  assign io_greaterScale = $signed(_GEN_12); // @[FMA.scala 96:20]
  assign io_outIsNaR_phase2 = _T_19; // @[FMA.scala 74:22]
  assign io_sumSign = _T_92 ^ _T_93; // @[FMA.scala 103:20]
  assign io_inValid_phase2 = _T_39; // @[FMA.scala 81:22]
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
  _T_19 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  mulSig_phase2 = _RAND_1[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_25 = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  mulScale_phase2 = _RAND_3[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  addScale_phase2 = _RAND_4[3:0];
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
  _T_39 = _RAND_7[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (io_inValid) begin
      _T_19 <= io_outIsNaR;
    end
    if (io_inValid) begin
      mulSig_phase2 <= mulSig;
    end
    if (io_inValid) begin
      _T_25 <= io_Cfrac;
    end
    if (io_inValid) begin
      mulScale_phase2 <= mulScale;
    end
    if (io_inValid) begin
      addScale_phase2 <= io_Cscale;
    end
    if (io_inValid) begin
      addSign_phase2 <= io_Csign;
    end
    if (io_inValid) begin
      addZero_phase2 <= io_CisZero;
    end
    if (reset) begin
      _T_39 <= 1'h0;
    end else begin
      _T_39 <= io_inValid;
    end
  end
endmodule
