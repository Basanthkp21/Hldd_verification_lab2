`include "package.sv"
 import ver_package::*;
`include "environment.sv"

module ver_top();

begin
environment env;
end

initial begin
#200 $finish;
end

endmodule
