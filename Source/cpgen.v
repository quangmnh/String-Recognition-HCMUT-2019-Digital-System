module cpgen( clockin, clockout);
        parameter pause_time = 250;        //1/4 of input clock period

        input clockin;
        output clockout;
        
        wire #pause_time delayed_clock = clockin;

        assign clock_out = clockin ^ delayed_clock;

endmodule