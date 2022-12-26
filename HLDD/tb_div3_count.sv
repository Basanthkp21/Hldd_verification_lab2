module tb_div_count();
logic clk,en;
logic [1:0]q;
logic in3,in6,rst;
logic div;

initial clk = 0;
initial in3 = 0;
initial in6 = 0;
always #5 clk = ~clk;
always #3 in3 = ~in3;
always #6 in6 = ~in6;

div_count dut(.*);

initial begin
en = 1'b0;
#25 en = 1'b1;
#5 en = 1'b0;
#25 en = 1'b1;
#5 en = 1'b0;
#25 en = 1'b1;
#5 en = 1'b0;
#25 en = 1'b1;
#5 en = 1'b0;
#25 en = 1'b1;


#100 $finish;
end

endmodule
