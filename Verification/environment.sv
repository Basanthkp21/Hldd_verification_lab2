`include "generator.sv"
`include "driver.sv"

 program environment;
 
 mailbox m1= new;
 generator gen = new(m1);
 driver drv  = new(m1);
 
 initial begin
 
 if($test$plusargs("A"))
    gen.run("A");
 if($test$plusargs("B"))
    gen.run("B");
 if($test$plusargs("C"))
    gen.run("C");
    
 end

initial begin
drv.run();
end

//initial begin
//#200 $finish;
//end

endprogram
 
