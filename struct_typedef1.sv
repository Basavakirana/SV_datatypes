module struct1_ex();

    typedef struct packed{
        int ph_no;
        bit[3:0]reg_no;
    }id;

    initial
        begin
            id id1,id2;

            id1 = '{5678987654,1001};
            id2.ph_no = 1234567890;
            id2.reg_no = 0111;

            $display("%p \n %p",id1,id2);
        end

endmodule
