module rcadder_4b(
  input [3:0] a, b,
  output cout,
  output [3:0] sum
);
  
  wire [2:0] carry;
  
  full_adder fa0 (.a(a[0]), .b(b[0]), .cin(1'b0), .cout(carry[0]), .sum(sum[0]));
  full_adder fa1 (.a(a[1]), .b(b[1]), .cin(carry[0]), .cout(carry[1]), .sum(sum[1]));
  full_adder fa2 (.a(a[2]), .b(b[2]), .cin(carry[1]), .cout(carry[2]), .sum(sum[2]));
  full_adder fa3 (.a(a[3]), .b(b[3]), .cin(carry[2]), .cout(cout), .sum(sum[3]));
  
endmodule
  
