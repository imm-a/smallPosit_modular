module PositMulEnc7_3(
  input        clock,
  input        reset,
  input  [5:0] io_sigP,
  input  [6:0] io_decAscale,
  input  [6:0] io_decBscale,
  input        io_decAisNar,
  input        io_decBisNar,
  input        io_decAisZero,
  input        io_decBisZero,
  output [6:0] io_M
);
  wire [1:0] head2; // @[PositMulEnc.scala 24:33]
  wire  _T; // @[PositMulEnc.scala 25:31]
  wire  _T_1; // @[PositMulEnc.scala 25:25]
  wire  _T_2; // @[PositMulEnc.scala 25:42]
  wire  addTwo; // @[PositMulEnc.scala 25:35]
  wire  _T_3; // @[PositMulEnc.scala 27:26]
  wire  _T_4; // @[PositMulEnc.scala 27:55]
  wire  addOne; // @[PositMulEnc.scala 27:46]
  wire [1:0] _T_5; // @[Cat.scala 29:58]
  wire [2:0] expBias; // @[PositMulEnc.scala 28:39]
  wire [2:0] _T_6; // @[PositMulEnc.scala 31:84]
  wire [1:0] _T_7; // @[PositMulEnc.scala 32:84]
  wire [2:0] _T_8; // @[PositMulEnc.scala 32:107]
  wire [2:0] frac; // @[PositMulEnc.scala 29:22]
  wire [7:0] _T_9; // @[PositMulEnc.scala 35:32]
  wire [7:0] _GEN_0; // @[PositMulEnc.scala 35:48]
  wire [7:0] _T_11; // @[PositMulEnc.scala 35:48]
  wire [7:0] mulScale; // @[PositMulEnc.scala 35:48]
  wire  underflow; // @[PositMulEnc.scala 36:28]
  wire  overflow; // @[PositMulEnc.scala 37:28]
  wire  decM_sign; // @[PositMulEnc.scala 40:32]
  wire [7:0] _T_14; // @[Mux.scala 87:16]
  wire [7:0] _T_15; // @[Mux.scala 87:16]
  wire  decM_fraction; // @[PositMulEnc.scala 48:29]
  wire  decM_isNaR; // @[PositMulEnc.scala 49:33]
  wire  decM_isZero; // @[PositMulEnc.scala 50:34]
  wire [1:0] grsTmp; // @[PositMulEnc.scala 53:30]
  wire [6:0] _GEN_1; // @[PositMulEnc.scala 39:23 PositMulEnc.scala 41:17]
  wire [6:0] decM_scale; // @[PositMulEnc.scala 39:23 PositMulEnc.scala 41:17]
  wire [2:0] _T_21; // @[convert.scala 46:61]
  wire [2:0] _T_22; // @[convert.scala 46:52]
  wire [2:0] _T_24; // @[convert.scala 46:42]
  wire [3:0] _T_25; // @[convert.scala 48:34]
  wire  _T_26; // @[convert.scala 49:36]
  wire [3:0] _T_28; // @[convert.scala 50:36]
  wire [3:0] _T_29; // @[convert.scala 50:36]
  wire [3:0] _T_30; // @[convert.scala 50:28]
  wire  _T_31; // @[convert.scala 51:31]
  wire  _T_32; // @[convert.scala 52:43]
  wire [8:0] _T_36; // @[Cat.scala 29:58]
  wire [3:0] _T_37; // @[Shift.scala 39:17]
  wire  _T_38; // @[Shift.scala 39:24]
  wire  _T_40; // @[Shift.scala 90:30]
  wire [7:0] _T_41; // @[Shift.scala 90:48]
  wire  _T_42; // @[Shift.scala 90:57]
  wire  _T_43; // @[Shift.scala 90:39]
  wire  _T_44; // @[Shift.scala 12:21]
  wire  _T_45; // @[Shift.scala 12:21]
  wire [7:0] _T_47; // @[Bitwise.scala 71:12]
  wire [8:0] _T_48; // @[Cat.scala 29:58]
  wire [8:0] _T_49; // @[Shift.scala 91:22]
  wire [2:0] _T_50; // @[Shift.scala 92:77]
  wire [4:0] _T_51; // @[Shift.scala 90:30]
  wire [3:0] _T_52; // @[Shift.scala 90:48]
  wire  _T_53; // @[Shift.scala 90:57]
  wire [4:0] _GEN_2; // @[Shift.scala 90:39]
  wire [4:0] _T_54; // @[Shift.scala 90:39]
  wire  _T_55; // @[Shift.scala 12:21]
  wire  _T_56; // @[Shift.scala 12:21]
  wire [3:0] _T_58; // @[Bitwise.scala 71:12]
  wire [8:0] _T_59; // @[Cat.scala 29:58]
  wire [8:0] _T_60; // @[Shift.scala 91:22]
  wire [1:0] _T_61; // @[Shift.scala 92:77]
  wire [6:0] _T_62; // @[Shift.scala 90:30]
  wire [1:0] _T_63; // @[Shift.scala 90:48]
  wire  _T_64; // @[Shift.scala 90:57]
  wire [6:0] _GEN_3; // @[Shift.scala 90:39]
  wire [6:0] _T_65; // @[Shift.scala 90:39]
  wire  _T_66; // @[Shift.scala 12:21]
  wire  _T_67; // @[Shift.scala 12:21]
  wire [1:0] _T_69; // @[Bitwise.scala 71:12]
  wire [8:0] _T_70; // @[Cat.scala 29:58]
  wire [8:0] _T_71; // @[Shift.scala 91:22]
  wire  _T_72; // @[Shift.scala 92:77]
  wire [7:0] _T_73; // @[Shift.scala 90:30]
  wire  _T_74; // @[Shift.scala 90:48]
  wire [7:0] _GEN_4; // @[Shift.scala 90:39]
  wire [7:0] _T_76; // @[Shift.scala 90:39]
  wire  _T_78; // @[Shift.scala 12:21]
  wire [8:0] _T_79; // @[Cat.scala 29:58]
  wire [8:0] _T_80; // @[Shift.scala 91:22]
  wire [8:0] _T_83; // @[Bitwise.scala 71:12]
  wire [8:0] _T_84; // @[Shift.scala 39:10]
  wire  _T_85; // @[convert.scala 55:31]
  wire  _T_86; // @[convert.scala 56:31]
  wire  _T_87; // @[convert.scala 57:31]
  wire  _T_88; // @[convert.scala 58:31]
  wire [5:0] _T_89; // @[convert.scala 59:69]
  wire  _T_90; // @[convert.scala 59:81]
  wire  _T_91; // @[convert.scala 59:50]
  wire  _T_93; // @[convert.scala 60:81]
  wire  _T_94; // @[convert.scala 61:44]
  wire  _T_95; // @[convert.scala 61:52]
  wire  _T_96; // @[convert.scala 61:36]
  wire  _T_97; // @[convert.scala 62:63]
  wire  _T_98; // @[convert.scala 62:103]
  wire  _T_99; // @[convert.scala 62:60]
  wire [5:0] _GEN_5; // @[convert.scala 63:56]
  wire [5:0] _T_102; // @[convert.scala 63:56]
  wire [6:0] _T_103; // @[Cat.scala 29:58]
  wire [6:0] _T_105; // @[Mux.scala 87:16]
  assign head2 = io_sigP[5:4]; // @[PositMulEnc.scala 24:33]
  assign _T = head2[1]; // @[PositMulEnc.scala 25:31]
  assign _T_1 = ~ _T; // @[PositMulEnc.scala 25:25]
  assign _T_2 = head2[0]; // @[PositMulEnc.scala 25:42]
  assign addTwo = _T_1 & _T_2; // @[PositMulEnc.scala 25:35]
  assign _T_3 = io_sigP[5]; // @[PositMulEnc.scala 27:26]
  assign _T_4 = io_sigP[3]; // @[PositMulEnc.scala 27:55]
  assign addOne = _T_3 ^ _T_4; // @[PositMulEnc.scala 27:46]
  assign _T_5 = {addTwo,addOne}; // @[Cat.scala 29:58]
  assign expBias = {1'b0,$signed(_T_5)}; // @[PositMulEnc.scala 28:39]
  assign _T_6 = io_sigP[2:0]; // @[PositMulEnc.scala 31:84]
  assign _T_7 = io_sigP[1:0]; // @[PositMulEnc.scala 32:84]
  assign _T_8 = {_T_7, 1'h0}; // @[PositMulEnc.scala 32:107]
  assign frac = addOne ? _T_6 : _T_8; // @[PositMulEnc.scala 29:22]
  assign _T_9 = $signed(io_decAscale) + $signed(io_decBscale); // @[PositMulEnc.scala 35:32]
  assign _GEN_0 = {{5{expBias[2]}},expBias}; // @[PositMulEnc.scala 35:48]
  assign _T_11 = $signed(_T_9) + $signed(_GEN_0); // @[PositMulEnc.scala 35:48]
  assign mulScale = $signed(_T_11); // @[PositMulEnc.scala 35:48]
  assign underflow = $signed(mulScale) < $signed(-8'sh29); // @[PositMulEnc.scala 36:28]
  assign overflow = $signed(mulScale) > $signed(8'sh28); // @[PositMulEnc.scala 37:28]
  assign decM_sign = io_sigP[5:5]; // @[PositMulEnc.scala 40:32]
  assign _T_14 = underflow ? $signed(-8'sh29) : $signed(mulScale); // @[Mux.scala 87:16]
  assign _T_15 = overflow ? $signed(8'sh28) : $signed(_T_14); // @[Mux.scala 87:16]
  assign decM_fraction = frac[2:2]; // @[PositMulEnc.scala 48:29]
  assign decM_isNaR = io_decAisNar | io_decBisNar; // @[PositMulEnc.scala 49:33]
  assign decM_isZero = io_decAisZero | io_decBisZero; // @[PositMulEnc.scala 50:34]
  assign grsTmp = frac[1:0]; // @[PositMulEnc.scala 53:30]
  assign _GEN_1 = _T_15[6:0]; // @[PositMulEnc.scala 39:23 PositMulEnc.scala 41:17]
  assign decM_scale = $signed(_GEN_1); // @[PositMulEnc.scala 39:23 PositMulEnc.scala 41:17]
  assign _T_21 = decM_scale[2:0]; // @[convert.scala 46:61]
  assign _T_22 = ~ _T_21; // @[convert.scala 46:52]
  assign _T_24 = decM_sign ? _T_22 : _T_21; // @[convert.scala 46:42]
  assign _T_25 = decM_scale[6:3]; // @[convert.scala 48:34]
  assign _T_26 = _T_25[3:3]; // @[convert.scala 49:36]
  assign _T_28 = ~ _T_25; // @[convert.scala 50:36]
  assign _T_29 = $signed(_T_28); // @[convert.scala 50:36]
  assign _T_30 = _T_26 ? $signed(_T_29) : $signed(_T_25); // @[convert.scala 50:28]
  assign _T_31 = _T_26 ^ decM_sign; // @[convert.scala 51:31]
  assign _T_32 = ~ _T_31; // @[convert.scala 52:43]
  assign _T_36 = {_T_32,_T_31,_T_24,decM_fraction,grsTmp,1'h0}; // @[Cat.scala 29:58]
  assign _T_37 = $unsigned(_T_30); // @[Shift.scala 39:17]
  assign _T_38 = _T_37 < 4'h9; // @[Shift.scala 39:24]
  assign _T_40 = _T_36[8:8]; // @[Shift.scala 90:30]
  assign _T_41 = _T_36[7:0]; // @[Shift.scala 90:48]
  assign _T_42 = _T_41 != 8'h0; // @[Shift.scala 90:57]
  assign _T_43 = _T_40 | _T_42; // @[Shift.scala 90:39]
  assign _T_44 = _T_37[3]; // @[Shift.scala 12:21]
  assign _T_45 = _T_36[8]; // @[Shift.scala 12:21]
  assign _T_47 = _T_45 ? 8'hff : 8'h0; // @[Bitwise.scala 71:12]
  assign _T_48 = {_T_47,_T_43}; // @[Cat.scala 29:58]
  assign _T_49 = _T_44 ? _T_48 : _T_36; // @[Shift.scala 91:22]
  assign _T_50 = _T_37[2:0]; // @[Shift.scala 92:77]
  assign _T_51 = _T_49[8:4]; // @[Shift.scala 90:30]
  assign _T_52 = _T_49[3:0]; // @[Shift.scala 90:48]
  assign _T_53 = _T_52 != 4'h0; // @[Shift.scala 90:57]
  assign _GEN_2 = {{4'd0}, _T_53}; // @[Shift.scala 90:39]
  assign _T_54 = _T_51 | _GEN_2; // @[Shift.scala 90:39]
  assign _T_55 = _T_50[2]; // @[Shift.scala 12:21]
  assign _T_56 = _T_49[8]; // @[Shift.scala 12:21]
  assign _T_58 = _T_56 ? 4'hf : 4'h0; // @[Bitwise.scala 71:12]
  assign _T_59 = {_T_58,_T_54}; // @[Cat.scala 29:58]
  assign _T_60 = _T_55 ? _T_59 : _T_49; // @[Shift.scala 91:22]
  assign _T_61 = _T_50[1:0]; // @[Shift.scala 92:77]
  assign _T_62 = _T_60[8:2]; // @[Shift.scala 90:30]
  assign _T_63 = _T_60[1:0]; // @[Shift.scala 90:48]
  assign _T_64 = _T_63 != 2'h0; // @[Shift.scala 90:57]
  assign _GEN_3 = {{6'd0}, _T_64}; // @[Shift.scala 90:39]
  assign _T_65 = _T_62 | _GEN_3; // @[Shift.scala 90:39]
  assign _T_66 = _T_61[1]; // @[Shift.scala 12:21]
  assign _T_67 = _T_60[8]; // @[Shift.scala 12:21]
  assign _T_69 = _T_67 ? 2'h3 : 2'h0; // @[Bitwise.scala 71:12]
  assign _T_70 = {_T_69,_T_65}; // @[Cat.scala 29:58]
  assign _T_71 = _T_66 ? _T_70 : _T_60; // @[Shift.scala 91:22]
  assign _T_72 = _T_61[0:0]; // @[Shift.scala 92:77]
  assign _T_73 = _T_71[8:1]; // @[Shift.scala 90:30]
  assign _T_74 = _T_71[0:0]; // @[Shift.scala 90:48]
  assign _GEN_4 = {{7'd0}, _T_74}; // @[Shift.scala 90:39]
  assign _T_76 = _T_73 | _GEN_4; // @[Shift.scala 90:39]
  assign _T_78 = _T_71[8]; // @[Shift.scala 12:21]
  assign _T_79 = {_T_78,_T_76}; // @[Cat.scala 29:58]
  assign _T_80 = _T_72 ? _T_79 : _T_71; // @[Shift.scala 91:22]
  assign _T_83 = _T_45 ? 9'h1ff : 9'h0; // @[Bitwise.scala 71:12]
  assign _T_84 = _T_38 ? _T_80 : _T_83; // @[Shift.scala 39:10]
  assign _T_85 = _T_84[3]; // @[convert.scala 55:31]
  assign _T_86 = _T_84[2]; // @[convert.scala 56:31]
  assign _T_87 = _T_84[1]; // @[convert.scala 57:31]
  assign _T_88 = _T_84[0]; // @[convert.scala 58:31]
  assign _T_89 = _T_84[8:3]; // @[convert.scala 59:69]
  assign _T_90 = _T_89 != 6'h0; // @[convert.scala 59:81]
  assign _T_91 = ~ _T_90; // @[convert.scala 59:50]
  assign _T_93 = _T_89 == 6'h3f; // @[convert.scala 60:81]
  assign _T_94 = _T_85 | _T_87; // @[convert.scala 61:44]
  assign _T_95 = _T_94 | _T_88; // @[convert.scala 61:52]
  assign _T_96 = _T_86 & _T_95; // @[convert.scala 61:36]
  assign _T_97 = ~ _T_93; // @[convert.scala 62:63]
  assign _T_98 = _T_97 & _T_96; // @[convert.scala 62:103]
  assign _T_99 = _T_91 | _T_98; // @[convert.scala 62:60]
  assign _GEN_5 = {{5'd0}, _T_99}; // @[convert.scala 63:56]
  assign _T_102 = _T_89 + _GEN_5; // @[convert.scala 63:56]
  assign _T_103 = {decM_sign,_T_102}; // @[Cat.scala 29:58]
  assign _T_105 = decM_isZero ? 7'h0 : _T_103; // @[Mux.scala 87:16]
  assign io_M = decM_isNaR ? 7'h40 : _T_105; // @[PositMulEnc.scala 64:8]
endmodule
