
class generator;

 ver_transaction vgen;
 mailbox mbox2gen;

 function new(mailbox mbox2gen);
    this.mbox2gen = mbox2gen;
 endfunction
 
 extern task run(string stringname);
 
endclass

 task generator::run(string stringname);
    begin
            if(stringname == "A")
              begin
                vgen = new;
                vgen.tcase = A;   
                vgen.randomize();
                vgen.command = 4'b0000;
                vgen.master_id = 2'b00;
                vgen.parity = 1'b1;
                mbox2gen.put(vgen);
                $display($time, "[Genearator] testcase = %s,header = %h, payload = %h, command = %b, master_id = %b, parity = %b\n", vgen.tcase.name,vgen.header, vgen.payload, vgen.command, vgen.master_id, vgen.parity);
              end
            if(stringname == "B")
              begin
                vgen = new;   
                vgen.tcase = B;
                vgen.randomize();
                vgen.header = 12'h100;
                vgen.command = 4'b0010;
                vgen.master_id = 2'b01;
                vgen.parity = 1'b0;
                mbox2gen.put(vgen);
               $display($time, "[Genearator] testcase = %s,header = %h, payload = %h, command = %b, master_id = %b, parity = %b\n", vgen.tcase.name,vgen.header, vgen.payload, vgen.command, vgen.master_id, vgen.parity);
              end
            if(stringname == "C")
              begin
                vgen = new;
                vgen.tcase = C;   
                vgen.header = 12'h200;
                vgen.payload = 8'hAA;
                vgen.command = 4'b0100;
                vgen.master_id = 2'b10;
                vgen.parity = 1'b1;
                mbox2gen.put(vgen);
                $display($time, "[Genearator] testcase = %s,header = %h, payload = %h, command = %b, master_id = %b, parity = %b\n", vgen.tcase.name,vgen.header, vgen.payload, vgen.command, vgen.master_id, vgen.parity);
              end
    end
endtask    
        
