#include "cpu/instr.h"
#include "device/port_io.h"
/*
Put the implementations of `out' instructions here.
*/

make_instr_func(out)
{
	uint16_t port = cpu.gpr[REG_DX]._16;
	pio_write(port, 1, cpu.gpr[REG_AL]._8[0]);
	return 1;
}

make_instr_func(outd)
{
	uint16_t port = cpu.gpr[REG_DX]._16;
	uint32_t val = (data_size == 16) ? cpu.gpr[REG_AX]._16 : cpu.gpr[REG_EAX]._32;
	pio_write(port, data_size/8, val);
	return 1;
}
