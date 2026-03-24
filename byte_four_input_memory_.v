// this module stores 4 bytes and uses a selector to switch between each byte
module byte_four_input_memory_(
    input  [7:0] in,
    input  [1:0] sel,
    input  enable,
    output [7:0] out
    );
    
    //declare wires and regs for transfering data between byte d-latches
    wire [7:0] dataA;
    wire [7:0] storeA;
    wire dataAEn;
    wire [7:0] dataB;
    wire [7:0] storeB;
    wire dataBEn;
    wire [7:0] dataC;
    wire [7:0] storeC;
    wire dataCEn;
    wire [7:0] dataD;
    wire [7:0] storeD;
    wire dataDEn;
    
    
    // 8-b demux to store the inputted values 
    eight_bit_demux input_demux(
    
    .In(in[7:0]),
    .sel(sel[1:0]),
    .out1(dataA[7:0]),
    .out2(dataB[7:0]),
    .out3(dataC[7:0]),
    .out4(dataD[7:0])
    
    );
    
    // enable demux to enable saving data to a byte
    demux enable_demux(
    
    .In(enable),
    .sel(sel[1:0]),
    .out1(dataAEn),
    .out2(dataBEn),
    .out3(dataCEn),
    .out4(dataDEn)
    
    );
    
    // next four instances call the 8-b d-latch to save/display mux data
    eight_bit_d_latch memoryA(
    
    .data(dataA[7:0]),
    .clk(dataAEn),
    .out(storeA[7:0])
    
    );
    
    eight_bit_d_latch memoryB(
    
    .data(dataB[7:0]),
    .clk(dataBEn),
    .out(storeB[7:0])
    
    );
    
    eight_bit_d_latch memoryC(
    
    .data(dataC[7:0]),
    .clk(dataCEn),
    .out(storeC[7:0])
    
    );
    
    eight_bit_d_latch memoryD(
    
    .data(dataD[7:0]),
    .clk(dataDEn),
    .out(storeD[7:0])
    
    );
    
    // mux to select which byte to display
    mux output_mux(
    
    .sel(sel[1:0]),
    .in1(storeA[7:0]),
    .in2(storeB[7:0]),
    .in3(storeC[7:0]),
    .in4(storeD[7:0]),
    .Y(out[7:0])
    
    );
endmodule
