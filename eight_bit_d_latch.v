// uses single bit d latch function to store 8 bits (one byte)
module eight_bit_d_latch(
    //inputs
    input [7:0] data,
    input clk,
    //outputs
    output [7:0] out,
    output [7:0] notOut
    );
    
    // each instance indexes the data array to call 8 d latches
    d_latch d_latch_A(
    .E(clk),
    .D(data[0]),
    .Q(out[0]),
    .NotQ(notOut[0])
    );
    
    d_latch d_latch_B(
    .E(clk),
    .D(data[1]),
    .Q(out[1]),
    .NotQ(notOut[1])
    );
    
    d_latch d_latch_C(
    .E(clk),
    .D(data[2]),
    .Q(out[2]),
    .NotQ(notOut[2])
    );
    
    d_latch d_latch_D(
    .E(clk),
    .D(data[3]),
    .Q(out[3]),
    .NotQ(notOut[3])
    );
    
    d_latch d_latch_E(
    .E(clk),
    .D(data[4]),
    .Q(out[4]),
    .NotQ(notOut[4])
    );
    
    d_latch d_latch_F(
    .E(clk),
    .D(data[5]),
    .Q(out[5]),
    .NotQ(notOut[5])
    );
    
    d_latch d_latch_G(
    .E(clk),
    .D(data[6]),
    .Q(out[6]),
    .NotQ(notOut[6])
    );
    
    d_latch d_latch_H(
    .E(clk),
    .D(data[7]),
    .Q(out[7]),
    .NotQ(notOut[7])
    );
    
    
endmodule
