module type_conversion();

    typedef enum {init,read,write,brw,gft}fsm_state;
    fsm_state state;
    int c;

    initial
        begin
            state = read;
            c = state;
            state = 1;   //error
            state = fsm_state'(5);     //static casting
            
            $cast(state,5);        //dynamic casting as task
            $cast(state,3);

            if($cast(state,5))
                $display("casting is successful");
                else
                    $display("casting is failed");

            if($cast(state,2))
                $display("%s \n %d \n casting is successful", state.name,state);
                else
                    $display("casting is failed");

          end
endmodule
