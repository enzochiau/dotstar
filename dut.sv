module multiplier (
                   output [31:0] mult,
                   input [15:0] mop1, data
                   );
    // RTL code for the multiplier output register
endmodule // multiplier

module dut (
              input [15:0] data
              );
    wire [31:0]              mult;
    wire [15:0]              mop1;
    
`include "uvm_macros.svh"
    import uvm_pkg::*;

    // Example 1 : the .name implicit port connection
    multiplier multiplier_ex1 (.mult, .mop1, .data);

    // Example 2 : the .name implicit port connection - unconnect one
    multiplier multiplier_ex2 (.mult, .mop1);

    // Example 3 : the .name implicit port connection - intentionally unconnect
    multiplier multiplier_ex3 (.mult, .mop1, .data());
    
    // Example 4 : the .* implicit port connection
    multiplier multiplier_ex4 (.*);
       
    initial begin
        `uvm_info("HELP", "START", UVM_MEDIUM);
        $finish();
    end
endmodule // dut

    
