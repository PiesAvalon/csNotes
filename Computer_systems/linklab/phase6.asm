
phase6.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <NkhCoXTjUf>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	89 7d dc             	mov    %edi,-0x24(%rbp)
   7:	48 b8 6c 62 72 61 4c 	movabs $0x58676d4c6172626c,%rax
   e:	6d 67 58 
  11:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  15:	48 b8 67 64 49 57 41 	movabs $0x4954474157496467,%rax
  1c:	47 54 49 
  1f:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  23:	48 b8 61 55 68 69 61 	movabs $0x4562466169685561,%rax
  2a:	46 62 45 
  2d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  31:	c6 45 f8 00          	movb   $0x0,-0x8(%rbp)
  35:	c7 45 fc 19 00 00 00 	movl   $0x19,-0x4(%rbp)
  3c:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
  40:	78 14                	js     56 <NkhCoXTjUf+0x56>
  42:	8b 45 dc             	mov    -0x24(%rbp),%eax
  45:	3b 45 fc             	cmp    -0x4(%rbp),%eax
  48:	7d 0c                	jge    56 <NkhCoXTjUf+0x56>
  4a:	8b 45 dc             	mov    -0x24(%rbp),%eax
  4d:	48 98                	cltq
  4f:	0f b6 44 05 e0       	movzbl -0x20(%rbp,%rax,1),%eax
  54:	eb 05                	jmp    5b <NkhCoXTjUf+0x5b>
  56:	b8 00 00 00 00       	mov    $0x0,%eax
  5b:	5d                   	pop    %rbp
  5c:	c3                   	ret

000000000000005d <transform_code>:
  5d:	55                   	push   %rbp
  5e:	48 89 e5             	mov    %rsp,%rbp
  61:	89 7d fc             	mov    %edi,-0x4(%rbp)
  64:	89 75 f8             	mov    %esi,-0x8(%rbp)
  67:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 6e <transform_code+0x11>
  6e:	8b 55 f8             	mov    -0x8(%rbp),%edx
  71:	48 63 d2             	movslq %edx,%rdx
  74:	8b 04 90             	mov    (%rax,%rdx,4),%eax
  77:	83 e0 07             	and    $0x7,%eax
  7a:	83 f8 07             	cmp    $0x7,%eax
  7d:	0f 87 b5 00 00 00    	ja     138 <transform_code+0xdb>
  83:	89 c0                	mov    %eax,%eax
  85:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  8c:	00 
  8d:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 94 <transform_code+0x37>
  94:	8b 04 02             	mov    (%rdx,%rax,1),%eax
  97:	48 63 d0             	movslq %eax,%rdx
  9a:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # a1 <transform_code+0x44>
  a1:	48 01 d0             	add    %rdx,%rax
  a4:	ff e0                	jmp    *%rax
  a6:	f7 55 fc             	notl   -0x4(%rbp)
  a9:	e9 8e 00 00 00       	jmp    13c <transform_code+0xdf>
  ae:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # b5 <transform_code+0x58>
  b5:	8b 55 f8             	mov    -0x8(%rbp),%edx
  b8:	48 63 d2             	movslq %edx,%rdx
  bb:	8b 04 90             	mov    (%rax,%rdx,4),%eax
  be:	83 e0 03             	and    $0x3,%eax
  c1:	89 c1                	mov    %eax,%ecx
  c3:	d3 7d fc             	sarl   %cl,-0x4(%rbp)
  c6:	eb 74                	jmp    13c <transform_code+0xdf>
  c8:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # cf <transform_code+0x72>
  cf:	8b 55 f8             	mov    -0x8(%rbp),%edx
  d2:	48 63 d2             	movslq %edx,%rdx
  d5:	8b 04 90             	mov    (%rax,%rdx,4),%eax
  d8:	f7 d0                	not    %eax
  da:	21 45 fc             	and    %eax,-0x4(%rbp)
  dd:	eb 5d                	jmp    13c <transform_code+0xdf>
  df:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # e6 <transform_code+0x89>
  e6:	8b 55 f8             	mov    -0x8(%rbp),%edx
  e9:	48 63 d2             	movslq %edx,%rdx
  ec:	8b 04 90             	mov    (%rax,%rdx,4),%eax
  ef:	c1 e0 08             	shl    $0x8,%eax
  f2:	09 45 fc             	or     %eax,-0x4(%rbp)
  f5:	eb 45                	jmp    13c <transform_code+0xdf>
  f7:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # fe <transform_code+0xa1>
  fe:	8b 55 f8             	mov    -0x8(%rbp),%edx
 101:	48 63 d2             	movslq %edx,%rdx
 104:	8b 04 90             	mov    (%rax,%rdx,4),%eax
 107:	31 45 fc             	xor    %eax,-0x4(%rbp)
 10a:	eb 30                	jmp    13c <transform_code+0xdf>
 10c:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 113 <transform_code+0xb6>
 113:	8b 55 f8             	mov    -0x8(%rbp),%edx
 116:	48 63 d2             	movslq %edx,%rdx
 119:	8b 04 90             	mov    (%rax,%rdx,4),%eax
 11c:	f7 d0                	not    %eax
 11e:	09 45 fc             	or     %eax,-0x4(%rbp)
 121:	eb 19                	jmp    13c <transform_code+0xdf>
 123:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 12a <transform_code+0xcd>
 12a:	8b 55 f8             	mov    -0x8(%rbp),%edx
 12d:	48 63 d2             	movslq %edx,%rdx
 130:	8b 04 90             	mov    (%rax,%rdx,4),%eax
 133:	01 45 fc             	add    %eax,-0x4(%rbp)
 136:	eb 04                	jmp    13c <transform_code+0xdf>
 138:	f7 5d fc             	negl   -0x4(%rbp)
 13b:	90                   	nop
 13c:	8b 45 fc             	mov    -0x4(%rbp),%eax
 13f:	5d                   	pop    %rbp
 140:	c3                   	ret

