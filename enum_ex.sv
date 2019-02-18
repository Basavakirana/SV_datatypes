module enum_ex();

    typedef enum {init,read=3,write,brw,gft}fsm_state;
    fsm_state ps_state,nxt_state,state = state.first;

    initial
        begin
            $display("%S : %d",state.name,state);
//            if(state == state.last())
//                break;
                state = state.next();
                $display("%s : %d",state.name,state);
        end
endmodule
