package posit.rtl

import chisel3._
import chisel3.util._
import posit.function._
import posit.function.Shift._
import posit.convert._


class PAdder(nBits: Int, eBits: Int) extends Module {
  val io = IO(new Bundle {
    val greaterSig = Input(UInt((nBits-eBits-1).W)) 
    val smallerSig = Input(UInt((nBits-eBits+2).W))
    val greaterSign = Input(Bool())
    val smallerSign = Input(Bool())
    val signSumSig = Output(UInt((nBits-eBits+3).W))
    val sumSign = Output(Bool())
    //val sumWidth  = Output(UInt((log2Ceil(nBits-eBits+3)).W))
  })
  val fracWidth = nBits - eBits - 3
  override def desiredName = s"PAdder4_${nBits}_${eBits}" 
  val rawSumSig   = io.greaterSig(fracWidth+1,4) +& (io.smallerSig(fracWidth + 4, 7)) //4bits instead of 6
  //printf("raw %d\n",rawSumSig)
  io.sumSign     := io.greaterSign ^ io.smallerSign ^ rawSumSig.head(1)
  io.signSumSig  := Cat(io.sumSign, rawSumSig.tail(1), io.smallerSig(2, 0),0.U(2.W)).asUInt
  //val sumWidth    := (signSumSig.getWidth).asUInt

  //printf("%b\n",io.greaterSig)  
 // printf("%b\n",io.signSumSig)
  //printf("%b\n",rawSumSig.head(1))
  //print(io.signSumSig.getWidth)
  
// printf(p"Print during simulation: IO is $io\n")
}

