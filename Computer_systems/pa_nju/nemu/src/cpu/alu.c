#include "cpu/cpu.h"

// #define NEMU_REF_ALU

void setPF(uint32_t result){
	size_t cnt = 0;
	uint32_t tem = result;
	for(size_t i = 0; i < 8; i++){
		if(tem % 2 == 0){
			cnt++;
		}
		tem = tem >> 1;
	}
	if(cnt % 2 == 0){
		cpu.eflags.PF = 1;
	}
	else{
		cpu.eflags.PF = 0;
	}
}

void setZF(uint32_t result){
	if(result == (uint32_t)0){
		cpu.eflags.ZF = 1;
	}
	else{
		cpu.eflags.ZF = 0;
	}
}

void setSF(uint32_t result, size_t data_size){
	uint32_t temp = result;
		for(size_t i = 0; i < data_size - 1; i++){
			temp = temp >> 1;
		}
		if(temp % 2 == 1){
			cpu.eflags.SF = 1;
		}
		else{
			cpu.eflags.SF = 0;
		}
}

uint32_t alu_add(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_add(src, dest, data_size);
#else
// 	printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
// 	fflush(stdout);
// 	assert(0);
	uint32_t mask = 0;
	for(size_t i = 0; i < data_size; i++){
		mask *= 2;
		mask += 1;
	}

	uint32_t result = (src + dest) & mask;
	//PF
	setPF(result);

	//ZF
	setZF(result);

	//SF
	setSF(result, data_size);

	//CF
	{
		cpu.eflags.CF = result < (src & mask);
	}

	//OF
	{
		uint32_t t_result = result;
		uint32_t t_dest = dest;
		uint32_t t_src = src;
		for(size_t i = 0; i < data_size - 1; i++){
			t_result = t_result >> 1;
			t_dest = t_dest >> 1;
			t_src = t_src >> 1;
		}
		if((t_dest % 2)==(t_src % 2) && (t_result % 2)!=(t_dest % 2)){
			cpu.eflags.OF = 1;
		}
		else{
			cpu.eflags.OF = 0;
		}
	}
	return result;
	// {//AF
	// 	uint32_t amask = 0xF;
	// 	uint32_t aresult = (amask & src) + (amask & dest);
	// 	if(aresult < src){
	// 		cpu.eflags.AF = 1;
	// 	}
	// 	else{
	// 		cpu.eflags.AF = 0;
	// 	}

	// }
#endif
}

uint32_t alu_adc(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_adc(src, dest, data_size);
#else
	// printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	// fflush(stdout);
	// assert(0);
	// return 0;
	uint32_t mask = 0;
	for(size_t i = 0; i < data_size; i++){
		mask *= 2;
		mask += 1;
	}

	uint32_t result = (src + dest + (uint32_t)cpu.eflags.CF) & mask;

	setPF(result);
	setZF(result);
	setSF(result, data_size);

	{//CF
		if(cpu.eflags.CF == 0){
			cpu.eflags.CF = result < (src & mask);
		}
		else{
			cpu.eflags.CF = (result <= (src & mask));
		}
	}

	{//OF
		uint32_t t_result = result;
		uint32_t t_dest = dest;
		uint32_t t_src = src;
		for(size_t i = 0; i < data_size - 1; i++){
			t_result = t_result >> 1;
			t_dest = t_dest >> 1;
			t_src = t_src >> 1;
		}
		if((t_dest % 2)==(t_src % 2) && (t_result % 2)!=(t_dest % 2)){
			cpu.eflags.OF = 1;
		}
		else{
			cpu.eflags.OF = 0;
		}
	}

	return result;

#endif
}

uint32_t alu_sub(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_sub(src, dest, data_size);
#else
	// printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	// fflush(stdout);
	// assert(0);
	// return 0;
	uint32_t mask = 0;
	for(size_t i = 0; i < data_size; i++){
		mask *= 2;
		mask += 1;
	}

	uint32_t result = (-src + dest) & mask;

	setPF(result);
	setZF(result);
	setSF(result, data_size);

	//OF
	{
		uint32_t t_result = result;
		uint32_t t_dest = dest;
		uint32_t t_src = src;
		for(size_t i = 0; i < data_size - 1; i++){
			t_result = t_result >> 1;
			t_dest = t_dest >> 1;
			t_src = t_src >> 1;
		}
		if((t_dest % 2)!=(t_src % 2) && (t_result % 2)!=(t_dest % 2)){
			cpu.eflags.OF = 1;
		}
		else{
			cpu.eflags.OF = 0;
		}
	}

	//CF
	{
		cpu.eflags.CF = result > (dest & mask);
	}

	return result;

#endif
}

