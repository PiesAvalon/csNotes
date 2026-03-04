#include "cpu/instr.h"
#include "memory/mmu/segment.h"

make_instr_func(jmp_near)
{
        OPERAND rel;
        rel.type = OPR_IMM;
        rel.sreg = SREG_CS;
        rel.data_size = data_size;
        rel.addr = eip + 1;

        operand_read(&rel);

        int offset = sign_ext(rel.val, data_size);
        // thank Ting Xu from CS'17 for finding this bug
        print_asm_1("jmp", "", 1 + data_size / 8, &rel);

        cpu.eip += offset;

        return 1 + data_size / 8;
}

make_instr_func(jmp_short)
{
        OPERAND rel;
        rel.type = OPR_IMM;
        rel.sreg = SREG_CS;
        rel.data_size = 8;
        rel.addr = eip + 1;

        operand_read(&rel);

        int offset = sign_ext(rel.val, 8);
        print_asm_1("jmp", "", 2, &rel);

        cpu.eip += offset;

        return 2;
}

make_instr_func(jmp_near_indirect)
{
        OPERAND rm;
        rm.data_size = data_size;
        modrm_rm(eip + 1, &rm);
        operand_read(&rm);
        if(data_size == 16){//i don't quite understand
                cpu.eip = rm.val & 0x0000ffff;
        }
        else{
                cpu.eip = rm.val;
        }
        return 0;
}

make_instr_func(ljmp)
{
        uint32_t offset = instr_fetch(eip + 1, 4);
        uint16_t selector = instr_fetch(eip + 5, 2);
        cpu.cs.val = selector;
        load_sreg(SREG_CS);
        cpu.eip = offset;
        return 0;
}