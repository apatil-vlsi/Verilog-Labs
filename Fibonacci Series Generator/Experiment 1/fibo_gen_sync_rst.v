// Design a 4-bit Fibonacci generator with synchronous reset in Verilog using an adder and two registers.
// You can use simple assign statement to implement the adder.

module fibo_gen_sync_rst(
  input clk, reset,
  output reg [3:0] fibo_series
);
  
  wire [3:0] add_out;
  reg  [3:0] add_in1;
  
  assign {add_out} = add_in1 + fibo_series;
  
  always @ (posedge clk)
    begin
      if (reset)
        begin
          add_in1 <= 4'b0001;
          fibo_series <= 4'b0000;
        end
      else
        begin
           add_in1 <= add_out;
           fibo_series <= add_in1;
        end
      end
endmodule