uint32_t alu_sbb(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_sbb(src, dest, data_size);
#else
	// printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	// fflush(stdout);
	// assert(0);
	// return 0;
		uint32_t mask = 0;
	for(size_t i = 0; i < data_size; i++){
		mask *= 2;
		mask += 1;
	}

	uint32_t result = (-src + dest - cpu.eflags.CF) & mask;

	setPF(result);
	setZF(result);
	setSF(result, data_size);

	//OF
	{
		uint32_t t_result = result;
		uint32_t t_dest = dest;
		uint32_t t_src = src;
		for(size_t i = 0; i < data_size - 1; i++){
			t_result = t_result >> 1;
			t_dest = t_dest >> 1;
			t_src = t_src >> 1;
		}
		if((t_dest % 2)!=(t_src % 2) && (t_result % 2)!=(t_dest % 2)){
			cpu.eflags.OF = 1;
		}
		else {
			cpu.eflags.OF = 0;
		}
		
		
	}

	//CF
	{
		if(cpu.eflags.CF == 0){
			cpu.eflags.CF = result > (dest & mask);
		}
		else{
			cpu.eflags.CF = (result > (dest & mask)) || result == (dest & mask);
		}
	}

	return result;

#endif
}

uint64_t alu_mul(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_mul(src, dest, data_size);
#else
	// printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	// fflush(stdout);
	// assert(0);
	// return 0;
	// printf("src = %u dest = %u data_size = %u\n", src, dest, data_size);
	// printf("ref = %llu\n", __ref_alu_mul(src, dest, data_size));
	uint32_t mask = 0;
	for(size_t i = 0; i < data_size; i++){
		mask *= 2;
		mask += 1;
	}

	uint64_t result = (uint64_t)(src & mask) * ((uint64_t)(dest & mask));
	uint32_t high_part = ((uint64_t)src & (uint64_t)mask) * ((uint64_t)dest & (uint64_t)mask) >> data_size;
	if(high_part != 0){
		cpu.eflags.CF = 1;
		cpu.eflags.OF = 1;
	}
	else{
		cpu.eflags.CF = 0;
		cpu.eflags.OF = 0;
	}
	// printf("result = %llu\n", result);
	return result;
#endif
}

int64_t alu_imul(int32_t src, int32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_imul(src, dest, data_size);
#else
	// printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	// fflush(stdout);
	// assert(0);
	// return 0;
	uint32_t mask = 0;
	for(size_t i = 0; i < data_size; i++){
		mask *= 2;
		mask += 1;
	}

	src = sign_ext(mask & (uint32_t)src,  32);
	dest = sign_ext(mask & (uint32_t)dest,  32);

	int64_t result = ((int64_t)sign_ext_64(src, data_size) * ((int64_t)sign_ext_64(dest, data_size)));
	uint32_t high_part = ((int64_t)src & (int64_t)mask) * ((int64_t)dest & (int64_t)mask) >> data_size;
	if(high_part != 0){
		cpu.eflags.CF = 1;//this is not implemented correctly
		cpu.eflags.OF = 1;
	}
	else{
		cpu.eflags.CF = 0;
		cpu.eflags.OF = 0;
	}
	return result;
#endif
}

// need to implement alu_mod before testing
uint32_t alu_div(uint64_t src, uint64_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_div(src, dest, data_size);
#else
	// printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	// fflush(stdout);
	// assert(0);
	// return 0;
	return dest / src;
#endif
}

// need to implement alu_imod before testing
int32_t alu_idiv(int64_t src, int64_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_idiv(src, dest, data_size);
#else
	// printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	// fflush(stdout);
	// assert(0);
	// return 0;
	return dest / src;//OF and CF not implemented
#endif
}

uint32_t alu_mod(uint64_t src, uint64_t dest)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_mod(src, dest);
#else
	// printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	// fflush(stdout);
	// assert(0);
	// return 0;
	return dest % src;
#endif
}

int32_t alu_imod(int64_t src, int64_t dest)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_imod(src, dest);
#else
	// printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	// fflush(stdout);
	// assert(0);
	// return 0;
	return dest % src;//OF and CF not implemented
#endif
}

uint32_t alu_and(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_and(src, dest, data_size);
#else
	// printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	// fflush(stdout);
	// assert(0);
	// return 0;
	uint32_t result = src & dest;
	uint32_t mask = 0;
	for(size_t i = 0; i < data_size; i++){
		mask *= 2;
		mask += 1;
	}
	result = result & mask;

	cpu.eflags.CF = 0;
	cpu.eflags.OF = 0;
	setPF(result);
	setZF(result);
	setSF(result, data_size);

	return result;
#endif
}

