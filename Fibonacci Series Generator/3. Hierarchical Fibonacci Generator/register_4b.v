module register_4b
  #(parameter [3:0] rst_value = 4'b0000)
  (
  input clk, reset,
  input [3:0] reg_in,
    output [3:0] reg_out
  );
  
  reg [3:0] d;
  
  dff #(.rst_value(rst_value[0])) dff1 (.clk(clk), .reset(reset), .d(d[0]), .q(reg_out[0]));
  dff #(.rst_value(rst_value[1])) dff2 (.clk(clk), .reset(reset), .d(d[1]), .q(reg_out[1]));
  dff #(.rst_value(rst_value[2])) dff3 (.clk(clk), .reset(reset), .d(d[2]), .q(reg_out[2]));
  dff #(.rst_value(rst_value[3])) dff4 (.clk(clk), .reset(reset), .d(d[3]), .q(reg_out[3]));
  
  always @ (posedge clk)
    if (clk)
      begin
        d[0] = reg_in[0];
        d[1] = reg_in[1];
        d[2] = reg_in[2];
        d[3] = reg_in[3];
      end
  
endmodule
