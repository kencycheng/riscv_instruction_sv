//Automatic generated by parse-opcode
function bit[31:0] riscv_instruction::encoding();
  case(opcode)
    AND         : return encoding_and();
    ECALL       : return encoding_ecall();
    LBU         : return encoding_lbu();
    FENCE       : return encoding_fence();
    SW          : return encoding_sw();
    BLTU        : return encoding_bltu();
    XOR         : return encoding_xor();
    FENCEI      : return encoding_fencei();
    EBREAK      : return encoding_ebreak();
    SLL         : return encoding_sll();
    ANDI        : return encoding_andi();
    SUB         : return encoding_sub();
    BLT         : return encoding_blt();
    JAL         : return encoding_jal();
    LH          : return encoding_lh();
    LW          : return encoding_lw();
    ADD         : return encoding_add();
    CSRRC       : return encoding_csrrc();
    AUIPC       : return encoding_auipc();
    LUI         : return encoding_lui();
    CSRRCI      : return encoding_csrrci();
    ADDI        : return encoding_addi();
    CSRRWI      : return encoding_csrrwi();
    CSRRW       : return encoding_csrrw();
    BGEU        : return encoding_bgeu();
    SLTIU       : return encoding_sltiu();
    CSRRSI      : return encoding_csrrsi();
    SRAI        : return encoding_srai();
    CSRRS       : return encoding_csrrs();
    ORI         : return encoding_ori();
    XORI        : return encoding_xori();
    LB          : return encoding_lb();
    JALR        : return encoding_jalr();
    SRA         : return encoding_sra();
    BGE         : return encoding_bge();
    SLT         : return encoding_slt();
    SRLI        : return encoding_srli();
    SLTI        : return encoding_slti();
    SRL         : return encoding_srl();
    SLTU        : return encoding_sltu();
    LHU         : return encoding_lhu();
    SH          : return encoding_sh();
    SLLI        : return encoding_slli();
    BNE         : return encoding_bne();
    SB          : return encoding_sb();
    BEQ         : return encoding_beq();
    OR          : return encoding_or();
  endcase
endfunction
// RV32I instruction - ecall, ebreak 
// AND
function bit[31:0] riscv_instruction::encoding_and();
  bit[31:0] encoding;
  encoding[31:25] = 7'b0000000;
  encoding[24:20] = 5'(rs2);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b111;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0110011;
  return encoding;
endfunction
// ECALL
function bit[31:0] riscv_instruction::encoding_ecall();
  bit[31:0] encoding;
  encoding[31:15] = 17'b00000000000000000;
  encoding[14:12] = 3'b000;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b1110011;
  return encoding;
endfunction
// LBU
function bit[31:0] riscv_instruction::encoding_lbu();
  bit[31:0] encoding;
  encoding[31:20] = 12'(imm12);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b100;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0000011;
  return encoding;
endfunction
// FENCE
function bit[31:0] riscv_instruction::encoding_fence();
  bit[31:0] encoding;
  encoding[31:28] = 4'b0000;
  encoding[27:24] = 4'(pred);
  encoding[23:20] = 4'(succ);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b000;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0001111;
  return encoding;
endfunction
// SW
function bit[31:0] riscv_instruction::encoding_sw();
  bit[31:0] encoding;
  encoding[31:25] = 7'(imm12hi);
  encoding[24:20] = 5'(rs2);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b010;
  encoding[11: 7] = 5'(imm12lo);
  encoding[ 6: 0] = 7'b0100011;
  return encoding;
endfunction
// BLTU
function bit[31:0] riscv_instruction::encoding_bltu();
  bit[31:0] encoding;
  encoding[31:25] = 7'(bimm12hi);
  encoding[24:20] = 5'(rs2);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b110;
  encoding[11: 7] = 5'(bimm12lo);
  encoding[ 6: 0] = 7'b1100011;
  return encoding;
endfunction
// XOR
function bit[31:0] riscv_instruction::encoding_xor();
  bit[31:0] encoding;
  encoding[31:25] = 7'b0000000;
  encoding[24:20] = 5'(rs2);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b100;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0110011;
  return encoding;
endfunction
// FENCE.I
function bit[31:0] riscv_instruction::encoding_fencei();
  bit[31:0] encoding;
  encoding[31:28] = 4'b0000;
  encoding[27:24] = 4'(pred);
  encoding[23:20] = 4'(succ);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b001;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0001111;
  return encoding;
endfunction
// EBREAK
function bit[31:0] riscv_instruction::encoding_ebreak();
  bit[31:0] encoding;
  encoding[31:15] = 17'b00000000000100000;
  encoding[14:12] = 3'b000;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b1110011;
  return encoding;
endfunction
// SLL
function bit[31:0] riscv_instruction::encoding_sll();
  bit[31:0] encoding;
  encoding[31:25] = 7'b0000000;
  encoding[24:20] = 5'(rs2);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b001;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0110011;
  return encoding;
