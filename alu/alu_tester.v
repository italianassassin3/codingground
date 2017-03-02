module alu_tester;
reg[31:0] ain, bin;
//reg[1:0] inCarry;
reg[3:0] inCarry;
wire [31:0] out;
wire z_flag, v_flag, n_flag;
initial
begin
 //$write("\n");
//$monitor(" a=%b b=%b out=%b", ain,bin,out); 
$monitor(" out=%b", out);
    //Fundamental tests 
     //Arithmetic  operations
    #000 ain = 4'b1011; 
        bin = 4'b0001; 
        inCarry = 4'b0000;
        
         #100 ain = 4'b0011; 
        bin = 4'b0010; 
        inCarry = 4'b0001;
        
         #100 ain = 4'b1111; 
        bin = 4'b1001; 
        inCarry = 4'b0010;
        
         #100 ain = 4'b1010; 
        bin = 4'b0111; 
        inCarry = 4'b0011;
        
         #100 ain = 4'b0001; 
        bin = 4'b0101; 
        inCarry = 4'b0100;
        
         #100 ain = 4'b0000; 
        bin = 4'b0110; 
        inCarry = 4'b0101;
   
   
    //Bit-wise Logic operations 
     #100 ain = 4'b0010; 
        bin = 4'b0100; 
        inCarry = 4'b0110;
        
         #100 ain = 4'b0111; 
        bin = 4'b1111; 
        inCarry = 4'b0111;
        
        #100 ain = 4'b1000; 
        bin = 4'b0001; 
        inCarry = 4'b1000;
        
        #100 ain = 4'b1110; 
        bin = 4'b1010; 
        inCarry = 4'b1001;
        
    //Logical operations
        #100 ain = 4'b0101; 
        bin = 4'b1011; 
        inCarry = 4'b1010;
        
        #100 ain = 4'b1010; 
        bin = 4'b0001; 
        inCarry = 4'b1011;
        
        
     #100 ain = 4'b0011; 
        bin = 4'b0111; 
        inCarry = 4'b1100;
     
  #1 $finish; 
end  
alu myalu(.ain(ain), .bin(bin), .out(out), .inCarry(inCarry));
//alu myalu(.ain(ain), .bin(bin), .out(out), .z_flag(z_flag), .v_flag(v_flag), .n_flag(n_flag));
endmodule