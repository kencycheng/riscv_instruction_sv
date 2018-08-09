`include "riscv_instruction_opcode_typedef.svh"
typedef enum {
  R_type,
  I_type,
  S_type,
  U_type,
  B_type,
  J_type
} riscv_instruction_format_t;

typedef enum bit[4:0] {
  x0  = 5'd0,
  x1  = 5'd1,
  x2  = 5'd2,
  x3  = 5'd3,
  x4  = 5'd4,
  x5  = 5'd5,
  x6  = 5'd6,
  x7  = 5'd7, 
  x8  = 5'd8,
  x9  = 5'd9,
  x10 = 5'd10,
  x11 = 5'd11,
  x12 = 5'd12,
  x13 = 5'd13,
  x14 = 5'd14,
  x15 = 5'd15,
  x16 = 5'd16,
  x17 = 5'd17,
  x18 = 5'd18,
  x19 = 5'd19,
  x20 = 5'd20,
  x21 = 5'd21,
  x22 = 5'd22,
  x23 = 5'd23, 
  x24 = 5'd24,
  x25 = 5'd25,
  x26 = 5'd26,
  x27 = 5'd27,
  x28 = 5'd28,
  x29 = 5'd29,
  x30 = 5'd30,
  x31 = 5'd31
 
} register_number_t;