endfunction
// ANDI
function bit[31:0] riscv_instruction::encoding_andi();
  bit[31:0] encoding;
  encoding[31:20] = 12'(imm12);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b111;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0010011;
  return encoding;
endfunction
// SUB
function bit[31:0] riscv_instruction::encoding_sub();
  bit[31:0] encoding;
  encoding[31:25] = 7'b0100000;
  encoding[24:20] = 5'(rs2);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b000;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0110011;
  return encoding;
endfunction
// BLT
function bit[31:0] riscv_instruction::encoding_blt();
  bit[31:0] encoding;
  encoding[31:25] = 7'(bimm12hi);
  encoding[24:20] = 5'(rs2);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b100;
  encoding[11: 7] = 5'(bimm12lo);
  encoding[ 6: 0] = 7'b1100011;
  return encoding;
endfunction
// JAL
function bit[31:0] riscv_instruction::encoding_jal();
  bit[31:0] encoding;
  jimm20 = {imm20[19], imm20[9:0], imm20[10], imm20[18:11]}; // imm20[19:0] represents offset[20:1]
  encoding[31:12] = 20'(jimm20);
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b1101111;
  return encoding;
endfunction
// LH
function bit[31:0] riscv_instruction::encoding_lh();
  bit[31:0] encoding;
  encoding[31:20] = 12'(imm12);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b001;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0000011;
  return encoding;
endfunction
// LW
function bit[31:0] riscv_instruction::encoding_lw();
  bit[31:0] encoding;
  encoding[31:20] = 12'(imm12);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b010;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0000011;
  return encoding;
endfunction
// ADD
function bit[31:0] riscv_instruction::encoding_add();
  bit[31:0] encoding;
  encoding[31:25] = 7'b0000000;
  encoding[24:20] = 5'(rs2);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b000;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0110011;
  return encoding;
endfunction
// CSRRC
function bit[31:0] riscv_instruction::encoding_csrrc();
  bit[31:0] encoding;
  encoding[31:20] = 12'(csr);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b011;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b1110011;
  return encoding;
endfunction
// AUIPC
function bit[31:0] riscv_instruction::encoding_auipc();
  bit[31:0] encoding;
  encoding[31:12] = 20'(imm20);
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0010111;
  return encoding;
endfunction
// LUI
function bit[31:0] riscv_instruction::encoding_lui();
  bit[31:0] encoding;
  encoding[31:12] = 20'(imm20);
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0110111;
  return encoding;
endfunction
// CSRRCI
function bit[31:0] riscv_instruction::encoding_csrrci();
  bit[31:0] encoding;
  encoding[31:20] = 12'(csr);
  encoding[19:15] = 5'(zimm);
  encoding[14:12] = 3'b111;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b1110011;
  return encoding;
endfunction
// ADDI
function bit[31:0] riscv_instruction::encoding_addi();
  bit[31:0] encoding;
  encoding[31:20] = 12'(imm12);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b000;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0010011;
  return encoding;
endfunction
// CSRRWI
function bit[31:0] riscv_instruction::encoding_csrrwi();
  bit[31:0] encoding;
  encoding[31:20] = 12'(csr);
  encoding[19:15] = 5'(zimm);
  encoding[14:12] = 3'b101;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b1110011;
  return encoding;
endfunction
// CSRRW
function bit[31:0] riscv_instruction::encoding_csrrw();
  bit[31:0] encoding;
  encoding[31:20] = 12'(csr);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b001;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b1110011;
  return encoding;
endfunction
// BGEU
function bit[31:0] riscv_instruction::encoding_bgeu();
  bit[31:0] encoding;
  encoding[31:25] = 7'(bimm12hi);
  encoding[24:20] = 5'(rs2);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b111;
  encoding[11: 7] = 5'(bimm12lo);
  encoding[ 6: 0] = 7'b1100011;
  return encoding;
endfunction
// SLTIU
function bit[31:0] riscv_instruction::encoding_sltiu();
  bit[31:0] encoding;
  encoding[31:20] = 12'(imm12);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b011;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0010011;
  return encoding;
endfunction
// CSRRSI
function bit[31:0] riscv_instruction::encoding_csrrsi();
  bit[31:0] encoding;
  encoding[31:20] = 12'(csr);
  encoding[19:15] = 5'(zimm);
  encoding[14:12] = 3'b110;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b1110011;
  return encoding;
endfunction
// SRAI
function bit[31:0] riscv_instruction::encoding_srai();
  bit[31:0] encoding;
  encoding[31:26] = 6'b010000;
  encoding[25:20] = 6'(shamt);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b101;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0010011;
  return encoding;
endfunction
// CSRRS
function bit[31:0] riscv_instruction::encoding_csrrs();
  bit[31:0] encoding;
  encoding[31:20] = 12'(csr);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b010;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b1110011;
  return encoding;
