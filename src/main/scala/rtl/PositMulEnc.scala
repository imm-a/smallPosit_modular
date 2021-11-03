package posit.rtl

import chisel3._
import chisel3.util._
import posit.function._
import posit.function.Shift._
import posit.convert._
class PositMulEnc(nBits: Int, eBits: Int) extends Module {
  val io = IO(new Bundle {
    val sigP = Input(UInt(((2*(nBits-eBits-1)).W)))
    val decAscale = Input((SInt((log2Ceil(nBits - 1) + 1+eBits).W)))
    val decBscale = Input((SInt((log2Ceil(nBits - 1) + 1+eBits).W)))
    val decAisNar = Input(Bool())
    val decBisNar = Input(Bool())
    val decAisZero = Input(Bool())
    val decBisZero = Input(Bool())
    val M = Output(UInt(nBits.W))
  })
  override def desiredName = s"PositMulEnc${nBits}_${eBits}"
        //printf(p"Print during simulation: IO is $io\n")
  val fracWidth = nBits - eBits - 3
  val maxScale  = (1 << eBits) * (nBits - 2)
  val minScale  = -maxScale -1
    val head2     = io.sigP.head(2)
	val addTwo    = ~head2(1) & head2(0)
	// -2 doesn't  need addOne
  val addOne    = io.sigP(2 * fracWidth + 3) ^ io.sigP(2 * fracWidth + 1) 
  val expBias   = Cat(addTwo, addOne).zext
  val frac      = Mux(
                      addOne, 
								 	    io.sigP(2 * fracWidth, 0), 
									    io.sigP(2 * fracWidth - 1, 0) << 1
								    ) 
    //print(frac.getWidth)
  val mulScale  = io.decAscale +& io.decBscale + expBias
  val underflow = mulScale < minScale.S
  val overflow  = mulScale > maxScale.S

  val decM      = Wire(new RawFloat(nBits, eBits))
  decM.sign     := io.sigP.head(1).asBool
  decM.scale    := MuxCase(
                            mulScale, 
                            Array(
                                  overflow  -> maxScale.S,
                                  underflow -> minScale.S
                                )
                   		    )
  decM.fraction := frac.head(fracWidth)
  decM.isNaR    := io.decAisNar || io.decBisNar
  decM.isZero   := io.decAisZero || io.decBisZero
   //printf("Print during simulation:s fraction is is %b\n",decM.fraction )
  // grs
  val grsTmp      = frac.tail(fracWidth)
  val grsTmpWidth = grsTmp.getWidth
  if(grsTmpWidth >= 3) {
    decM.grs := Cat(grsTmp.head(2), grsTmp.tail(2).orR)
  } else {
    val fillWidth = 3 - grsTmpWidth
    val grsFull   = Cat(grsTmp, 0.U(fillWidth.W))

    decM.grs := grsFull
  }
//printf("Print during simulation:s scale is is %b\n",decM.scale )
  io.M := RawFloatToPosit(decM)
}
