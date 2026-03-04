#include "cpu/intr.h"
#include "cpu/instr.h"
#include "memory/memory.h"

void raise_intr(uint8_t intr_no)
{
#ifdef IA32_INTR
	OPERAND opr;
	opr.type = OPR_MEM;
	opr.data_size = data_size;
	opr.sreg = SREG_SS;

	cpu.esp -= data_size / 8;
	opr.addr = cpu.esp;
	opr.val = cpu.eflags.val;
	operand_write(&opr);

	cpu.esp -= data_size / 8;
	opr.addr = cpu.esp;
	opr.val = cpu.cs.val;
	operand_write(&opr);

	cpu.esp -= data_size / 8;
	opr.addr = cpu.esp;
	opr.val = cpu.eip;
	operand_write(&opr);

	paddr_t addr = (paddr_t)hw_mem + page_translate(segment_translate(cpu.idtr.base + (intr_no << 3), SREG_DS));
	GateDesc *gatedesc = (void *)addr;
	assert(gatedesc->present);

	if (gatedesc->type == 0xe) {
		cpu.eflags.IF = 0;
	}

	cpu.cs.val = gatedesc->selector;
	load_sreg(SREG_CS);
	cpu.eip = (gatedesc->offset_31_16 << 16) + gatedesc->offset_15_0;

#endif
}

void raise_sw_intr(uint8_t intr_no)
{
	// return address is the next instruction
	cpu.eip += 2;
	raise_intr(intr_no);
}
