module 4to1(a, b, c, d, s1, s2, z);

  `define

  input a;
  input b;
  input c;
  input d;
  input s1;
  input s2;
  output z;

  reg [3:0] state;

  always @(a or b or c or d)

    
