#include "cpu/instr.h"
/*
Put the implementations of `lidt' instructions here.
*/

make_instr_func(lidt){
    int len = 1;
    OPERAND opr;
    opr.type = OPR_MEM;
    opr.data_size = data_size;
    len += modrm_rm(eip + 1, &opr);

    OPERAND limit, base;
    limit.type = OPR_MEM;
    limit.data_size = 16;
    limit.addr = opr.addr;
    limit.sreg = SREG_CS;
    operand_read(&limit);

    base.type = OPR_MEM;
    base.data_size = 32;//is this always correct?
    base.addr = opr.addr + 2;
    base.sreg = SREG_CS;
    operand_read(&base);

    cpu.idtr.limit = limit.val;
    cpu.idtr.base = base.val;

    return len;


}