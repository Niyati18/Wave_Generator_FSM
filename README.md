# Wave_Generator_FSM
Design has 3 output ports P1, P2 and P3. Once the design is out of reset, it generates a signal which is high for 120us on P1. Once P1 is de-asserted, it asserts P2 for 120 us and then P3. But P3 will be de-asserted only when the Reset occurs. And the cycle repeats. The testbench is used to generate clock and reset signal. 
