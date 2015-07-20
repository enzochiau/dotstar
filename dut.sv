module mul (
                   output [31:0] mult,
                   input [15:0] mop1, data
                   );
endmodule // mul

module dut (
              input [15:0] data
              );
    wire [31:0]              mult;
    wire [15:0]              mop1;
    
`include "uvm_macros.svh"
    import uvm_pkg::*;

    // Example 4 : the .* implicit port connection
    mul ex4 (.*);
    
    // Example 3 : the .name implicit port connection
    mul ex3 (.mult, .mop1, .data);

    // Example 2 : the .name implicit port connection - unconnect one
    mul ex2 (.mult, .mop1);

    // Example 1 : the .name implicit port connection - intentionally unconnect
    mul ex1 (.mult, .mop1, .data());
           
    initial begin
        `uvm_info("HELP", "START", UVM_MEDIUM);
        $finish();
    end
endmodule // dut

    
