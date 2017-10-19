module fsm(x, y, clk, rst, z);

  `define S1    1
  `define S5    2
  `define S6    3
  `define S7    0
  `define S9    4
  `define S10   5
  `define ERROR 7

  input x;
  input y;
  input clk;
  input rst;
  output z;

  reg [2:0] state;
  reg [2:0] nextstate;

  always @(posedge clk or posedge rst)
    if(rst) state <= `S7;
    else state <= nxtstate;


  always @(state) begin
    nextstate = state;
    case(state)
    `S1: nextstate = S1;
    `S5: if(y) nextstate = `S1; else if(~y0&x) nextstate = `S9; else if(~y&~x) nextstate = `S6;
    `S6: nextstate = `S1;
    `S7: if(~y) nextstate = S7; else if(y&~x) nextstate = `S10; else if(y&x) nextstate = `S9;
    `S9: nextstate = `S9;
    `S10: nextstate = `S5;
    default: nextstate = ERROR;
    endcase

  always @(state) begin
    case(state)
    `S1: z = 5;
    `S5: z = 1;
    `S6: z = 2;
    `S7: z = 0;
    `S9: z = 1;
    `S10: z = 0;
    default:
    endcase

  endmodule
