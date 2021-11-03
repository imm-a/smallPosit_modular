MAKE_RTL ?= add_rtl mul_rtl fmaa_rtl ema_rtl div_rtl q2p_rtl sigop_rtl padder_rtl postadder_rtl sigopap_rtl fmadec_rtl fmaenc_rtl sh_rtl lzd_rtl muldec_rtl muls_rtl mulenc_rtl fma_rtl

MAKE_WAVE ?= add_wave mul_wave fma_wave \
			 ema_wave div_wave q2p_wave

all: rtl wave


rtl: $(MAKE_RTL)


wave: $(MAKE_WAVE)

fmaa_rtl:
	@rm -rf ./run/rtl/FMA
	@sbt 'runMain posit.make.MakeFMA'
	@find ./run/rtl/FMA/* | grep -v "\.v" | xargs rm -f
fmadec_rtl:
	@rm -rf ./run/rtl/FMA_Dec
	@sbt 'runMain posit.make.MakeFMADec'
	@find ./run/rtl/FMA_Dec/* | grep -v "\.v" | xargs rm -f
	
fmaenc_rtl:
	@rm -rf ./run/rtl/FMAEnc
	@sbt 'runMain posit.make.MakeFMAEnc'
	@find ./run/rtl/FMAEnc/* | grep -v "\.v" | xargs rm -f

muldec_rtl:
	@rm -rf ./run/rtl/PositAdder
	@sbt 'runMain posit.make.MakePositMulDec'
	@find ./run/rtl/PositMulDec/* | grep -v "\.v" | xargs rm -f
muls_rtl:
	@rm -rf ./run/rtl/PositAdder
	@sbt 'runMain posit.make.MakePositMul'
	@find ./run/rtl/PositMul/* | grep -v "\.v" | xargs rm -f
mulenc_rtl:
	@rm -rf ./run/rtl/PositAdder
	@sbt 'runMain posit.make.MakePositMulEnc'
	@find ./run/rtl/PositMulEnc/* | grep -v "\.v" | xargs rm -f
add_rtl:
	@rm -rf ./run/rtl/PositAdder
	@sbt 'runMain posit.make.MakePositAdder'
	@find ./run/rtl/PositAdder/* | grep -v "\.v" | xargs rm -f
lzd_rtl:
	@rm -rf ./run/rtl/ILZD
	@sbt 'runMain posit.make.MakeILZD'
	@find ./run/rtl/ILZD/* | grep -v "\.v" | xargs rm -f
sh_rtl:
	@rm -rf ./run/rtl/Shifter
	@sbt 'runMain posit.make.MakeShifter'
	@find ./run/rtl/Shifter/* | grep -v "\.v" | xargs rm -f
	
sigop_rtl:
	@rm -rf ./run/rtl/Sig_op
	@sbt 'runMain posit.make.MakeSigOp'
	@find ./run/rtl/Sig_op/* | grep -v "\.v" | xargs rm -f
sigopap_rtl:
	@rm -rf ./run/rtl/Sig_op_approx
	@sbt 'runMain posit.make.MakeSigOpAp'
	@find ./run/rtl/Sig_op_approx/* | grep -v "\.v" | xargs rm -f
padder_rtl:
	@rm -rf ./run/rtl/PAdder
	@sbt 'runMain posit.make.MakePAdder'
	@find ./run/rtl/PAdder/* | grep -v "\.v" | xargs rm -f
postadder_rtl:
	@rm -rf ./run/rtl/Post_Adder
	@sbt 'runMain posit.make.MakePostAdder'
	@find ./run/rtl/Post_Adder/* | grep -v "\.v" | xargs rm -f
mul_rtl:
	@rm -rf ./run/rtl/PositMultiplier
	@sbt 'runMain posit.make.MakePositMultiplier'
	@find ./run/rtl/PositMultiplier/* | grep -v "\.v" | xargs rm -f

fma_rtl:
	@rm -rf ./run/rtl/PositFMA
	@sbt 'runMain posit.make.MakePositFMA'
	@find ./run/rtl/PositFMA/* | grep -v "\.v" | xargs rm -f

ema_rtl:
	@rm -rf ./run/rtl/PositEMA
	@sbt 'runMain posit.make.MakePositEMA'
	@find ./run/rtl/PositEMA/* | grep -v "\.v" | xargs rm -f

div_rtl:
	@rm -rf ./run/rtl/PositDivisionSqrt
	@sbt 'runMain posit.make.MakePositDivisionSqrt'
	@find ./run/rtl/PositDivisionSqrt/* | grep -v "\.v" | xargs rm -f

q2p_rtl:
	@rm -rf ./run/rtl/QuireToPosit
	@sbt 'runMain posit.make.MakeQuireToPosit'
	@find ./run/rtl/QuireToPosit/* | grep -v "\.v" | xargs rm -f

add_wave:
	@rm -rf ./run/wave/PositAdder
	@sbt 'testOnly posit.wave.PositAdderSpec'
	@find ./run/wave/PositAdder/p*/* | grep "\.vcd" | xargs -i mv {} ./run/wave/PositAdder
	@rm -rf ./run/wave/PositAdder/p*

mul_wave:
	@rm -rf ./run/wave/PositMultiplier
	@sbt 'testOnly posit.wave.PositMulSpec'
	@find ./run/wave/PositMultiplier/p*/* | grep "\.vcd" | xargs -i mv {} ./run/wave/PositMultiplier
	@rm -rf ./run/wave/PositMultiplier/p*

fma_wave:
	@rm -rf ./run/wave/PositFMA
	@sbt 'testOnly posit.wave.PositFMASpec'
	@find ./run/wave/PositFMA/p*/* | grep "\.vcd" | xargs -i mv {} ./run/wave/PositFMA
	@rm -rf ./run/wave/PositFMA/p*

ema_wave:
	@rm -rf ./run/wave/PositEMA
	@sbt 'testOnly posit.wave.PositEMASpec'
	@find ./run/wave/PositEMA/P*/* | grep "\.vcd" | xargs -i mv {} ./run/wave/PositEMA
	@find ./run/wave/PositEMA/* | grep -v "\.vcd" | xargs rm -rf

div_wave:
	@rm -rf ./run/wave/PositDivisionSqrt
	@sbt 'testOnly posit.wave.PositDivSqrtSpec'
	@find ./run/wave/PositDivisionSqrt/p*/* | grep "\.vcd" | xargs -i mv {} ./run/wave/PositDivisionSqrt
	@rm -rf ./run/wave/PositDivisionSqrt/p*

q2p_wave:
	@rm -rf ./run/wave/QuireToPosit
	@sbt 'testOnly posit.wave.QuireToPositSpec'
	@find ./run/wave/QuireToPosit/Q*/* | grep "\.vcd" | xargs -i mv {} ./run/wave/QuireToPosit
	@find ./run/wave/QuireToPosit/* | grep -v "\.vcd" | xargs rm -rf


clean:
	@rm -rf ./run

.PHONY: all clean rtl $(MAKE_RTL) $(MAKE_WAVE)
