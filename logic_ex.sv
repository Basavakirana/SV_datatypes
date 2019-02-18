module logic_ex;

    logic data;
    logic en;

    initial
        begin
            $display("data = %d, en=%d",$time,data,en);
#10;
            data = 1'b1;
            $display("data=%d, en=%d",$time,data,en);
            data = 1'b0;
            $monitor("data =%d, en =%d",data,en);
        end

        assign en = 1'b0;

endmodule
