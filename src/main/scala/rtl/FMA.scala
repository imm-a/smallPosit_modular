package posit.rtl
import chisel3._
import chisel3.util._
import posit.convert._
import posit.function._
import posit.function.Shift._


class FMA(nBits: Int, eBits: Int, latency: Int = 2) extends Module {

  require(latency <= 2) 

  
  val regimeWidth = log2Ceil(nBits - 1) + 1  // 1bit sign
  val fracWidth   = nBits - eBits - 3
  val sigWidth    = fracWidth + 1
    val io = IO(new Bundle {
    /*--------------------------------------------------------------------
    *--------------------------------------------------------------------*/
    val inValid  = Input(Bool())
    
    val sigA        = Input(SInt((nBits-eBits-1).W))
    val sigB        = Input(SInt((nBits-eBits-1).W))
    val outIsNaR = Input(Bool())
    val Csign   = Input(Bool())
    val CisNar = Input(Bool()) 
    val CisZero = Input(Bool())
    val Cfrac = Input(UInt((nBits-eBits-1).W))
    val Ascale = Input((SInt((log2Ceil(nBits - 1) + 1+eBits).W)))
    val Bscale = Input((SInt((log2Ceil(nBits - 1) + 1+eBits).W)))
    val Cscale = Input((SInt((log2Ceil(nBits - 1) + 1+eBits).W))) 
    val signSumSig   = Output(UInt((2*(nBits-eBits-1)).W))
    val greaterScale = Output(SInt((regimeWidth + eBits).W))
    val outIsNaR_phase2 = Output(Bool())
    val sumSign = Output(Bool())
    val inValid_phase2 = Output(Bool())
    /*--------------------------------------------------------------------
    *--------------------------------------------------------------------*/
  })
  
  
  override def desiredName = s"FMA${nBits}_${eBits}"
  val sigP      = (io.sigA * io.sigB).asUInt
  val head2     = sigP.head(2)
	val addTwo    = ~head2(1) & head2(0)
	// -2 doesn't  need addOne
  val addOne    = sigP(2 * fracWidth + 3) ^ sigP(2 * fracWidth + 1) 
  val expBias   = Cat(addTwo, addOne).zext
  val mulSign   = sigP.head(1)
  val addSign   = io.Csign
  val mulScale  = io.Ascale +& io.Bscale + expBias
  val mulSigTmp = Mux(
                        addOne, 
                        sigP(2 * fracWidth + 1, 0), 
                        sigP(2 * fracWidth, 0) << 1
                      )
  val mulSig    = Cat(
                        sigP.head(1), 
                        mulSigTmp.head(1) | addTwo, 
                        mulSigTmp.tail(1)
                      )

  // pass to phase 2 add
  
  
  val mulSig_phase2   = Wire(UInt((2 * fracWidth + 3).W))
  val addFrac_phase2  = Wire(UInt(fracWidth.W))
  val mulScale_phase2 = Wire(SInt((regimeWidth + eBits + 1).W))
  val addScale_phase2 = Wire(SInt((regimeWidth + eBits).W))
  val addSign_phase2  = Wire(Bool())
  val addZero_phase2  = Wire(Bool())
  val addRegs         = if(latency > 0) 1 else 0

  io.outIsNaR_phase2 := Pipe(io.inValid, io.outIsNaR, addRegs).bits
  mulSig_phase2   := Pipe(io.inValid, mulSig, addRegs).bits
  addFrac_phase2  := Pipe(io.inValid, io.Cfrac, addRegs).bits
  mulScale_phase2 := Pipe(io.inValid, mulScale, addRegs).bits
  addScale_phase2 := Pipe(io.inValid, io.Cscale, addRegs).bits
  addSign_phase2  := Pipe(io.inValid, addSign, addRegs).bits
  addZero_phase2  := Pipe(io.inValid, io.CisZero, addRegs).bits
  io.inValid_phase2  := Pipe(io.inValid, false.B, addRegs).valid

////////////////////////////////////////////////////////////////////////////
///////////////////          phase 3    addition         ///////////////////
////////////////////////////////////////////////////////////////////////////
  
  val extAddSig     = Cat(
                            addSign_phase2, 
                            ~addSign_phase2 & ~addZero_phase2, 
                            addFrac_phase2, 
                            0.U(sigWidth.W)
                          )
  //val mulGreater    = mulScale_phase2 > addScale_phase2  
  val scale_diff  = mulScale_phase2-addScale_phase2
  val mulGreater        = ~scale_diff.head(1).asBool
  io.greaterScale  := Mux(mulGreater, mulScale_phase2, addScale_phase2).asSInt
  //val smallerScale  = Mux(mulGreater, addScale_phase2, mulScale_phase2).asSInt
  val sDiff         =     Mux(mulGreater,scale_diff,-scale_diff)
  val greaterSig    = Mux(mulGreater, mulSig_phase2, extAddSig)
  val smallerSigTmp = Mux(mulGreater, extAddSig, mulSig_phase2)
  val smallerSig    = smallerSigTmp.shiftRightArithSticky(sDiff.asUInt)
  val rawSumSig     = greaterSig +& smallerSig.asUInt
  io.sumSign       := (mulSig_phase2.head(1) ^ addSign_phase2 ^ rawSumSig.head(1)).asBool

  io.signSumSig    := Cat(io.sumSign, rawSumSig.tail(1))
  }
  
