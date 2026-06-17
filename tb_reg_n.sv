module tb_reg_n;
    parameter WIDTH_TB = 8;
    logic clk_tb=0;
    logic rst_tb;
    logic [WIDTH_TB-1:0] d_tb, q_tb;

    reg_n #(.WIDTH(WIDTH_TB)) dut (
        .clk(clk_tb),
        .rst(rst_tb), 
        .d(d_tb),
        .q(q_tb)
    );
    
    initial begin
        forever   #5 clk_tb = ~clk_tb;
    end
    

    initial begin
        $dumpfile("wave.vcd");
        $dumpvars(0, tb_reg_n);

        //-----
        
        rst=1; d_test = 8'hAA; #10;
        rst=0; #10;

        // Test1

        // Test2

        // Test3

        $finish;
    end
endmodule