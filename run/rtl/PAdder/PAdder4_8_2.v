module PAdder4_8_2(
  input        clock,
  input        reset,
  input  [4:0] io_greaterSig,
  input  [7:0] io_smallerSig,
  input        io_greaterSign,
  input        io_smallerSign,
  output [8:0] io_signSumSig,
  output       io_sumSign
);
  wire  _T; // @[PAdder.scala 22:34]
  wire  _T_1; // @[PAdder.scala 22:67]
  wire [1:0] rawSumSig; // @[PAdder.scala 22:50]
  wire  _T_2; // @[PAdder.scala 24:36]
  wire  _T_3; // @[PAdder.scala 24:69]
  wire  _T_5; // @[PAdder.scala 25:51]
  wire [2:0] _T_6; // @[PAdder.scala 25:69]
  wire [6:0] _T_9; // @[Cat.scala 29:58]
  assign _T = io_greaterSig[4]; // @[PAdder.scala 22:34]
  assign _T_1 = io_smallerSig[7]; // @[PAdder.scala 22:67]
  assign rawSumSig = _T + _T_1; // @[PAdder.scala 22:50]
  assign _T_2 = io_greaterSign ^ io_smallerSign; // @[PAdder.scala 24:36]
  assign _T_3 = rawSumSig[1:1]; // @[PAdder.scala 24:69]
  assign _T_5 = _T + _T_1; // @[PAdder.scala 25:51]
  assign _T_6 = io_smallerSig[2:0]; // @[PAdder.scala 25:69]
  assign _T_9 = {io_sumSign,_T_5,_T_6,2'h0}; // @[Cat.scala 29:58]
  assign io_signSumSig = {{2'd0}, _T_9}; // @[PAdder.scala 25:18]
  assign io_sumSign = _T_2 ^ _T_3; // @[PAdder.scala 24:18]
endmodule
