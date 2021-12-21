This project needs a Chisel environment. Please ensure your
computer can run Chisel.

Platform requires:
```
-OS: Ubuntu 16.04
-Chisel: 3.2.0
-Scale: 2.12.10
-sbt: 1.3.2
-Verilator: 3.904
```

Based on: https://github.com/starbrilliance/SmallPositHDL.git

Type `make` to run this project. `posit.conf` controls the format of Posit.
The verilog codes are produced under `run/rtl` and wave files are produced
under `run/wave`.

Type `make xyz` to produce codes for the desired files.

***Modular designs***

Note: The decoder is the point up to integer module, and the encoder starts after the integer module. Therefore, they may include modules in addition to the standard Posit decoder/encoder.

Adder:
```
Decoder: sigop_rtl 
Adder: padder_rtl 
Encoder: postadder_rtl 
Decoder with no comparator: sigopap_rtl 
```
FMA:
```
FMA Decoder: fmadec_rtl 
FMA Encoder: fmaenc_rtl 
Mutliply and add: fma_rtl
```
Multiplier:
```
Decoder: muldec_rtl 
Multiplier: muls_rtl 
Encoder: mulenc_rtl 
```
**Comment out codes in rtl_matrix folder before running**

**Approximate multiplier**

 - Reduced precision multiplier can be enabled by uncommenting the required function in PositMul.scala 
 - Set the parameter mw in src/main/scala/make/MakeRTL.scala to the number of bits to be removed.
 - Repeat for XOR multiplier but make sure to set desired parameters in MakeRTL.scala
 - Modify posit.conf as required. The RTL codes are obtained in run/rtl/PositMul

**GEMV code present in src/main/scala/rtl_matrix**

This unit utilizes the existing FMA in a pipeline with a systolic array structure
