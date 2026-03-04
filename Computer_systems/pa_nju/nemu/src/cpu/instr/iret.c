#include "cpu/instr.h"
/*
Put the implementations of `iret' instructions here.
*/

make_instr_func(iret) 
{
	OPERAND temp;
	temp.data_size = data_size;
	temp.type = OPR_MEM;
	temp.sreg = SREG_DS;

	temp.addr = cpu.esp;
	operand_read(&temp);
	cpu.esp += data_size / 8;
	cpu.eip = temp.val;

	temp.addr = cpu.esp;
	operand_read(&temp);
	cpu.esp += data_size / 8;
	cpu.cs.val = temp.val;

	temp.addr = cpu.esp;
	operand_read(&temp);
	cpu.esp += data_size / 8;
	cpu.eflags.val = temp.val;

	return 0;
}
