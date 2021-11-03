;buildInfoPackage: chisel3, version: 3.2.0, scalaVersion: 2.12.10, sbtVersion: 1.3.2
circuit PAdder4_8_1 : 
  module PAdder4_8_1 : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip greaterSig : UInt<6>, flip smallerSig : UInt<9>, flip greaterSign : UInt<1>, flip smallerSign : UInt<1>, signSumSig : UInt<10>, sumSign : UInt<1>}
    
    node _T = bits(io.greaterSig, 5, 4) @[PAdder.scala 22:34]
    node _T_1 = bits(io.smallerSig, 8, 7) @[PAdder.scala 22:67]
    node rawSumSig = add(_T, _T_1) @[PAdder.scala 22:50]
    node _T_2 = xor(io.greaterSign, io.smallerSign) @[PAdder.scala 24:36]
    node _T_3 = head(rawSumSig, 1) @[PAdder.scala 24:69]
    node _T_4 = xor(_T_2, _T_3) @[PAdder.scala 24:53]
    io.sumSign <= _T_4 @[PAdder.scala 24:18]
    node _T_5 = tail(rawSumSig, 1) @[PAdder.scala 25:51]
    node _T_6 = bits(io.smallerSig, 2, 0) @[PAdder.scala 25:69]
    node _T_7 = cat(_T_6, UInt<2>("h00")) @[Cat.scala 29:58]
    node _T_8 = cat(io.sumSign, _T_5) @[Cat.scala 29:58]
    node _T_9 = cat(_T_8, _T_7) @[Cat.scala 29:58]
    io.signSumSig <= _T_9 @[PAdder.scala 25:18]
    
