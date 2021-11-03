package posit.rtl

import chisel3._
import chisel3.util._
import posit.function._
import posit.function.Shift._
import posit.convert._

class ILZD(nBits: Int, eBits: Int) extends Module {
  val io = IO(new Bundle {
    val in = Input(UInt(nBits.W))
    val out = Output(UInt(log2Ceil(nBits+1).W))
  })
  override def desiredName = s"ILZD${nBits}" 
  io.out := LZD.lzd_dual(io.in)
  }

