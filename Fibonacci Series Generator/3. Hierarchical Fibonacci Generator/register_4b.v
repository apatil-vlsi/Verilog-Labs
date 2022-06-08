module register_4b(
  input clk, reset,
  input [3:0] reg_in,
  output [3:0] reg_out,
);
  
  reg [3:0] d;
  
  dff dff1 (.clk(clk), .reset(reset), .d(d[0]), .q(reg_out[0]));
  dff dff2 (.clk(clk), .reset(reset), .d(d[1]), .q(reg_out[1]));
  dff dff3 (.clk(clk), .reset(reset), .d(d[2]), .q(reg_out[2]));
  dff dff4 (.clk(clk), .reset(reset), .d(d[3]), .q(reg_out[3]));
  
  always @ (posedge clk)
    if (clk)
      begin
        d[0] = reg_in[0];
        d[1] = reg_in[1];
        d[2] = reg_in[2];
        d[3] = reg_in[3];
      end
  
endmodule