endfunction
// ORI
function bit[31:0] riscv_instruction::encoding_ori();
  bit[31:0] encoding;
  encoding[31:20] = 12'(imm12);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b110;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0010011;
  return encoding;
endfunction
// XORI
function bit[31:0] riscv_instruction::encoding_xori();
  bit[31:0] encoding;
  encoding[31:20] = 12'(imm12);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b100;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0010011;
  return encoding;
endfunction
// LB
function bit[31:0] riscv_instruction::encoding_lb();
  bit[31:0] encoding;
  encoding[31:20] = 12'(imm12);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b000;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0000011;
  return encoding;
endfunction
// JALR
function bit[31:0] riscv_instruction::encoding_jalr();
  bit[31:0] encoding;
  encoding[31:20] = 12'(imm12);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b000;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b1100111;
  return encoding;
endfunction
// SRA
function bit[31:0] riscv_instruction::encoding_sra();
  bit[31:0] encoding;
  encoding[31:25] = 7'b0100000;
  encoding[24:20] = 5'(rs2);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b101;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0110011;
  return encoding;
endfunction
// BGE
function bit[31:0] riscv_instruction::encoding_bge();
  bit[31:0] encoding;
  encoding[31:25] = 7'(bimm12hi);
  encoding[24:20] = 5'(rs2);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b101;
  encoding[11: 7] = 5'(bimm12lo);
  encoding[ 6: 0] = 7'b1100011;
  return encoding;
endfunction
// SLT
function bit[31:0] riscv_instruction::encoding_slt();
  bit[31:0] encoding;
  encoding[31:25] = 7'b0000000;
  encoding[24:20] = 5'(rs2);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b010;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0110011;
  return encoding;
endfunction
// SRLI
function bit[31:0] riscv_instruction::encoding_srli();
  bit[31:0] encoding;
  encoding[31:26] = 6'b000000;
  encoding[25:20] = 6'(shamt);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b101;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0010011;
  return encoding;
endfunction
// SLTI
function bit[31:0] riscv_instruction::encoding_slti();
  bit[31:0] encoding;
  encoding[31:20] = 12'(imm12);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b010;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0010011;
  return encoding;
endfunction
// SRL
function bit[31:0] riscv_instruction::encoding_srl();
  bit[31:0] encoding;
  encoding[31:25] = 7'b0000000;
  encoding[24:20] = 5'(rs2);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b101;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0110011;
  return encoding;
endfunction
// SLTU
function bit[31:0] riscv_instruction::encoding_sltu();
  bit[31:0] encoding;
  encoding[31:25] = 7'b0000000;
  encoding[24:20] = 5'(rs2);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b011;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0110011;
  return encoding;
endfunction
// LHU
function bit[31:0] riscv_instruction::encoding_lhu();
  bit[31:0] encoding;
  encoding[31:20] = 12'(imm12);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b101;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0000011;
  return encoding;
endfunction
// SH
function bit[31:0] riscv_instruction::encoding_sh();
  bit[31:0] encoding;
  encoding[31:25] = 7'(imm12hi);
  encoding[24:20] = 5'(rs2);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b001;
  encoding[11: 7] = 5'(imm12lo);
  encoding[ 6: 0] = 7'b0100011;
  return encoding;
endfunction
// SLLI
function bit[31:0] riscv_instruction::encoding_slli();
  bit[31:0] encoding;
  encoding[31:26] = 6'b000000;
  encoding[25:20] = 6'(shamt);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b001;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0010011;
  return encoding;
endfunction
// BNE
function bit[31:0] riscv_instruction::encoding_bne();
  bit[31:0] encoding;
  encoding[31:25] = 7'(bimm12hi);
  encoding[24:20] = 5'(rs2);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b001;
  encoding[11: 7] = 5'(bimm12lo);
  encoding[ 6: 0] = 7'b1100011;
  return encoding;
endfunction
// SB
function bit[31:0] riscv_instruction::encoding_sb();
  bit[31:0] encoding;
  encoding[31:25] = 7'(imm12hi);
  encoding[24:20] = 5'(rs2);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b000;
  encoding[11: 7] = 5'(imm12lo);
  encoding[ 6: 0] = 7'b0100011;
  return encoding;
endfunction
// BEQ
function bit[31:0] riscv_instruction::encoding_beq();
  bit[31:0] encoding;
  encoding[31:25] = 7'(bimm12hi);
  encoding[24:20] = 5'(rs2);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b000;
  encoding[11: 7] = 5'(bimm12lo);
  encoding[ 6: 0] = 7'b1100011;
  return encoding;
endfunction
// OR
function bit[31:0] riscv_instruction::encoding_or();
  bit[31:0] encoding;
  encoding[31:25] = 7'b0000000;
  encoding[24:20] = 5'(rs2);
  encoding[19:15] = 5'(rs1);
  encoding[14:12] = 3'b110;
  encoding[11: 7] = 5'(rd);
  encoding[ 6: 0] = 7'b0110011;
  return encoding;
endfunction
