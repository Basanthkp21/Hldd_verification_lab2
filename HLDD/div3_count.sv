module div_count(clk,en,q,in3,in6,div3);
input logic clk,en,div3;
output logic [1:0]q;
input logic in3,in6;

initial q = 2'b00;
//initial div3 = 1'b0;


always @(posedge clk)

begin
    if(!en)
        q<=q;
        else
            //if(div3)
            if(q == 2'b10)
                q<= 2'b00;
                else
                 q<= q+1;
end   
endmodule
