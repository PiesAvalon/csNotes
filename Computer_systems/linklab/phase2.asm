
phase2.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <NkhCoXTjUf>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	48 83 ec 60          	sub    $0x60,%rsp
   8:	89 7d ac             	mov    %edi,-0x54(%rbp)
   b:	48 b8 39 48 6f 09 73 	movabs $0x42624f73096f4839,%rax
  12:	4f 62 42 
  15:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
  19:	48 b8 76 4e 53 62 4f 	movabs $0x64324d4f62534e76,%rax
  20:	4d 32 64 
  23:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
  27:	48 b8 56 78 51 4f 63 	movabs $0x393131634f517856,%rax
  2e:	31 31 39 
  31:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
  35:	48 b8 7a 46 4e 30 4d 	movabs $0x336a704d304e467a,%rax
  3c:	70 6a 33 
  3f:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
  43:	48 b8 6d 51 42 6c 55 	movabs $0x694c75556c42516d,%rax
  4a:	75 4c 69 
  4d:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  51:	48 b8 71 70 4c 57 48 	movabs $0x32557648574c7071,%rax
  58:	76 55 32 
  5b:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
  5f:	48 b8 66 50 7a 57 33 	movabs $0x57344233577a5066,%rax
  66:	42 34 57 
  69:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  6d:	48 b8 58 79 64 32 7a 	movabs $0x20487a32647958,%rax
  74:	48 20 00 
  77:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  7b:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  7f:	48 89 c7             	mov    %rax,%rdi
  82:	e8 00 00 00 00       	call   87 <NkhCoXTjUf+0x87>
  87:	89 45 fc             	mov    %eax,-0x4(%rbp)
  8a:	83 7d ac 00          	cmpl   $0x0,-0x54(%rbp)
  8e:	78 14                	js     a4 <NkhCoXTjUf+0xa4>
  90:	8b 45 ac             	mov    -0x54(%rbp),%eax
  93:	3b 45 fc             	cmp    -0x4(%rbp),%eax
  96:	7d 0c                	jge    a4 <NkhCoXTjUf+0xa4>
  98:	8b 45 ac             	mov    -0x54(%rbp),%eax
  9b:	48 98                	cltq
  9d:	0f b6 44 05 b0       	movzbl -0x50(%rbp,%rax,1),%eax
  a2:	eb 05                	jmp    a9 <NkhCoXTjUf+0xa9>
  a4:	b8 00 00 00 00       	mov    $0x0,%eax
  a9:	c9                   	leave
  aa:	c3                   	ret

00000000000000ab <gcnZjhbF>:
  ab:	55                   	push   %rbp
  ac:	48 89 e5             	mov    %rsp,%rbp
  af:	48 83 ec 10          	sub    $0x10,%rsp
  b3:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  b7:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  bb:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  bf:	be 00 00 00 00       	mov    $0x0,%esi
  c4:	48 89 c7             	mov    %rax,%rdi
  c7:	e8 00 00 00 00       	call   cc <gcnZjhbF+0x21>
  cc:	85 c0                	test   %eax,%eax
  ce:	74 02                	je     d2 <gcnZjhbF+0x27>
  d0:	eb 0c                	jmp    de <gcnZjhbF+0x33>
  d2:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  d6:	48 89 c7             	mov    %rax,%rdi
  d9:	e8 00 00 00 00       	call   de <gcnZjhbF+0x33>
  de:	c9                   	leave
  df:	c3                   	ret

00000000000000e0 <do_phase>:
  e0:	55                   	push   %rbp
  e1:	48 89 e5             	mov    %rsp,%rbp
  e4:	48 83 ec 60          	sub    $0x60,%rsp
  e8:	48 b8 31 32 32 30 30 	movabs $0x31373030323231,%rax
  ef:	37 31 00 
  f2:	48 89 45 da          	mov    %rax,-0x26(%rbp)
  f6:	66 c7 45 d8 32 34    	movw   $0x3432,-0x28(%rbp)
  fc:	48 b8 4d 4f 78 4d 75 	movabs $0x594d754d784f4d,%rax
 103:	4d 59 00 
 106:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
 10a:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
 10e:	48 8d 75 d8          	lea    -0x28(%rbp),%rsi
 112:	e8 94 ff ff ff       	call   ab <gcnZjhbF>
 117:	90                   	nop
 118:	90                   	nop
 119:	90                   	nop
 11a:	90                   	nop
 11b:	90                   	nop
 11c:	90                   	nop
 11d:	90                   	nop
 11e:	90                   	nop
 11f:	90                   	nop
 120:	90                   	nop
 121:	90                   	nop
 122:	90                   	nop
 123:	90                   	nop
 124:	c9                   	leave
 125:	c3                   	ret
