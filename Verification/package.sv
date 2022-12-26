package ver_package;

 typedef enum logic [1:0]{A, B, C} test_case;
 
 parameter N=12;
 parameter M=8;
 class ver_transaction;
 randc bit [N-1:0] header;
 rand  bit [M-1:0] payload;
 bit [3:0] command;
 bit [1:0] master_id;
 bit parity,ack;
 test_case tcase;
 
 constraint c1 {header[0] == 1'b0;}
 constraint c2 {payload[M-1] == 1'b1;}
 endclass
 
endpackage
 
