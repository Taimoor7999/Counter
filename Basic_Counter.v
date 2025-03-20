module Basic_Counter #(parameter N = 3)(clk, rst, q);

input clk, rst;
output reg [N-1 : 0] q;

always @(posedge clk) begin
  if(rst) begin
    q <= 4'b000;
  end

  else if(q == 3'b111) begin
    q <= 3'b000;
  end

  else begin
    q <= q+1;
  end
end

endmodule