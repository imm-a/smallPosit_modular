package posit.rtl

import chisel3._
import chisel3.util._
import posit.function._
import posit.function.Shift._
import posit.convert._

//regular
/*class PositMul(nBits: Int, eBits: Int) extends Module {
  val io = IO(new Bundle {
    val sigA = Input(SInt((nBits-eBits-1).W))
    val sigB = Input(SInt((nBits-eBits-1).W))
    val sigP = Output(UInt(((2*(nBits-eBits-1)).W)))                  
  })
  override def desiredName = s"PositMul${nBits}_${eBits}"
    io.sigP :=  (io.sigA * io.sigB).asUInt
    //printf(p"Print during simulation: IO is $io\n")
                     }
*/


//approximate multiplier: bits removed
/*class PositMul(nBits: Int, eBits: Int, mw: Int) extends Module {
  val io = IO(new Bundle {
    val sigA = Input(SInt((nBits-eBits-1).W))
    val sigB = Input(SInt((nBits-eBits-1).W))
    val sigP = Output(UInt(((2*(nBits-eBits-1)).W)))                  
  })
  override def desiredName = s"PositMul${nBits}_${eBits}_${nBits-eBits-1-mw}"
    if(mw<(nBits-eBits-1)){
    //val A = io.sigA((nBits-eBits-1)-1,(nBits-eBits-mw-1)).asSInt
    //val B = io.sigB((nBits-eBits-1)-1,(nBits-eBits-mw-1)).asSInt
    io.sigP :=  Cat(io.sigA((nBits-eBits-1)-1,(nBits-eBits-mw-1)).asSInt * io.sigB((nBits-eBits-1)-1,(nBits-eBits-mw-1)).asSInt,0.U((2*(nBits-eBits-1)-2*(mw)).W)).asUInt
    //io.sigP :=  Cat(A * B,0.U((2*(nBits-eBits-1)-2*(mw)).W)).asUInt
    //printf(p"Print during simulation: IO is $io\n")
    }
        else{
            io.sigP := (io.sigA * io.sigB).asUInt
        }
                     }*/
       

class PositMul(nBits: Int, eBits: Int) extends Module {
  val io = IO(new Bundle {
    val sigA = Input(SInt((nBits-eBits-1).W))
    val sigB = Input(SInt((nBits-eBits-1).W))
    val sigP = Output(UInt(((2*(nBits-eBits-1)).W)))                  
  })
  override def desiredName = s"PositMul${nBits}_${eBits}_xor"
 io.sigP:= Cat(io.sigA^io.sigB,0.U((nBits-eBits-1).W)).asUInt
                     }
