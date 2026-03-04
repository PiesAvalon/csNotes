#include "cpu/instr.h"
/*
Put the implementations of `pop' instructions here.
*/

make_instr_func(pop_r_v) {
    OPERAND r, m;
    m.type = OPR_MEM;
    m.data_size = data_size;
    m.addr = cpu.esp;
    operand_read(&m);
    r.type = OPR_REG;
    r.data_size = data_size;
    r.addr = opcode & 0x7;
    r.val = m.val;
    operand_write(&r);
    cpu.esp += data_size / 8;
    return 1;
}

make_instr_func(popa){
	print_asm_0("popa", "", 1);

	OPERAND opr;
	opr.type = OPR_MEM;
	opr.data_size = data_size;
	opr.sreg = SREG_SS;

	opr.addr = cpu.esp;
	operand_read(&opr);
	cpu.esp += data_size / 8;
	if(data_size == 16) cpu.gpr[REG_DI]._16 = opr.val;
	else cpu.gpr[REG_EDI]._32 = opr.val;

	opr.addr = cpu.esp;
	operand_read(&opr);
	cpu.esp += data_size / 8;
	if(data_size == 16) cpu.gpr[REG_SI]._16 = opr.val;
	else cpu.gpr[REG_ESI]._32 = opr.val;

	opr.addr = cpu.esp;
	operand_read(&opr);
	cpu.esp += data_size / 8;
	if(data_size == 16) cpu.gpr[REG_BP]._16 = opr.val;
	else cpu.gpr[REG_EBP]._32 = opr.val;

	cpu.esp += data_size / 8; // skip ESP slot

	opr.addr = cpu.esp;
	operand_read(&opr);
	cpu.esp += data_size / 8;
	if(data_size == 16) cpu.gpr[REG_BX]._16 = opr.val;
	else cpu.gpr[REG_EBX]._32 = opr.val;

	opr.addr = cpu.esp;
	operand_read(&opr);
	cpu.esp += data_size / 8;
	if(data_size == 16) cpu.gpr[REG_DX]._16 = opr.val;
	else cpu.gpr[REG_EDX]._32 = opr.val;

	opr.addr = cpu.esp;
	operand_read(&opr);
	cpu.esp += data_size / 8;
	if(data_size == 16) cpu.gpr[REG_CX]._16 = opr.val;
	else cpu.gpr[REG_ECX]._32 = opr.val;

	opr.addr = cpu.esp;
	operand_read(&opr);
	cpu.esp += data_size / 8;
	if(data_size == 16) cpu.gpr[REG_AX]._16 = opr.val;
	else cpu.gpr[REG_EAX]._32 = opr.val;

	return 1;
}
