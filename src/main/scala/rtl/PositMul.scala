package posit.rtl

import chisel3._
import chisel3.util._
import posit.function._
import posit.function.Shift._
import posit.convert._


class PositMul(nBits: Int, eBits: Int) extends Module {
  val io = IO(new Bundle {
    val sigA = Input(SInt((nBits-eBits-1).W))
    val sigB = Input(SInt((nBits-eBits-1).W))
    val sigP = Output(UInt(((2*(nBits-eBits-1)).W)))                  
  })
  override def desiredName = s"PositMul${nBits}_${eBits}"
    io.sigP :=  (io.sigA * io.sigB).asUInt
    //printf(p"Print during simulation: IO is $io\n")
                     }

