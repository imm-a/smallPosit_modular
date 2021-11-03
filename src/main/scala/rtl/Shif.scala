package posit.rtl

import chisel3._
import chisel3.util._
import posit.function._
import posit.function.Shift._
import posit.convert._

class Shif(n: Int, shn: Int) extends Module {
  val io = IO(new Bundle {
    val in = Input(UInt(n.W))
    val shiftamt = Input(UInt(shn.W))
    val shiftout = Output(UInt(n.W))
  })
  
  io.shiftout := io.in.shiftRightArithSticky(io.shiftamt)
  override def desiredName = s"Shifter${n}_${shn}" 
  }
