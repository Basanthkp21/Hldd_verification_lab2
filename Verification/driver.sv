
 class driver;
 ver_transaction vdrv;
 mailbox gen2drv;
 
 function new(mailbox gen2drv);
    this.gen2drv = gen2drv;
 endfunction
 
 extern task run();
 extern task dut_operation(ver_transaction vdrv);
 
 endclass
 
 task driver::run();
    begin
        vdrv = new;
        gen2drv.get(vdrv);
        dut_operation(vdrv);
    end
 endtask
 
 task driver::dut_operation(ver_transaction vdrv);
    begin
           $display($time,"[Driver],test_case = %s,header = %h,payload = %h,command = %b,master_id = %b, parity= %b", vdrv.tcase.name, vdrv.header, vdrv.payload, vdrv.command, vdrv.master_id, vdrv.parity);
     end
  endtask
