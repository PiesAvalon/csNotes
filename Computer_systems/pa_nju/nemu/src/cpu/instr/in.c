#include "cpu/instr.h"
#include "device/port_io.h"
/*
Put the implementations of `in' instructions here.
*/

make_instr_func(in)
{
	uint16_t port = cpu.gpr[REG_DX]._16;
	uint8_t val = (uint8_t)pio_read(port, 1);
	cpu.gpr[REG_AL]._8[0] = val;
	return 1;
}

make_instr_func(ind)
{
	uint16_t port = cpu.gpr[REG_DX]._16;
	uint32_t val = pio_read(port, data_size/8);
	if(data_size == 16)
		cpu.gpr[REG_AX]._16 = (uint16_t)val;
	if(data_size == 32)
		cpu.gpr[REG_EAX]._32 = val;
	return 1;
}
