package posit.rtl

import chisel3._
import chisel3.util._
import posit.function._
import posit.function.Shift._
import posit.convert._


class Post_Adder(nBits: Int, eBits: Int) extends Module {
  val io = IO(new Bundle {
    val signSumSig = Input(UInt((nBits-eBits+3).W))
    val greaterExp = Input((SInt((log2Ceil(nBits - 1) + 1+eBits).W)))
    val sumSign = Input(Bool())
    val overflow = Output(Bool())
    val AisNar = Input(Bool())
    val BisNar = Input(Bool())
    val AisZero = Input(Bool())
    val BisZero = Input(Bool())
    val S = Output((UInt((nBits).W)))
  })
  val fracWidth = nBits - eBits - 3
  override def desiredName = s"Post_Adder${nBits}_${eBits}" 
    val sumWidth    = io.signSumSig.getWidth
    val maxScale  = (1 << eBits) * (nBits - 2)
  val sumXor      = io.signSumSig(sumWidth - 1, 1) ^ io.signSumSig.tail(1)
 val sumLZD      = LZD.lzd_dual(sumXor)
 val scaleBias   = Cat(1.U, sumLZD).asSInt + 2.S
  val sumScale    = io.greaterExp +& scaleBias
  io.overflow    := sumScale > maxScale.S
  val normalShift = (~sumLZD).asUInt
  val shiftSig    = io.signSumSig.tail(2).shiftLeftLogic(normalShift)
  /*print(sumWidth)
  printf("sx %d\n",sumXor)
 printf("slzd %d\n",sumLZD)    
  //io.out := shiftSig.asUInt
  printf("%d\n",sumScale)
printf("%d\n",maxScale.S)  
printf("%d\n",shiftSig)*/

 val decS        = Wire(new RawFloat(nBits, eBits))
  
  decS.sign      := io.sumSign
  decS.scale     := Mux(io.overflow, maxScale.S, sumScale)
  decS.fraction  := shiftSig.head(fracWidth) 
  decS.isNaR     := io.AisNar || io.BisNar
  decS.isZero    := ~io.signSumSig.orR || io.AisZero && io.BisZero
  decS.grs       := Cat(shiftSig(3, 2), shiftSig(1) | shiftSig(0))
 io.S := RawFloatToPosit(decS)
 //printf(p"Print during simulation: IO is $io\n")  
}

