module basic_gates;
    // Test basic logic gates
    reg a, b;
    wire and_out, or_out, not_out, xor_out;
    
    // Logic gate implementations
    assign and_out = a & b;
    assign or_out = a | b;
    assign not_out = ~a;
    assign xor_out = a ^ b;
    
    initial begin
        $display("Testing Basic Logic Gates");
        $display("Time\ta\tb\tAND\tOR\tNOT\tXOR");
        
        // Test all combinations
        a = 0; b = 0;
        #10 $display("%0t\t%b\t%b\t%b\t%b\t%b\t%b", $time, a, b, and_out, or_out, not_out, xor_out);
        
        a = 0; b = 1;
        #10 $display("%0t\t%b\t%b\t%b\t%b\t%b\t%b", $time, a, b, and_out, or_out, not_out, xor_out);
        
        a = 1; b = 0;
        #10 $display("%0t\t%b\t%b\t%b\t%b\t%b\t%b", $time, a, b, and_out, or_out, not_out, xor_out);
        
        a = 1; b = 1;
        #10 $display("%0t\t%b\t%b\t%b\t%b\t%b\t%b", $time, a, b, and_out, or_out, not_out, xor_out);
        
		$finish;
        end
endmodule
