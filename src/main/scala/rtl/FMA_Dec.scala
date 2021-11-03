package posit.rtl
import chisel3._
import chisel3.util._
import posit.convert._
import posit.function._
import posit.function.Shift._


class FMA_Dec(nBits: Int, eBits: Int, latency: Int = 2) extends Module {

  require(latency <= 2) 

  override def desiredName = s"FMA_Dec${nBits}_${eBits}"
  
  
    val io = IO(new Bundle {
    /*--------------------------------------------------------------------
    *--------------------------------------------------------------------*/
    
    val A        = Input(UInt((nBits.W)))
    val B        = Input(UInt(nBits.W))
    val C        = Input(UInt(nBits.W))
    val sigA     = Output(SInt((nBits-eBits-1).W))
    val sigB     = Output(SInt((nBits-eBits-1).W))
    val outIsNaR = Output(Bool())
    val Csign   = Output(Bool())
    val CisNar = Output(Bool()) 
    val CisZero = Output(Bool())
    val Cfrac = Output(UInt((nBits-eBits-3).W))
    val Ascale = Output((SInt((log2Ceil(nBits - 1) + 1+eBits).W)))
    val Bscale = Output((SInt((log2Ceil(nBits - 1) + 1+eBits).W)))
    val Cscale = Output((SInt((log2Ceil(nBits - 1) + 1+eBits).W)))
     

  })
  
  val fmaOp    = 0.U(2.W)
  val realA = (Fill(nBits, fmaOp(1)) ^ io.A) + fmaOp(1)
  val realC = (Fill(nBits, fmaOp(0)) ^ io.C) + fmaOp(0)

  val decA = RawFloatFromPosit(realA, nBits, eBits)
  val decB = RawFloatFromPosit(io.B, nBits, eBits)
  val decC = RawFloatFromPosit(realC, nBits, eBits)
  
  
  io.outIsNaR  := decA.isNaR || decB.isNaR || decC.isNaR
  io.Ascale := decA.scale
  io.Bscale := decB.scale
  io.sigA      := Cat(decA.sign, ~decA.sign & ~decA.isZero, decA.fraction).asSInt
  io.sigB      := Cat(decB.sign, ~decB.sign & ~decB.isZero, decB.fraction).asSInt
  io.CisNar 	:= decC.isNaR
  io.CisZero 	:= decC.isZero
  io.Cfrac	:= decC.fraction
  io.Cscale    := decC.scale
  io.Csign := decC.sign
  }
