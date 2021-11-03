package posit.make

import posit.rtl._
import scala.io.Source
import scala.collection.mutable.ListBuffer
import chisel3._

object ReadConfig {
	def readPosit(fileName: String) = {
		val nBits, eBits = new ListBuffer[Int]()

		for(line <- Source.fromFile(fileName).getLines()) {
			val posits = line.strip.toLowerCase.split(" ")
			for(p <- posits) {
				if(p.startsWith("posit")) {
					val num = p.substring(5).split("_")
					nBits += num(0).toInt
					eBits += num(1).toInt
				}
			}
		}

		(nBits.toList, eBits.toList)
	}

	def readQuire(fileName: String) = {
		val cBits, nBits, eBits = new ListBuffer[Int]()

		for(line <- Source.fromFile(fileName).getLines()) {
			val posits = line.strip.toLowerCase.strip.split(" ")
			for(p <- posits) {
				if(p.startsWith("quire")) {
					val num = p.substring(5).split("_")
					cBits += num(0).toInt
					nBits += num(1).toInt
					eBits += num(2).toInt
				}
			}
		}

		(cBits.toList, nBits.toList, eBits.toList)
	}
}

object MakePositAdder extends App {
	val (nBits, eBits) = ReadConfig.readPosit("posit.conf")
	val td = Array("-td", "./run/rtl/PositAdder")
	for(i <- 0 until nBits.length) {
		chisel3.Driver.execute(td, () => new PositAdder(nBits(i), eBits(i)))
	}
}
object MakeFMADec extends App {
	val (nBits, eBits) = ReadConfig.readPosit("posit.conf")
	val td = Array("-td", "./run/rtl/FMA_Dec")
	for(i <- 0 until nBits.length) {
		chisel3.Driver.execute(td, () => new FMA_Dec(nBits(i), eBits(i)))
	}
}
object MakeFMA extends App {
	val (nBits, eBits) = ReadConfig.readPosit("posit.conf")
	val td = Array("-td", "./run/rtl/FMA")
	for(i <- 0 until nBits.length) {
		chisel3.Driver.execute(td, () => new FMA(nBits(i), eBits(i)))
	}
}
object MakeFMAEnc extends App {
	val (nBits, eBits) = ReadConfig.readPosit("posit.conf")
	val td = Array("-td", "./run/rtl/FMAEnc")
	for(i <- 0 until nBits.length) {
		chisel3.Driver.execute(td, () => new FMAEnc(nBits(i), eBits(i)))
	}
}

object MakePositMulDec extends App {
	val (nBits, eBits) = ReadConfig.readPosit("posit.conf")
	val td = Array("-td", "./run/rtl/PositMulDec")
	for(i <- 0 until nBits.length) {
		chisel3.Driver.execute(td, () => new PositMulDec(nBits(i), eBits(i)))
	}
}
object MakePositMul extends App {
	val (nBits, eBits) = ReadConfig.readPosit("posit.conf")
	val td = Array("-td", "./run/rtl/PositMul")
	for(i <- 0 until nBits.length) {
		chisel3.Driver.execute(td, () => new PositMul(nBits(i), eBits(i)))
	}
}
object MakePositMulEnc extends App {
	val (nBits, eBits) = ReadConfig.readPosit("posit.conf")
	val td = Array("-td", "./run/rtl/PositMulEnc")
	for(i <- 0 until nBits.length) {
		chisel3.Driver.execute(td, () => new PositMulEnc(nBits(i), eBits(i)))
	}
}
object MakeILZD extends App {
	val (nBits, eBits) = ReadConfig.readPosit("ilzd.conf")
	val td = Array("-td", "./run/rtl/ILZD")
	for(i <- 0 until nBits.length) {
		chisel3.Driver.execute(td, () => new ILZD(nBits(i), eBits(i)))
	}
}
object MakeShifter extends App {
	val (nBits, eBits) = ReadConfig.readPosit("shif.conf")
	val td = Array("-td", "./run/rtl/Shifter")
	for(i <- 0 until nBits.length) {
		chisel3.Driver.execute(td, () => new Shif(nBits(i), eBits(i)))
	}
}
object MakeSigOp extends App {
	val (nBits, eBits) = ReadConfig.readPosit("posit.conf")
	val td = Array("-td", "./run/rtl/Sig_op")
	for(i <- 0 until nBits.length) {
		chisel3.Driver.execute(td, () => new Sig_op(nBits(i), eBits(i)))
	}
}
object MakeSigOpAp extends App {
	val (nBits, eBits) = ReadConfig.readPosit("posit.conf")
	val td = Array("-td", "./run/rtl/Sig_op_approx")
	for(i <- 0 until nBits.length) {
		chisel3.Driver.execute(td, () => new Sig_op_approx(nBits(i), eBits(i)))
	}
}
object MakePAdder extends App {
	val (nBits, eBits) = ReadConfig.readPosit("posit.conf")
	val td = Array("-td", "./run/rtl/PAdder")
	for(i <- 0 until nBits.length) {
		chisel3.Driver.execute(td, () => new PAdder(nBits(i), eBits(i)))
	}
}
object MakePostAdder extends App {
	val (nBits, eBits) = ReadConfig.readPosit("posit.conf")
	val td = Array("-td", "./run/rtl/Post_Adder")
	for(i <- 0 until nBits.length) {
		chisel3.Driver.execute(td, () => new Post_Adder(nBits(i), eBits(i)))
	}
}
object MakePositMultiplier extends App {
	val (nBits, eBits) = ReadConfig.readPosit("posit.conf")
	val td = Array("-td", "./run/rtl/PositMultiplier")
	for(i <- 0 until nBits.length) {
		chisel3.Driver.execute(td, () => new PositMultiplier(nBits(i), eBits(i)))
	}
}

object MakePositFMA extends App {
	val (nBits, eBits) = ReadConfig.readPosit("posit.conf")
	val td = Array("-td", "./run/rtl/PositFMA")
	for(i <- 0 until nBits.length) {
		chisel3.Driver.execute(td, () => new PositFMA(nBits(i), eBits(i)))
	}
}

object MakePositEMA extends App {
	val (cBits, nBits, eBits) = ReadConfig.readQuire("posit.conf")
	val td = Array("-td", "./run/rtl/PositEMA")
	for(i <- 0 until cBits.length) {
		chisel3.Driver.execute(td, () => new PositEMA(cBits(i), nBits(i), eBits(i)))
	}
}

object MakePositDivisionSqrt extends App {
	val (nBits, eBits) = ReadConfig.readPosit("posit.conf")
	val td = Array("-td", "./run/rtl/PositDivisionSqrt")
	for(i <- 0 until nBits.length) {
		chisel3.Driver.execute(td, () => new PositDivisionSqrt(nBits(i), eBits(i)))
	}
}

object MakeQuireToPosit extends App {
	val (cBits, nBits, eBits) = ReadConfig.readQuire("posit.conf")
	val td = Array("-td", "./run/rtl/QuireToPosit")
	for(i <- 0 until cBits.length) {
		chisel3.Driver.execute(td, () => new QuireToPosit(cBits(i), nBits(i), eBits(i)))
	}
}
