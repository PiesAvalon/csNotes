subq $0x80, %rsp
movl $1, 0x0(%rsp)
movl $4, 0x4(%rsp)
movl $8, 0x8(%rsp)
movl $-1, 0xc(%rsp)
mov %rsp, %rdi
mov $0x4009d8, %rax
call *%rax
addq $0x80, %rsp
push $0x400AE4
ret
