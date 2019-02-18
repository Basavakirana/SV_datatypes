module struct2_ex;

    typedef struct{
        string name;
        bit[3:0] reg_no;
    }id;

    initial
         begin
            id id1,id2;

            id1.name = "appu";
            id1.reg_no = 4'b0001;
            $display("ID1: %p",id1);

            id2 = '{"alex",4'b0101};
            $display("ID2: %p",id2);
         end
endmodule
