// module takes in 8 bits and outputs those bits to designated outputs depending on the switch

module eight_bit_demux(
    //declare inputs
    input [7:0] In, 
    input [1:0] sel,
    //declare outputs
    output [7:0] out1, 
    output [7:0] out2,
    output [7:0] out3, 
    output [7:0] out4
    );
    
    //switch case for outputs
    assign out1 = ((sel == 2'b00) ? In : 8'b00000000);
    assign out2 = ((sel == 2'b01) ? In : 8'b00000000);
    assign out3 = ((sel == 2'b10) ? In : 8'b00000000);
    assign out4 = ((sel == 2'b11) ? In : 8'b00000000);
    
endmodule
