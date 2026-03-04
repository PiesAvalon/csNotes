#include "cpu/instr.h"
/*
Put the implementations of `ret' instructions here.
*/
make_instr_func(ret_near) {
    OPERAND mem;
    mem.type = OPR_MEM;
    mem.data_size = data_size;
    mem.addr = cpu.esp;
    operand_read(&mem);
    cpu.eip = mem.val;
    cpu.esp += data_size / 8;
    return 0;
}

make_instr_func(ret_near_imm16) {
    OPERAND mem;
    mem.type = OPR_MEM;
    mem.data_size = data_size;
    mem.addr = cpu.esp;
    operand_read(&mem);

    OPERAND imm;
    imm.type = OPR_IMM;
    imm.data_size = 16;
    imm.addr = cpu.eip + 1;
    operand_read(&imm);

    cpu.eip = mem.val;
    cpu.esp += data_size / 8;

    cpu.esp += imm.val;
    return 0;
}