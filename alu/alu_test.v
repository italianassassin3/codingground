module alu(ain, bin, ctrl, z_flag, n_flag, v_flag, out);
input [31:0] ain,bin;
//input[1:0] inCarry;
input[1:0] ctrl;
output [31:0] out;

output reg z_flag;
output reg n_flag;
output reg v_flag;

reg out;
//reg oCarry;
always@(ctrl)
//always@(ctrl)
begin
case(ctrl)
//case(ctrl)

4'b0000:            out=ain+bin;                 //8-bit addition

// if(out === 4'b0000  )
//  z_flag = 4' b0001;
 
// else
//  z_flag = 4'b0000;
//   $stop;

//4'b0000: out[32:0] <={ain[31], ain[31:0]} + {bin[31], bin[31:0]}; //add ain +bin 
// if(out[32:31] == (4'b0111 | 4'b1001)) 
// v_flag = 4' b1;
// else
// v_flag = 4'b0;

4'b0001:           out=ain-bin;                  //8-bit subtraction


//4'b0001: out[32:0] <={ain[31], ain[31:0]} - {bin[31], bin[31:0]}; //substract ain -bin
// if(out[32+32] && {~out[32+31:31] !0))

// v_flag <= 4'b1;
// else if(~out[32+32] && {out[32+31:31] !0))
// v_flag <= 4'b1;
// else v_flag <= 4'b0;

4'b0010:           out=ain*bin;                 //8-bit multiplication

4'b0011:           out=ain/bin;                  //8-bit division

4'b0100:           out= ain % bin;                //8-bit modulo division

4'b0101:            out = ain ** bin;               //8-bit modulp exponentiation

4'b0110:            out=~ain;                     //8-bit bitwise negation


4'b0111:             out=ain&bin; 
//4'b0111: out[31:0] <= ain[31:0] & bin[31:0]; //Bitwise AND
4'b1000:        out = ain |bin;

4'b1001:        out = ain^bin;
//4'b1001: out[31:0] <= ain[31:0] ^ bin[31:0]; //Bitwise XOR

4'b1010:    out = !ain;

4'b1011:    out=ain && bin;   

4'b1100:    out = ain || bin;

// if (out[31:0] == 4'b0000)
// z_flag <= 4'b0001;
// else z_flag <= 4'b0000;

endcase
//$displayb( out);
if (4'b0010){
assign v_flag = ({carry,out[31]} == 4'b0000);
}
end

//4'b1101:    out = ain || bin;
endmodule