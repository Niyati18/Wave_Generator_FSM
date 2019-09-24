`timescale 1us/ 1us

module fsm_design (input clk, input rst, 
            output p1, p2, p3);
  
  reg p1,p2,p3;
  reg[1:0] pres_state, next_state;
  
  parameter s0 = 2'b00;
  parameter s1 = 2'b01;
  parameter s2 = 2'b10;
  
  always @(posedge clk) begin
    if(rst) begin  //synchronous reset
      pres_state <= s0;
      next_state <= s0;
      p1         <= 0;
      p2         <= 0;
      p3         <= 0;
    end
    else pres_state <= next_state;    
  end
 
  //State machine 
  always @(*) begin
    case(pres_state)
      s0: begin
            p1 = 1;
            #120;
            p1 = 0;
            next_state = s1;
          end
      s1: begin
            p2 = 1;
            #120;
            p2 = 0;
            next_state = s2;       
          end      
      s2: begin
            p3 = 1;
            wait(rst);
            p3 = 0;
            next_state = s1;        
          end                  
    endcase
  end

endmodule
