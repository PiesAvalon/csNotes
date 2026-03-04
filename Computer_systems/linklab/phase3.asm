
phase3.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <do_phase>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 10          	sub    $0x10,%rsp
   8:	48 b8 75 6e 66 77 6a 	movabs $0x6762796a77666e75,%rax
   f:	79 62 67 
  12:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  16:	66 c7 45 f8 6c 00    	movw   $0x6c,-0x8(%rbp)
  1c:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  23:	eb 24                	jmp    49 <do_phase+0x49>

  25:	8b 45 fc             	mov    -0x4(%rbp),%eax
  28:	48 98                	cltq
  2a:	0f b6 44 05 f0       	movzbl -0x10(%rbp,%rax,1),%eax
  2f:	0f b6 c0             	movzbl %al,%eax
  32:	48 98                	cltq
  34:	0f b6 80 00 00 00 00 	movzbl 0x0(%rax),%eax        # KjoVnrgYYu
  3b:	0f be c0             	movsbl %al,%eax
  3e:	89 c7                	mov    %eax,%edi
  40:	e8 00 00 00 00       	call   45 <do_phase+0x45>    # putchar
  45:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  49:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4c:	83 f8 08             	cmp    $0x8,%eax
  4f:	76 d4                	jbe    25 <do_phase+0x25>
  51:	bf 0a 00 00 00       	mov    $0xa,%edi
  56:	e8 00 00 00 00       	call   5b <do_phase+0x5b>    # putchar
  5b:	c9                   	leave
  5c:	c3                   	ret
