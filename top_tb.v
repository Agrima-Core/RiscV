
module top_tb(
    );
    
    reg clk;
    reg reset;
    reg [4:0] address;
    reg [31:0] instruction_code;
    reg [7:0] instruction_code_2;
    reg [31:0] data_in_top;
    reg wr_en;
     
     top_riscv dut(clk,reset);
     
    initial
        begin
            clk = 0;

         end
         
     always #10 clk = ~ clk;    
   initial
    begin
        reset = 1'b1;
        #100;
        reset = 1'b0;
     end

endmodule