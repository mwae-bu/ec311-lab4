`timescale 1ns / 1ps

module moore_FSM(out, clk, reset, read, in);
    input clk, reset, read; 
    input [7:0] in;
    output reg out;
    
    reg [7:0] p;
    reg [7:0] present_state, next_state;
    
    parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3;
    initial present_state = S3;

    
//    always @(reset or read or present_state) begin
    // STATE SHOULD CHANGE ON POSEDGE, THIS IS AN EXAMPLE OF ASYNCH. DESIGN
    
//    end
    
    always @(posedge clk) begin
        case(present_state)
            S0: if(reset) begin             next_state = S3;    end
                else if(read)begin          next_state = S1;    end
                else                        next_state = S0;
                
            S1: begin out = in[p];          next_state = S2;    end
            
            S2: begin p = p + 1;            next_state = S0;    end
            
            S3: begin p = 0;                out = 0;            next_state = S0;    end
            
        endcase
    end
    
endmodule