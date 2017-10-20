module fsm(clk, rst, x, y, z);

  input x;
  input y;
  input clk;
  input rst;
  output [2:0] z;

  reg [2:0] state;
  reg [2:0] nextstate;

  assign z = count;

  always @(posedge clk or posedge rst)
    if(rst) state <= `S7;
    else state <= nxtstate;


  always @(state or x or y) begin
    case(state)
    `S1: nextstate = S1;
    `S5: if(~y0&x) nextstate = `S9; else if(~y&~x) nextstate = `S6; else nextstate = `S1;
    `S6: nextstate = `S1;
    `S7: if(y&~x) nextstate = `S10; else if(y&x) nextstate = `S9; else nextstate = S7;
    `S9: nextstate = `S9;
    `S10: nextstate = `S5;
    default: nextstate = S7;
    endcase

  always @(state) begin
    case(state)
    `S1: z = 3'b 101;
    `S5: z = 3'b 001;
    `S6: z = 3'b 010;
    `S7: z = 3'b 000;
    `S9: z = 3'b 001;
    `S10: z = 3'b 000;
    default:
    endcase

  endmodule
