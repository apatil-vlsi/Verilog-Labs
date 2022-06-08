module fibo_gen_top(
  input clk, reset,
  output reg fibo_series
);
	
  wire  add_out, cout;
  reg   add_in1;
  
  rcadder_4b fibo_add (.a(add_in1), .b(add_in2), .cout(cout), .sum(add_out));
  register_4b fibo_reg1 (.clk(clk), .reset(reset), .reg_in(add_out), .reg_out(add_in1));
  register_4b fibo_reg2 (.clk(clk), .reset(reset), .reg_in(add_in1), .reg_out(fibo_series));
  
endmodule
