# Counter
Implemented a basic Counter in VS Code using Icarus Verilog and has verified its functionality
The Counter resets at 3'b111 else it increments its value and counts the number of digit 
The counter can be utilized to detect a particular input by altering this line
  else if(q == 3'b111) begin
For example to detect 011, you can write: else if(q == 3'b011) begin


