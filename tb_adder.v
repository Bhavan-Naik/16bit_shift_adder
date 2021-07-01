module tb_N_bit_adder;
 reg [15:0] input1;
 reg [15:0] input2;
 wire [15:0] answer;
initial begin $dumpfile("tb_adder.vcd"); 
 $dumpvars(0,tb_N_bit_adder); 
 end
 N_bit_adder uut (
  .input1(input1), 
  .input2(input2), 
  .answer(answer)
 );

 initial begin
  input1 = 1209;
  input2 = 1000;
  #100;
 end
      initial begin
      $monitor("Input1=%d, Input2=%d, Output=%d",input1,input2,answer);
    end
endmodule