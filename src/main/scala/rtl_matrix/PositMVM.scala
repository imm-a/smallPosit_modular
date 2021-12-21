/*import chisel3._
import chisel3.util._
import posit.function._
import posit.function.Shift._
import posit.convert._
import posit.rtl._

class PositMVM(nBits: Int, eBits: Int, latency: Int = 2,rows: Int,cols:Int) extends Module {
  val io = IO(new Bundle {
    val in1 = Input(Vec(rows,Vec(cols,UInt(nBits.W))))
    val in2 = Input(Vec(cols,UInt(nBits.W)))
    //val in1 = Input(UInt(nBits.W))
    //val in2 = Input(UInt(nBits.W))
    val out = Output(Vec(rows,UInt(nBits.W)))
    val outValid = Output(Bool())
  })
  override def desiredName = s"PositMVM${nBits}_${eBits}"
   //val Fout = Wire(Vec(rows,UInt(nBits.W)))
   //val iV = Wire(Vec(units, Bool()))
   val outV = Wire(Vec(rows,Bool()))
    
     printf(p"Print during simulation: IO is $io\n")
   /*val fmax = Module(new PositVVM(nBits,eBits,2,cols))
    fmax.io.in1 := io.in1(0)
    fmax.io.in2 := io.in2
    io.out(0) := fmax.io.out
    io.outValid := fmax.io.outValid*/
val fmaxs = for (i <- 0 until (rows)) yield
{
   val fmax = Module(new PositVVM(nBits,eBits,2,cols))
    
   // any wiring or other logic can go here
    fmax.io.in1 := io.in1(i)
    fmax.io.in2 := io.in2
    io.out(i) := fmax.io.out
    outV(i) := fmax.io.outValid 

}
//Fout := io.in2
//io.out := io.in2
io.outValid := outV(rows-1)

}*/
