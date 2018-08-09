
`include "riscv_vip_pkg.sv"
`include "riscv_vip_class_pkg.sv"

module inst_test;
import uvm_pkg::*;        
import riscv_vip_pkg::*;
import riscv_vip_class_pkg::*;

`include "riscv_instruction_typedefs.svh" 
`include "riscv_instruction.sv"  
`include "riscv_instruction_encoding.sv"  
  initial  begin
    inst32 my_inst32;
    riscv_instruction inst; 
    real cov;    
    decoder decoder0;
    bit[31:0] inst_bits;    
    inst32 i32;
    
    inst = new();
    decoder0 = new();
    repeat(500) begin   
      //assert(inst.randomize() with { opcode != BUBBLE;});
      assert(inst.randomize());
      inst_bits = inst.encoding();
      i32 = decoder0.decode_inst32(inst_bits);
      if(i32 ==null) begin
        r_inst_t inst;
        inst32_rformat r;
        inst.funct7 = 0;
        inst.funct3 = 0;
        inst.op = 0;
        r = new(inst);
        r.m_inst_enum = UNKNOWN_INST;
        $cast(i32, r);
      end  
      if(inst.opcode.name !=i32.get_name_string()&&
         inst.opcode != BUBBLE) begin
        inst.print();
        $display("encoding = %8h", inst.encoding());
        $display("decode of 0x%0H is [ %s ]", inst_bits, i32.to_string());
        $finish("decoder error");
      end  
      i32.sample_cov(); 
      
    end // repeat  
    // create BUBBLE
    

    
    cov = i32.inst_cg.get_coverage();
    $display("The last encoding = %8h", inst.encoding());
    $display("inst_cg cov rate  %0f",cov);
    
   
  end
  
  
endmodule