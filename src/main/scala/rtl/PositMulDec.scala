package posit.rtl

import chisel3._
import chisel3.util._
import posit.function._
import posit.function.Shift._
import posit.convert._

class PositMulDec(nBits: Int, eBits: Int) extends Module {
  val io = IO(new Bundle {
    val A = Input(UInt(nBits.W))
    val B = Input(UInt(nBits.W))
    val sigA = Output(SInt((nBits-eBits-1).W))
    val sigB = Output(SInt((nBits-eBits-1).W))
    val decAscale = Output((SInt((log2Ceil(nBits - 1) + 1+eBits).W)))
    val decBscale = Output((SInt((log2Ceil(nBits - 1) + 1+eBits).W)))
    val decAisNar = Output(Bool())
    val decBisNar = Output(Bool())
    val decAisZero = Output(Bool())
    val decBisZero = Output(Bool())
  })

//printf(p"Print during simulation: IO is $io\n")
	// parameters
 //1
    //printf("%b\n",io.A)
    //printf("%b\n",io.B)
  val decA = RawFloatFromPosit(io.A, nBits, eBits)
  val decB = RawFloatFromPosit(io.B, nBits, eBits)
override def desiredName = s"PositMulDec${nBits}_${eBits}"
  io.sigA      := Cat(decA.sign, ~decA.sign, decA.fraction).asSInt
  io.sigB      := Cat(decB.sign, ~decB.sign, decB.fraction).asSInt
  io.decAscale := decA.scale
  io.decBscale := decB.scale
  io.decAisNar := decA.isNaR
  io.decBisNar := decB.isNaR
  io.decAisZero := decA.isZero
  io.decBisZero := decB.isZero
                      }
