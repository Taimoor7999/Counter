module Basic_Counter_tb();

parameter N = 3;

reg clk, rst;
wire [N-1 : 0] q;

Basic_Counter #(.N(N)) dut (
    .clk(clk), 
    .rst(rst),
    .q(q)
);

initial begin
    $dumpfile("Basic_Counter_tb_Simulation.vcd");
    $dumpvars(0);
end

initial begin
  rst = 1'b1;
  clk = 1'b1;
  #50 rst = 1'b0;
  #1000 $finish();
end

always #10 clk = ~clk;

endmodule