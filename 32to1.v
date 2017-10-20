module mux32to1(sig, sel, z);

  input [31:0] sig;
  input [4:0] sel;
  output z;

  mux4to1 m1([3:0] sig, [1:0] sel, mux1),
       m2([7:4] sig, [1:0] sel, mux2),
       m3([11:8] sig, [1:0] sel, mux3),
       m4([15:12] sig, [1:0] sel, mux4),
       m5([19:16] sig, [1:0] sel, mux5),
       m6([23:20] sig, [1:0] sel, mux6),
       m7([27:24] sig, [1:0] sel, mux7),
       m8([31:28] sig, [1:0] sel, mux8);

  reg [3:0] r1; r1[0] = mux1; r1[1] = mux2; r1[2] = mux3; r1[3] = mux4;
  reg [3:0] r2; r2[1] = mux5; r2[1] = mux6; r2[2] = mux7; r2[3] = mux8;
  reg[1:0] s; s[0] = sel[0]; s[1] = sel[3];

  mux4to1 m9(r1, sel[2:1], mux9),
          m10(r2, s, mux10);

  reg [3:0] input1; input1[0] = mux9; input1[1] = mux10;

  mux4to1 m11(input1, sel[4], out);

  endmodule
