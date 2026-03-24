
module top(
input [15:0] sw,
input btnC,
output [15:0] led
    );
    // calls single bit d latch 
    d_latch d_latch_inst(
    .D(sw[0]),
    .E(btnC),
    .Q(led[0]),
    .NotQ(led[1])
    
    );
    // calls 4 byte memory function
    byte_four_input_memory_ memory_inst(
    
    .in(sw[15:8]),
    .sel(sw[7:6]),
    .enable(btnC),
    .out(led[15:8])
    
    );
    
endmodule
