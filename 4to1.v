module mux4to1(sig, sel, z);

  input [3:0] sig;
  input [1:0] sel;
  output z;

  reg z;

  parameter s0 = 2'b 00;
  parameter s1 = 2'b 01;
  parameter s2 = 2'b 11;
  parameter s3 = 2'b 10;

  always(sig or sel) begin
    case(sig)
      `S0: out = sig[0];
      `S1: out = sig[1];
      `S2: out = sig[2];
      `S3: out = sig[3];
      default: out = sig[0];
  end

  always @(state)
    case(state)
    `d0: if(a&~s1&~s2) z = a;
    `d1: if(b&s1&~s2) z = b;
    `d2: if(c&~s1&s2) z = c;
    `d3: if(d&s1&s2) z = d;
    default: state = 0;
    endcase

endmodule