0000000000000141 <generate_code>:
 141:	55                   	push   %rbp
 142:	48 89 e5             	mov    %rsp,%rbp
 145:	48 83 ec 20          	sub    $0x20,%rsp
 149:	89 7d ec             	mov    %edi,-0x14(%rbp)
 14c:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 153 <generate_code+0x12>
 153:	8b 55 ec             	mov    -0x14(%rbp),%edx
 156:	89 10                	mov    %edx,(%rax)
 158:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
 15f:	eb 22                	jmp    183 <generate_code+0x42>
 161:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 168 <generate_code+0x27>
 168:	8b 00                	mov    (%rax),%eax
 16a:	8b 55 fc             	mov    -0x4(%rbp),%edx
 16d:	89 d6                	mov    %edx,%esi
 16f:	89 c7                	mov    %eax,%edi
 171:	e8 00 00 00 00       	call   176 <generate_code+0x35>
 176:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 17d <generate_code+0x3c>
 17d:	89 02                	mov    %eax,(%rdx)
 17f:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
 183:	8b 45 fc             	mov    -0x4(%rbp),%eax
 186:	83 f8 0d             	cmp    $0xd,%eax
 189:	76 d6                	jbe    161 <generate_code+0x20>
 18b:	c9                   	leave
 18c:	c3                   	ret

000000000000018d <encode_1>:
 18d:	55                   	push   %rbp
 18e:	48 89 e5             	mov    %rsp,%rbp
 191:	48 83 ec 20          	sub    $0x20,%rsp
 195:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
 199:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 19d:	48 89 c7             	mov    %rax,%rdi
 1a0:	e8 00 00 00 00       	call   1a5 <encode_1+0x18>
 1a5:	89 45 f8             	mov    %eax,-0x8(%rbp)
 1a8:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
 1af:	eb 7a                	jmp    22b <encode_1+0x9e>
 1b1:	8b 45 fc             	mov    -0x4(%rbp),%eax
 1b4:	48 63 d0             	movslq %eax,%rdx
 1b7:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 1bb:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
 1bf:	8b 45 fc             	mov    -0x4(%rbp),%eax
 1c2:	48 63 d0             	movslq %eax,%rdx
 1c5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 1c9:	48 01 d0             	add    %rdx,%rax
 1cc:	0f b6 00             	movzbl (%rax),%eax
 1cf:	0f be c0             	movsbl %al,%eax
 1d2:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 1d9 <encode_1+0x4c>
 1d9:	48 98                	cltq
 1db:	0f b6 14 02          	movzbl (%rdx,%rax,1),%edx
 1df:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 1e6 <encode_1+0x59>
 1e6:	8b 00                	mov    (%rax),%eax
 1e8:	31 d0                	xor    %edx,%eax
 1ea:	83 e0 7f             	and    $0x7f,%eax
 1ed:	88 01                	mov    %al,(%rcx)
 1ef:	8b 45 fc             	mov    -0x4(%rbp),%eax
 1f2:	48 63 d0             	movslq %eax,%rdx
 1f5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 1f9:	48 01 d0             	add    %rdx,%rax
 1fc:	0f b6 00             	movzbl (%rax),%eax
 1ff:	3c 1f                	cmp    $0x1f,%al
 201:	7e 14                	jle    217 <encode_1+0x8a>
 203:	8b 45 fc             	mov    -0x4(%rbp),%eax
 206:	48 63 d0             	movslq %eax,%rdx
 209:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 20d:	48 01 d0             	add    %rdx,%rax
 210:	0f b6 00             	movzbl (%rax),%eax
 213:	3c 7f                	cmp    $0x7f,%al
 215:	75 10                	jne    227 <encode_1+0x9a>
 217:	8b 45 fc             	mov    -0x4(%rbp),%eax
 21a:	48 63 d0             	movslq %eax,%rdx
 21d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 221:	48 01 d0             	add    %rdx,%rax
 224:	c6 00 3f             	movb   $0x3f,(%rax)
 227:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
 22b:	8b 45 fc             	mov    -0x4(%rbp),%eax
 22e:	3b 45 f8             	cmp    -0x8(%rbp),%eax
 231:	0f 8c 7a ff ff ff    	jl     1b1 <encode_1+0x24>
 237:	8b 45 f8             	mov    -0x8(%rbp),%eax
 23a:	c9                   	leave
 23b:	c3                   	ret

