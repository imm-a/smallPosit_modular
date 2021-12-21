import chisel3._
import chisel3.util._
import posit.function._
import posit.function.Shift._
import posit.convert._
import posit.rtl._

class PositVVM(nBits: Int, eBits: Int, latency: Int = 2,units: Int) extends Module {
  val io = IO(new Bundle {
    val in1 = Input(Vec(units,UInt(nBits.W)))
    val in2 = Input(Vec(units,UInt(nBits.W)))
    //val in1 = Input(UInt(nBits.W))
    //val in2 = Input(UInt(nBits.W))
    val out = Output(UInt(nBits.W))
    val outValid = Output(Bool())
  })
  
   override def desiredName = s"PositVVM${nBits}_${eBits}"
   printf(p"Print during simulation: IO is $io\n")
    //val fmax = Vec(2,{Module(new PositFMA(nBits, eBits,latency)).io})
   val Fout = Wire(Vec(units,UInt(nBits.W)))
   val iV = Wire(Vec(units, Bool()))
    val outV = Wire(Vec(units,Bool()))
  val fmax1 = Module(new PositFMA(nBits,eBits))
    
   // any wiring or other logic can go here
    fmax1.io.A := io.in1(0)
    fmax1.io.B := io.in2(0)
    fmax1.io.C := 0.U
    fmax1.io.inValid := 1.B
    fmax1.io.fmaOp := 0.U
    iV(0) := fmax1.io.iV2
   Fout(0) := fmax1.io.F
     outV(0) := fmax1.io.outValid
val fmaxs = for (i <- 0 until (units-1)) yield
{
   val fmax = Module(new PositFMA(nBits,eBits))
    
   // any wiring or other logic can go here
    fmax.io.A := io.in1(i+1)
    fmax.io.B := io.in2(i+1)
    fmax.io.C := Fout(i)
    fmax.io.inValid := iV(i)
    fmax.io.fmaOp := 0.U
    iV(i+1) := fmax.io.iV2
    Fout(i+1) := fmax.io.F
    outV(i+1) := fmax.io.outValid
}

    io.out := Fout(units-1)
    io.outValid := outV(units-1)
}


