module string_ex();

    string str;

    initial
        begin
            str = "PRAVEGA_SEMI";
            str = str.tolower();
            $display("string is :%s",str);
            $display("character at position 5 is %s",str.getc(5));
            str.putc(7,"-");
            $display("%s", str.substr(8,str.len-1));
            str = {str, ".com"};
            str = {{3{"w"}},".",str};
         //   disp($formatf("https://%s",str));
            str = {"https://",str};
            $display("%s",str);
        end

        task disp(string s);
            $display("%s",s);
        endtask
endmodule
