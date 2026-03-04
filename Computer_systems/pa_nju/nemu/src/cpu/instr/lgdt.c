#include "cpu/instr.h"
/*
Put the implementations of `lgdt' instructions here.
*/

make_instr_func(lgdt) {
    OPERAND opr_src;
    opr_src.type = OPR_MEM;
    opr_src.data_size = 32;
    opr_src.addr = eip + 1;
    int len = modrm_rm(eip + 1, &opr_src);
    opr_src.data_size = 16;
    operand_read(&opr_src);
    cpu.gdtr.limit = opr_src.val;
    opr_src.data_size = 32;
    opr_src.addr += 2;
    operand_read(&opr_src);
    cpu.gdtr.base = opr_src.val;
    return len + 1;
}