000000000000023c <encode_2>:
 23c:	55                   	push   %rbp
 23d:	48 89 e5             	mov    %rsp,%rbp
 240:	48 83 ec 20          	sub    $0x20,%rsp
 244:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
 248:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 24c:	48 89 c7             	mov    %rax,%rdi
 24f:	e8 00 00 00 00       	call   254 <encode_2+0x18>
 254:	89 45 f8             	mov    %eax,-0x8(%rbp)
 257:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
 25e:	eb 7a                	jmp    2da <encode_2+0x9e>
 260:	8b 45 fc             	mov    -0x4(%rbp),%eax
 263:	48 63 d0             	movslq %eax,%rdx
 266:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 26a:	48 8d 0c 02          	lea    (%rdx,%rax,1),%rcx
 26e:	8b 45 fc             	mov    -0x4(%rbp),%eax
 271:	48 63 d0             	movslq %eax,%rdx
 274:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 278:	48 01 d0             	add    %rdx,%rax
 27b:	0f b6 00             	movzbl (%rax),%eax
 27e:	0f be c0             	movsbl %al,%eax
 281:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 288 <encode_2+0x4c>
 288:	48 98                	cltq
 28a:	0f b6 14 02          	movzbl (%rdx,%rax,1),%edx
 28e:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 295 <encode_2+0x59>
 295:	8b 00                	mov    (%rax),%eax
 297:	01 d0                	add    %edx,%eax
 299:	83 e0 7f             	and    $0x7f,%eax
 29c:	88 01                	mov    %al,(%rcx)
 29e:	8b 45 fc             	mov    -0x4(%rbp),%eax
 2a1:	48 63 d0             	movslq %eax,%rdx
 2a4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 2a8:	48 01 d0             	add    %rdx,%rax
 2ab:	0f b6 00             	movzbl (%rax),%eax
 2ae:	3c 1f                	cmp    $0x1f,%al
 2b0:	7e 14                	jle    2c6 <encode_2+0x8a>
 2b2:	8b 45 fc             	mov    -0x4(%rbp),%eax
 2b5:	48 63 d0             	movslq %eax,%rdx
 2b8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 2bc:	48 01 d0             	add    %rdx,%rax
 2bf:	0f b6 00             	movzbl (%rax),%eax
 2c2:	3c 7f                	cmp    $0x7f,%al
 2c4:	75 10                	jne    2d6 <encode_2+0x9a>
 2c6:	8b 45 fc             	mov    -0x4(%rbp),%eax
 2c9:	48 63 d0             	movslq %eax,%rdx
 2cc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 2d0:	48 01 d0             	add    %rdx,%rax
 2d3:	c6 00 2a             	movb   $0x2a,(%rax)
 2d6:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
 2da:	8b 45 fc             	mov    -0x4(%rbp),%eax
 2dd:	3b 45 f8             	cmp    -0x8(%rbp),%eax
 2e0:	0f 8c 7a ff ff ff    	jl     260 <encode_2+0x24>
 2e6:	8b 45 f8             	mov    -0x8(%rbp),%eax
 2e9:	c9                   	leave
 2ea:	c3                   	ret

00000000000002eb <do_phase>:
 2eb:	55                   	push   %rbp
 2ec:	48 89 e5             	mov    %rsp,%rbp
 2ef:	bf d7 00 00 00       	mov    $0xd7,%edi
 2f4:	e8 00 00 00 00       	call   2f9 <do_phase+0xe>
 2f9:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 300 <do_phase+0x15>
 300:	48 8b 00             	mov    (%rax),%rax
 303:	48 8b 15 00 00 00 00 	mov    0x0(%rip),%rdx        # 30a <do_phase+0x1f>
 30a:	48 89 d7             	mov    %rdx,%rdi
 30d:	ff d0                	call   *%rax
 30f:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 316 <do_phase+0x2b>
 316:	48 89 c7             	mov    %rax,%rdi
 319:	e8 00 00 00 00       	call   31e <do_phase+0x33>
 31e:	5d                   	pop    %rbp
 31f:	c3                   	ret
