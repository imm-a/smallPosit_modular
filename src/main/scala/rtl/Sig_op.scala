package posit.rtl

import chisel3._
import chisel3.util._
import posit.function._
import posit.function.Shift._
import posit.convert._




class Sig_op(nBits: Int, eBits: Int) extends Module {
  val io = IO(new Bundle {
    val A = Input(UInt(nBits.W))
    val B = Input(UInt(nBits.W))
    val greaterSign = Output(Bool())
    val smallerSign = Output(Bool())
    val greaterExp = Output((SInt((log2Ceil(nBits - 1) + 1+eBits).W)))
    //val C = Output(UInt(nBits.W))
    val greaterSig = Output(UInt((nBits-eBits-1).W)) 
    val smallerSig = Output(UInt((nBits-eBits+2).W))
    val AisNar = Output(Bool())
    val BisNar = Output(Bool())
    val AisZero = Output(Bool())
    val BisZero = Output(Bool())    
    //val greaterExp = Output(SInt((nBits-2+eBits).W))
  })


  // param
  val fracWidth = nBits - eBits - 3
  val maxScale  = (1 << eBits) * (nBits - 2)
  //override def desiredName = s"PositAdder${nBits}_${eBits}" 
   override def desiredName = s"Sig_op${nBits}_${eBits}" 
  val decA = RawFloatFromPosit(io.A, nBits, eBits)
  val decB = RawFloatFromPosit(io.B, nBits, eBits)
//printf("Print during simulation: Input is %d\n", decA.scale)
  val aGTb        = decA.scale > decB.scale
  io.greaterSign := Mux(aGTb, decA.sign, decB.sign)
  io.smallerSign := Mux(aGTb, decB.sign, decA.sign)
  io.greaterExp  := Mux(aGTb, decA.scale, decB.scale).asSInt
  val smallerExp  = Mux(aGTb, decB.scale, decA.scale).asSInt
  val greaterFrac = Mux(aGTb, decA.fraction, decB.fraction)
  val smallerFrac = Mux(aGTb, decB.fraction, decA.fraction)
  val smallerZero = Mux(aGTb, decB.isZero, decA.isZero)
  val scale_diff  = io.greaterExp - smallerExp
  io.AisNar := decA.isNaR
  io.BisNar := decB.isNaR  
  io.AisZero := decA.isZero
  io.BisZero := decB.isZero
  val sSig   = Cat(io.smallerSign, ~(io.smallerSign | smallerZero), smallerFrac,0.U(3.W)).shiftRightArithSticky(scale_diff.asUInt)
  io.smallerSig := sSig.asUInt
  //printf("Print during simulation: B is %b\n", io.smallerSig(fracWidth + 4, 3) )
  //print(io.greaterSig.getWidth)
  //print(io.smallerSig(fracWidth + 4, 3).getWidth)
  
 io.greaterSig  := Cat(io.greaterSign, ~io.greaterSign, greaterFrac).asUInt
 //printf("Print during simulation: A is %b\n", io.greaterSig)
// printf(p"Print during simulation: IO is $io\n")
}
