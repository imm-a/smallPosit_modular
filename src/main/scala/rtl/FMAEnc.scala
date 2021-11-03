package posit.rtl
import chisel3._
import chisel3.util._
import posit.convert._
import posit.function._
import posit.function.Shift._


class FMAEnc(nBits: Int, eBits: Int, latency: Int = 2) extends Module {

  require(latency <= 2) 

  override def desiredName = s"FMAEnc${nBits}_${eBits}"
  val regimeWidth = log2Ceil(nBits - 1) + 1  // 1bit sign
  val fracWidth   = nBits - eBits - 3
  val sigWidth    = fracWidth + 1
  val maxScale    = (1 << eBits) * (nBits - 2)
  val minScale    = -maxScale - 1
  
      val io = IO(new Bundle {
    /*--------------------------------------------------------------------
    *--------------------------------------------------------------------*/
    val inValid_phase2 = Input(Bool())
    val signSumSig   = Input(UInt((2*(nBits-eBits-1)).W))
    val sumSign = Input(Bool())
    val greaterScale = Input(SInt((regimeWidth + eBits).W))
    val outIsNaR_phase2 = Input(Bool())
    /*--------------------------------------------------------------------
    *--------------------------------------------------------------------*/
    val F        = Output(UInt(nBits.W))
    val outValid = Output(Bool())
  })
  
  val sumWidth      = io.signSumSig.getWidth
  val sumXor        = io.signSumSig(sumWidth - 1, 1) ^ io.signSumSig.tail(1)
  val sumLZD        = LZD.lzd_dual(sumXor)
  val shiftValue    = (~sumLZD).asUInt
  val normalFracTmp = io.signSumSig.tail(2).shiftLeftLogic(shiftValue)

  // sum
  val sumScale      = io.greaterScale + 2.S + Cat(1.U, sumLZD).asSInt
  val sumFrac       = normalFracTmp.head(fracWidth)
  
  // grs
  val grsTmp        = normalFracTmp.tail(fracWidth)
  val grsTmpWidth   = grsTmp.getWidth
  val grsFull       = if(grsTmpWidth >= 3) 
                        Cat(grsTmp.head(2), grsTmp.tail(2).orR)
                      else {
                        val fillWidth = 3 - grsTmpWidth
                        Cat(grsTmp, 0.U(fillWidth.W))
                      }
  
  // exception 
  val underflow     = sumScale < minScale.S
  val overflow      = sumScale > maxScale.S

////////////////////////////////////////////////////////////////////////////
///////////////////////             decF             ///////////////////////
//////////////////////////////////////////////////////////////////////////// 

  val decF = Wire(new RawFloat(nBits, eBits))

  decF.isNaR    := io.outIsNaR_phase2
  decF.isZero   := ~io.signSumSig.orR
  decF.sign     := io.sumSign
  decF.fraction := sumFrac
  decF.scale    := MuxCase(
                            sumScale, 
                            Array(
                                    overflow  -> maxScale.S,
                                    underflow -> minScale.S
                                  )
                   		    )
  decF.grs      := grsFull

////////////////////////////////////////////////////////////////////////////
///////////////////////            code              ///////////////////////
////////////////////////////////////////////////////////////////////////////

  val outRegs = if(latency == 2) 1 else 0
  val outTmp  = RawFloatToPosit(decF)

  io.outValid := Pipe(io.inValid_phase2, false.B, outRegs).valid
  io.F        := Pipe(io.inValid_phase2, outTmp, outRegs).bits
  
} 
