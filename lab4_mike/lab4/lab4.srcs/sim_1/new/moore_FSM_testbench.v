`timescale 1ns / 1ps

module moore_FSM_testbench(

    );
    
    // Init for moore_FSM
    reg clk, reset, read;
    reg [7:0] in;
    wire out;
    moore_FSM uut(.out(out), .clk(clk), .reset(reset), .read(read), .in(in));
    
    reg [7:0] p, present_state, next_state;
    integer ii, jj, kk;     // MAT NOT USE ALL INTEGERS -> DELETE LATER
    
    initial begin
        p = 0; present_state = 0; next_state = 0;
        
        
    
        $finish;
    end
    
endmodule
