module fibo_gen_sync_rst_tb ();
  
  reg clk, reset;
  wire [3:0] out;
    
  fibo_gen_sync_rst DUT (.clk(clk), .reset(reset), .fibo_series(out));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
  
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  
  initial begin
    #10 reset=1'b0;
    #20 reset=1'b1;
    #10 reset=1'b0;
    #300
    $finish;
  end
  
endmodule
