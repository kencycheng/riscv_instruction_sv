class riscv_instruction extends uvm_sequence_item;
  rand riscv_instruction_opcode_t opcode;
  rand riscv_instruction_format_t format;
  rand register_number_t rd;
  rand register_number_t rs1;
  rand register_number_t rs2;
  rand register_number_t rs3;
  rand register_number_t rm;
  rand bit[19:0] imm20;
  rand bit[11:0] imm12;
  rand bit[6:0] imm12lo;
  rand bit[4:0] imm12hi;
  rand bit[19:0] jimm20;
  rand bit[6:0] bimm12hi;
  rand bit[4:0] bimm12lo;
  rand bit[4:0] shamt;
  rand bit[5:0] shamtw;
  rand bit[4:0] zimm;
  rand bit[4:0] pred;
  rand bit[4:0] succ;
  rand bit[11:0] csr;
  rand bit aq;
  rand bit rl;
  `uvm_object_utils_begin(riscv_instruction)
    `uvm_field_enum(riscv_instruction_opcode_t, opcode,UVM_ALL_ON |UVM_NOPACK | UVM_NORECORD )
    `uvm_field_enum(riscv_instruction_format_t, format,UVM_ALL_ON | UVM_NOPACK | UVM_NORECORD)
    `uvm_field_enum(register_number_t, rd,UVM_ALL_ON | UVM_NOCOMPARE | UVM_NOPACK | UVM_NORECORD)
    `uvm_field_enum(register_number_t, rs1,UVM_ALL_ON | UVM_NOCOMPARE | UVM_NOPACK | UVM_NORECORD)
    `uvm_field_enum(register_number_t, rs2,UVM_ALL_ON | UVM_NOCOMPARE | UVM_NOPACK | UVM_NORECORD)
    `uvm_field_enum(register_number_t, rs3,UVM_ALL_ON | UVM_NOCOMPARE | UVM_NOPACK | UVM_NORECORD)
    `uvm_field_int(rm,UVM_ALL_ON | UVM_NOCOMPARE | UVM_NOPACK | UVM_NORECORD)
    `uvm_field_int(imm20,UVM_ALL_ON | UVM_NOCOMPARE | UVM_NOPACK | UVM_NORECORD)
    `uvm_field_int(imm12,UVM_ALL_ON | UVM_NOCOMPARE | UVM_NOPACK | UVM_NORECORD)
    `uvm_field_int(imm12lo,UVM_ALL_ON | UVM_NOCOMPARE | UVM_NOPACK | UVM_NORECORD)
    `uvm_field_int(imm12hi,UVM_ALL_ON | UVM_NOCOMPARE | UVM_NOPACK | UVM_NORECORD)
    `uvm_field_int(jimm20,UVM_ALL_ON | UVM_NOCOMPARE | UVM_NOPACK | UVM_NORECORD)
    `uvm_field_int(bimm12hi,UVM_ALL_ON | UVM_NOCOMPARE | UVM_NOPACK | UVM_NORECORD)
    `uvm_field_int(bimm12lo,UVM_ALL_ON | UVM_NOCOMPARE | UVM_NOPACK | UVM_NORECORD)
    `uvm_field_int(zimm,UVM_ALL_ON | UVM_NOCOMPARE | UVM_NOPACK | UVM_NORECORD)
    `uvm_field_int(shamt,UVM_ALL_ON | UVM_NOCOMPARE | UVM_NOPACK | UVM_NORECORD)
    `uvm_field_int(shamtw,UVM_ALL_ON | UVM_NOCOMPARE | UVM_NOPACK | UVM_NORECORD)
    `uvm_field_int(pred,UVM_ALL_ON | UVM_NOCOMPARE | UVM_NOPACK | UVM_NORECORD)
    `uvm_field_int(succ,UVM_ALL_ON | UVM_NOCOMPARE | UVM_NOPACK | UVM_NORECORD)
    `uvm_field_int(csr,UVM_ALL_ON | UVM_NOCOMPARE | UVM_NOPACK | UVM_NORECORD)
    `uvm_field_int(aq,UVM_ALL_ON | UVM_NOCOMPARE | UVM_NOPACK | UVM_NORECORD)
    `uvm_field_int(rl,UVM_ALL_ON | UVM_NOCOMPARE | UVM_NOPACK | UVM_NORECORD)
   
  `uvm_object_utils_end
  function new(name = "riscv_instruction_base");
    super.new(name);
  endfunction 
  extern virtual function bit[31:0] encoding();
  `include "riscv_instruction_declare.svh"  
endclass
