
//###############################################################
//
//  Licensed to the Apache Software Foundation (ASF) under one
//  or more contributor license agreements.  See the NOTICE file
//  distributed with this work for additional information
//  regarding copyright ownership.  The ASF licenses this file
//  to you under the Apache License, Version 2.0 (the
//  "License"); you may not use this file except in compliance
//  with the License.  You may obtain a copy of the License at
//  
//  http://www.apache.org/licenses/LICENSE-2.0
//  
//  Unless required by applicable law or agreed to in writing,
//  software distributed under the License is distributed on an
//  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
//  KIND, either express or implied.  See the License for the
//  specific language governing permissions and limitations
//  under the License.
//
//###############################################################


`include "svunit_defines.svh"
`include "riscv_vip_pkg.sv"
`include "riscv_vip_class_pkg.sv"
import uvm_pkg::*;
import riscv_vip_pkg::*;
import riscv_vip_class_pkg::*;
`include "riscv_instruction_typedefs.svh" 
`include "riscv_instruction.sv"  
`include "riscv_instruction_encoding.sv"  

module riscv_encode_decode_unit_test;
  import svunit_pkg::svunit_testcase;
 
   

  string name = "riscv_encode_decode_ut";
  svunit_testcase svunit_ut;


  //===================================
  // This is the UUT that we're 
  // running the Unit Tests on
  //===================================
  riscv_instruction inst;
  decoder decoder0;   
   

  //===================================
  // Build
  //===================================
  function void build();
    svunit_ut = new(name);

    decoder0 = new();
    inst = new();	
    
  endfunction


  //===================================
  // Setup for running the Unit Tests
  //===================================
  task setup();
    svunit_ut.setup();
    /* Place Setup Code Here */

  endtask


  //===================================
  // Here we deconstruct anything we 
  // need after running the Unit Tests
  //===================================
  task teardown();
    svunit_ut.teardown();
    /* Place Teardown Code Here */

  endtask


  //===================================
  // All tests are defined between the
  // SVUNIT_TESTS_BEGIN/END macros
  //
  // Each individual test must be
  // defined between `SVTEST(_NAME_)
  // `SVTEST_END
  //
  // i.e.
  //   `SVTEST(mytest)
  //     <test code>
  //   `SVTEST_END
  //===================================
  `SVUNIT_TESTS_BEGIN    

 

  `SVTEST(encdec10)
    real cov;    
    bit[31:0] inst_bits;    
    inst32 i32;
    
 
    repeat(10) begin   
      assert(inst.randomize() with { opcode != BUBBLE;});
      inst_bits = inst.encoding();
      i32 = decoder0.decode_inst32(inst_bits);
    
      if(inst.opcode.name !=i32.get_name_string()) begin
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
   `FAIL_UNLESS(cov<100) 
   `FAIL_UNLESS(cov>0)
  
   
  `SVTEST_END     


  `SVTEST(encdec500)
  
    real cov;    
    bit[31:0] inst_bits;    
    inst32 i32;
    
 
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
   `FAIL_UNLESS(cov==100) 
  
  `SVTEST_END
 `SVUNIT_TESTS_END      
   
endmodule
