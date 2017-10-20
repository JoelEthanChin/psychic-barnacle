module 4to1(a, b, c, d, s1, s2, z);

  `define `d0 4'b1000
  `define `d1 4'b0100
  `define `d2 4'b0010
  `define `d3 4'b0001

  input a;
  input b;
  input c;
  input d;
  input s1;
  input s2;
  output z;

  reg [3:0] state;

  always(a or b or c or d) begin
    if(a&~b&~c&~d) state = `d0;
    else if(~a&b&~c&~d) state = `d1;
    else if(~a&~b&c&~d) state = `d2;
    else if(~a&~b&~c&d) state = `d3;
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
