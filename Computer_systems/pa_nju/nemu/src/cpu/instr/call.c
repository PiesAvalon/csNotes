#include "cpu/instr.h"
/*
Put the implementations of `call' instructions here.
*/
make_instr_func(call_near){
    OPERAND rel, stack;
    rel.data_size = data_size;
    rel.type = OPR_IMM;
    // rel.sreg = SREG_CS;
    rel.addr = cpu.eip + 1;
    operand_read(&rel);//rel is the offset to jump to
    cpu.esp -= data_size / 8;
    stack.data_size = data_size;
    stack.type = OPR_MEM;
    stack.addr = cpu.esp;//the new stack top
    // stack.sreg = SREG_SS;
    stack.val = cpu.eip + 1 + data_size / 8;
    operand_write(&stack);//push the return address onto the stack
    cpu.eip += sign_ext(rel.val, data_size) + 1 + data_size / 8;
    return 0;
}

make_instr_func(call_near_indirect){
    OPERAND rm, stack;
    rm.data_size = data_size;
    int len = 1 + modrm_rm(eip + 1, &rm);
    operand_read(&rm);
    
    // Push return address onto stack
    cpu.esp -= data_size / 8;
    stack.data_size = data_size;
    stack.type = OPR_MEM;
    stack.addr = cpu.esp;
    stack.val = cpu.eip + len;
    operand_write(&stack);
    
    // Jump to the address stored in rm
    if(data_size == 16){
        cpu.eip = rm.val & 0x0000ffff;
    }
    else{
        cpu.eip = rm.val;
    }
    return 0;
}