uint32_t alu_xor(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_xor(src, dest, data_size);
#else
	// printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	// fflush(stdout);
	// assert(0);
	// return 0;
	uint32_t result = src ^ dest;
	uint32_t mask = 0;
	for(size_t i = 0; i < data_size; i++){
		mask *= 2;
		mask += 1;
	}
	result = result & mask;

	cpu.eflags.CF = 0;
	cpu.eflags.OF = 0;
	setPF(result);
	setZF(result);
	setSF(result, data_size);

	return result;
#endif
}

uint32_t alu_or(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_or(src, dest, data_size);
#else
	uint32_t result = src | dest;
	uint32_t mask = 0;
	for(size_t i = 0; i < data_size; i++){
		mask *= 2;
		mask += 1;
	}
	result = result & mask;

	cpu.eflags.CF = 0;
	cpu.eflags.OF = 0;
	setPF(result);
	setZF(result);
	setSF(result, data_size);

	return result;
#endif
}

uint32_t alu_shl(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_shl(src, dest, data_size);
#else
	// printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	// fflush(stdout);
	// assert(0);
	// return 0;
	uint32_t mask = 0;
	for(size_t i = 0; i < data_size; i++){
		mask *= 2;
		mask += 1;
	}

	uint32_t high_bit_mask = 1;
	for(size_t i = 0; i < data_size - 1; i++){
		high_bit_mask *= 2;
	}

	uint32_t result = dest;
	for(size_t i = 0; i < src; i++){//如果这里使用size_t会出问题吗？
		cpu.eflags.CF = (result & high_bit_mask) != 0;
		result = (result << 1) & mask;
	}

	// cpu.eflags.OF = 1;
	cpu.eflags.OF = ((high_bit_mask & result)  != 0) ^ cpu.eflags.CF;
	setPF(result);
	setZF(result);
	setSF(result, data_size);
	return result;
#endif
}

uint32_t alu_shr(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_shr(src, dest, data_size);
#else
	// printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	// fflush(stdout);
	// assert(0);
	// return 0;
	// printf("src = %u dest = %u data_size = %u\n", src, dest, data_size);
	src = src % 33;
	uint32_t mask = 0;
	for(size_t i = 0; i < data_size; i++){
		mask *= 2;
		mask += 1;
	}

	uint32_t low_bit_mask = 1;
	uint32_t high_bit_mask = 1;
	for(size_t i = 0; i < data_size - 1; i++){
		high_bit_mask *= 2;
	}

	uint32_t result = dest;
	result = result & mask;
	for(size_t i = 0; i < (size_t)src; i++){
		cpu.eflags.CF = (result & low_bit_mask) != 0;
		result = (result >> 1) & mask;
	}

	cpu.eflags.OF = (high_bit_mask & dest) != 0;//this is not tested
	setPF(result);
	setZF(result);
	setSF(result, data_size);
	// printf("result = %u\n", result);
	// printf("ref = %u\n", __ref_alu_shr(src, dest, data_size));
	return result;
#endif
}

uint32_t alu_sar(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_sar(src, dest, data_size);
#else
	// printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	// fflush(stdout);
	// assert(0);
	// return 0;
	uint32_t low_bit_mask = 1;
	uint32_t high_bit_mask = 1;
	for(size_t i = 0; i < data_size - 1; i++){
		high_bit_mask *= 2;
	}

	uint32_t high_bit = (dest & high_bit_mask) != 0;

	uint32_t mask = 0;
	for(size_t i = 0; i < data_size; i++){
		mask *= 2;
		mask += 1;
	}

	bool count_one = false;
	if(src == 1){
		count_one = true;
	}

	uint32_t result = dest;
	result = result & mask;
	for(size_t i = 0; i < (size_t)src; i++){
		cpu.eflags.CF = (result & low_bit_mask) != 0;
		result = (result >> 1) & mask;
		if(high_bit){
			result = result | high_bit_mask;
		}
		if(count_one){
			cpu.eflags.OF = 0;
		}
	}

	setPF(result);
	setZF(result);
	setSF(result, data_size);

	return result;


#endif
}

uint32_t alu_sal(uint32_t src, uint32_t dest, size_t data_size)
{
#ifdef NEMU_REF_ALU
	return __ref_alu_sal(src, dest, data_size);
#else
	// printf("\e[0;31mPlease implement me at alu.c\e[0m\n");
	// fflush(stdout);
	// assert(0);
	// return 0;
	return alu_shl(src, dest, data_size);
#endif
}
