#include "cpu/instr.h"
/*
Put the implementations of `test' instructions here.
*/
static void instr_execute_2op() 
{
	operand_read(&opr_src);
	operand_read(&opr_dest);
    opr_dest.val = sign_ext(opr_dest.val, opr_dest.data_size);
    opr_src.val = sign_ext(opr_src.val, opr_src.data_size);
    alu_and(opr_dest.val, opr_src.val, data_size);
    return;
}

make_instr_impl_2op(test, rm, r, b)

make_instr_impl_2op(test, r, rm, v)
make_instr_impl_2op(test, r, rm, b)
make_instr_impl_2op(test, i, rm, b)
make_instr_impl_2op(test, i, rm, v)
make_instr_impl_2op(test, i, a, b)
make_instr_impl_2op(test, i, a, v)