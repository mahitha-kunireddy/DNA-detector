module dna_detector(
input clk, rst,
input wire [16:1]input_val ,
output reg output_val
 );
    parameter s0=2'b00,s1=2'b01,s2=2'b10,s3=2'b11;
    reg x;
    integer num=17;
    reg[1:0] state ,next_state;
    always @ (negedge clk) begin
    num=num-1;
    x =input_val[num]; 
    end
    always @(next_state or x) begin 
    if(rst) begin  
     state<=s0;
     next_state<=s0;
     output_val=0;
     num=17;
     x=0;
     end
    else
     state<=next_state; 
    end
    always@(posedge clk) begin 
    case(state)
    s0:begin 
    if(x)  begin
    output_val=0;
    next_state =s1;
    end else begin
    output_val=0;
     next_state = s0;
     end
    end    
    s1:begin   
        if(x) begin
        output_val=0;
         next_state =s1;
        end else begin
        output_val=0;
        next_state = s2;
       end
        end 
      s2:begin
         if(x) begin
         output_val=0;
          next_state =s1;
         end else begin
         output_val=0;
         next_state = s3;
         end
         end    
      s3:begin
        if(x) begin
          output_val=1;
          next_state=s0;
          end else  begin   
          output_val=0;       
          next_state=s0;     
          end
          end
          default:next_state=s0;
          endcase
          end     
endmodule