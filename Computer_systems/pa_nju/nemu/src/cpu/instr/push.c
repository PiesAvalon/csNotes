#include "cpu/instr.h"
/*
Put the implementations of `push' instructions here.
*/


static void instr_execute_1op(){
    operand_read(&opr_src);
    cpu.esp -= opr_src.data_size / 8;
    OPERAND mem;
    mem.type = OPR_MEM;
    mem.data_size = opr_src.data_size;
    mem.addr = cpu.esp;
    mem.val = opr_src.val;
    mem.sreg = SREG_SS; 
    operand_write(&mem);
}

make_instr_impl_1op(push, r, v)
make_instr_impl_1op(push, rm, v)
// make_instr_impl_1op(push, i, b)
make_instr_impl_1op(push, i, v)

// refered to code on: https://github.com/GeeeekExplorer/NJU-ICS/blob/master/pa2018_fall/nemu/src/cpu/instr/push.c
make_instr_func(push_i_b){
    opr_src.data_size = 8;
    opr_src.type = OPR_IMM;
    opr_src.addr = eip + 1;
    cpu.esp -= data_size / 8;
    operand_read(&opr_src);
    opr_src.val = sign_ext(opr_src.val, 8);
    opr_dest.data_size = data_size;
    opr_dest.type = OPR_MEM;
    opr_dest.addr = cpu.esp;
    opr_dest.val = opr_src.val;
    operand_write(&opr_dest);
    opr_dest.sreg = SREG_SS; 
    return 2;
}

make_instr_func(pusha){
	opr_dest.data_size = data_size;
	opr_dest.type = OPR_MEM;
	opr_dest.sreg = SREG_SS;

	uint32_t old_sp = (data_size == 16) ? cpu.gpr[REG_SP]._16 : cpu.gpr[REG_ESP]._32;

	cpu.esp -= data_size / 8;
	opr_dest.addr = cpu.esp;
	opr_dest.val = (data_size == 16) ? cpu.gpr[REG_AX]._16 : cpu.gpr[REG_EAX]._32;
	operand_write(&opr_dest);

	cpu.esp -= data_size / 8;
	opr_dest.addr = cpu.esp;
	opr_dest.val = (data_size == 16) ? cpu.gpr[REG_CX]._16 : cpu.gpr[REG_ECX]._32;
	operand_write(&opr_dest);

	cpu.esp -= data_size / 8;
	opr_dest.addr = cpu.esp;
	opr_dest.val = (data_size == 16) ? cpu.gpr[REG_DX]._16 : cpu.gpr[REG_EDX]._32;
	operand_write(&opr_dest);

	cpu.esp -= data_size / 8;
	opr_dest.addr = cpu.esp;
	opr_dest.val = (data_size == 16) ? cpu.gpr[REG_BX]._16 : cpu.gpr[REG_EBX]._32;
	operand_write(&opr_dest);

	cpu.esp -= data_size / 8;
	opr_dest.addr = cpu.esp;
	opr_dest.val = old_sp;
	operand_write(&opr_dest);

	cpu.esp -= data_size / 8;
	opr_dest.addr = cpu.esp;
	opr_dest.val = (data_size == 16) ? cpu.gpr[REG_BP]._16 : cpu.gpr[REG_EBP]._32;
	operand_write(&opr_dest);

	cpu.esp -= data_size / 8;
	opr_dest.addr = cpu.esp;
	opr_dest.val = (data_size == 16) ? cpu.gpr[REG_SI]._16 : cpu.gpr[REG_ESI]._32;
	operand_write(&opr_dest);

	cpu.esp -= data_size / 8;
	opr_dest.addr = cpu.esp;
	opr_dest.val = (data_size == 16) ? cpu.gpr[REG_DI]._16 : cpu.gpr[REG_EDI]._32;
	operand_write(&opr_dest);

	return 1;
}
