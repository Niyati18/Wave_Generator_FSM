`timescale 1us/ 1us
module tb();
  reg clk,rst;
  reg p1,p2,p3;
 
  //design module instance 
  fsm_design fsm_combo(.clk(clk),.rst(rst),.p1(p1),.p2(p2),.p3(p3));
 
  //clock generator
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
  end
  
  initial begin
    rst = 1;
    #6 rst = 0;
    #500 rst = 1;
    #10 rst = 0;
    #500 rst = 1;
    #10 rst = 0;
    #500 rst = 1;
    #10 rst = 0;
    #500 $finish;
  end
endmodule
