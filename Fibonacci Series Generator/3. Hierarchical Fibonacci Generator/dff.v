module dff 
  #(parameter rst_value = 0)
  (
    input clk, reset,
    input d,
    output reg q
  );
 
  always @ (posedge clk)
    begin
      if (reset)
        q<=rst_value;
      else
        q<=d;
    end
endmodule
