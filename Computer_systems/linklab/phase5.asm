
phase5.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <NkhCoXTjUf>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	89 7d ec             	mov    %edi,-0x14(%rbp)
   7:	c7 45 f0 74 73 48 51 	movl   $0x51487374,-0x10(%rbp)
   e:	66 c7 45 f4 51 00    	movw   $0x51,-0xc(%rbp)
  14:	c7 45 fc 06 00 00 00 	movl   $0x6,-0x4(%rbp)
  1b:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
  1f:	78 14                	js     35 <NkhCoXTjUf+0x35>
  21:	8b 45 ec             	mov    -0x14(%rbp),%eax
  24:	3b 45 fc             	cmp    -0x4(%rbp),%eax
  27:	7d 0c                	jge    35 <NkhCoXTjUf+0x35>
  29:	8b 45 ec             	mov    -0x14(%rbp),%eax
  2c:	48 98                	cltq
  2e:	0f b6 44 05 f0       	movzbl -0x10(%rbp,%rax,1),%eax
  33:	eb 05                	jmp    3a <NkhCoXTjUf+0x3a>
  35:	b8 00 00 00 00       	mov    $0x0,%eax
  3a:	5d                   	pop    %rbp
  3b:	c3                   	ret

000000000000003c <transform_code>:
  3c:	55                   	push   %rbp
  3d:	48 89 e5             	mov    %rsp,%rbp
  40:	89 7d fc             	mov    %edi,-0x4(%rbp)  # code
  43:	89 75 f8             	mov    %esi,-0x8(%rbp)  # mode
  46:	8b 45 f8             	mov    -0x8(%rbp),%eax
  49:	48 98                	cltq
  4b:	8b 04 85 00 00 00 00 	mov    0x0(,%rax,4),%eax   # jmSZik CODETRAN_ARRAY
  52:	83 e0 07             	and    $0x7,%eax
  55:	83 f8 07             	cmp    $0x7,%eax
  58:	0f 87 83 00 00 00    	ja     e1 <transform_code+0xa5>
  5e:	89 c0                	mov    %eax,%eax
  60:	48 8b 04 c5 00 00 00 	mov    0x0(,%rax,8),%rax   # .rodata + 58
  67:	00 
  68:	ff e0                	jmp    *%rax
  6a:	f7 55 fc             	notl   -0x4(%rbp)
  6d:	eb 76                	jmp    e5 <transform_code+0xa9>
  6f:	8b 45 f8             	mov    -0x8(%rbp),%eax
  72:	48 98                	cltq
  74:	8b 04 85 00 00 00 00 	mov    0x0(,%rax,4),%eax   # jmSZik
  7b:	83 e0 03             	and    $0x3,%eax
  7e:	89 c1                	mov    %eax,%ecx
  80:	d3 7d fc             	sarl   %cl,-0x4(%rbp)
  83:	eb 60                	jmp    e5 <transform_code+0xa9>
  85:	8b 45 f8             	mov    -0x8(%rbp),%eax
  88:	48 98                	cltq
  8a:	8b 04 85 00 00 00 00 	mov    0x0(,%rax,4),%eax
  91:	f7 d0                	not    %eax
  93:	21 45 fc             	and    %eax,-0x4(%rbp)
  96:	eb 4d                	jmp    e5 <transform_code+0xa9>
  98:	8b 45 f8             	mov    -0x8(%rbp),%eax
  9b:	48 98                	cltq
  9d:	8b 04 85 00 00 00 00 	mov    0x0(,%rax,4),%eax   # jmSZik
  a4:	c1 e0 08             	shl    $0x8,%eax
  a7:	09 45 fc             	or     %eax,-0x4(%rbp)
  aa:	eb 39                	jmp    e5 <transform_code+0xa9>
  ac:	8b 45 f8             	mov    -0x8(%rbp),%eax
  af:	48 98                	cltq
  b1:	8b 04 85 00 00 00 00 	mov    0x0(,%rax,4),%eax   # jmSZik
  b8:	31 45 fc             	xor    %eax,-0x4(%rbp)
  bb:	eb 28                	jmp    e5 <transform_code+0xa9>
  bd:	8b 45 f8             	mov    -0x8(%rbp),%eax
  c0:	48 98                	cltq
  c2:	8b 04 85 00 00 00 00 	mov    0x0(,%rax,4),%eax   # jmSZik
  c9:	f7 d0                	not    %eax
  cb:	09 45 fc             	or     %eax,-0x4(%rbp)
  ce:	eb 15                	jmp    e5 <transform_code+0xa9>
  d0:	8b 45 f8             	mov    -0x8(%rbp),%eax
  d3:	48 98                	cltq
  d5:	8b 04 85 00 00 00 00 	mov    0x0(,%rax,4),%eax   # jmSZik *2
  dc:	01 45 fc             	add    %eax,-0x4(%rbp)
  df:	eb 04                	jmp    e5 <transform_code+0xa9>
  e1:	f7 5d fc             	negl   -0x4(%rbp)
  e4:	90                   	nop
  e5:	8b 45 fc             	mov    -0x4(%rbp),%eax
  e8:	5d                   	pop    %rbp
  e9:	c3                   	ret

00000000000000ea <generate_code>:
  ea:	55                   	push   %rbp
  eb:	48 89 e5             	mov    %rsp,%rbp
  ee:	48 83 ec 18          	sub    $0x18,%rsp
  f2:	89 7d ec             	mov    %edi,-0x14(%rbp)
  f5:	8b 45 ec             	mov    -0x14(%rbp),%eax
  f8:	89 05 00 00 00 00    	mov    %eax,0x0(%rip)        # fe <generate_code+0x14>  uRgCMV - 4 CODE
  fe:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
 105:	eb 1c                	jmp    123 <generate_code+0x39>
 107:	8b 05 00 00 00 00    	mov    0x0(%rip),%eax        # 10d <generate_code+0x23>  CODE *3 
 10d:	8b 55 fc             	mov    -0x4(%rbp),%edx
 110:	89 d6                	mov    %edx,%esi
 112:	89 c7                	mov    %eax,%edi
 114:	e8 00 00 00 00       	call   119 <generate_code+0x2f> # transform_code *4
 119:	89 05 00 00 00 00    	mov    %eax,0x0(%rip)        # 11f <generate_code+0x35>  uRgCMV - 4 CODE
 11f:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
 123:	8b 45 fc             	mov    -0x4(%rbp),%eax
 126:	83 f8 0d             	cmp    $0xd,%eax
 129:	76 dc                	jbe    107 <generate_code+0x1d>
 12b:	c9                   	leave
 12c:	c3                   	ret

000000000000012d <encode_1>:
 12d:	55                   	push   %rbp
 12e:	48 89 e5             	mov    %rsp,%rbp
 131:	48 83 ec 20          	sub    $0x20,%rsp
 135:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
 139:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 13d:	48 89 c7             	mov    %rax,%rdi
 140:	e8 00 00 00 00       	call   145 <encode_1+0x18>   # strlen - 4
 145:	89 45 f8             	mov    %eax,-0x8(%rbp)
 148:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
 14f:	eb 72                	jmp    1c3 <encode_1+0x96>
 151:	8b 45 fc             	mov    -0x4(%rbp),%eax
 154:	48 63 d0             	movslq %eax,%rdx
 157:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 15b:	48 01 c2             	add    %rax,%rdx
 15e:	8b 45 fc             	mov    -0x4(%rbp),%eax
 161:	48 63 c8             	movslq %eax,%rcx
 164:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 168:	48 01 c8             	add    %rcx,%rax
 16b:	0f b6 00             	movzbl (%rax),%eax
 16e:	0f be c0             	movsbl %al,%eax
 171:	48 98                	cltq
 173:	0f b6 88 00 00 00 00 	movzbl 0x0(%rax),%ecx        # XrvScM 
 17a:	8b 05 00 00 00 00    	mov    0x0(%rip),%eax        # 180 <encode_1+0x53>
 180:	31 c8                	xor    %ecx,%eax
 182:	83 e0 7f             	and    $0x7f,%eax
 185:	88 02                	mov    %al,(%rdx)
 187:	8b 45 fc             	mov    -0x4(%rbp),%eax
 18a:	48 63 d0             	movslq %eax,%rdx
 18d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 191:	48 01 d0             	add    %rdx,%rax
 194:	0f b6 00             	movzbl (%rax),%eax
 197:	3c 1f                	cmp    $0x1f,%al
 199:	7e 14                	jle    1af <encode_1+0x82>
 19b:	8b 45 fc             	mov    -0x4(%rbp),%eax
 19e:	48 63 d0             	movslq %eax,%rdx
 1a1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 1a5:	48 01 d0             	add    %rdx,%rax
 1a8:	0f b6 00             	movzbl (%rax),%eax
 1ab:	3c 7f                	cmp    $0x7f,%al
 1ad:	75 10                	jne    1bf <encode_1+0x92>
 1af:	8b 45 fc             	mov    -0x4(%rbp),%eax
 1b2:	48 63 d0             	movslq %eax,%rdx
 1b5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 1b9:	48 01 d0             	add    %rdx,%rax
 1bc:	c6 00 3f             	movb   $0x3f,(%rax)
 1bf:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
 1c3:	8b 45 fc             	mov    -0x4(%rbp),%eax
 1c6:	3b 45 f8             	cmp    -0x8(%rbp),%eax
 1c9:	7c 86                	jl     151 <encode_1+0x24>
 1cb:	8b 45 f8             	mov    -0x8(%rbp),%eax
 1ce:	c9                   	leave
 1cf:	c3                   	ret

00000000000001d0 <encode_2>:
 1d0:	55                   	push   %rbp
 1d1:	48 89 e5             	mov    %rsp,%rbp
 1d4:	48 83 ec 20          	sub    $0x20,%rsp
 1d8:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
 1dc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 1e0:	48 89 c7             	mov    %rax,%rdi
 1e3:	e8 00 00 00 00       	call   1e8 <encode_2+0x18>   # strlen - 4
 1e8:	89 45 f8             	mov    %eax,-0x8(%rbp)
 1eb:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
 1f2:	eb 72                	jmp    266 <encode_2+0x96>
 1f4:	8b 45 fc             	mov    -0x4(%rbp),%eax
 1f7:	48 63 d0             	movslq %eax,%rdx
 1fa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 1fe:	48 01 c2             	add    %rax,%rdx
 201:	8b 45 fc             	mov    -0x4(%rbp),%eax
 204:	48 63 c8             	movslq %eax,%rcx
 207:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 20b:	48 01 c8             	add    %rcx,%rax
 20e:	0f b6 00             	movzbl (%rax),%eax
 211:	0f be c0             	movsbl %al,%eax
 214:	48 98                	cltq
 216:	0f b6 88 00 00 00 00 	movzbl 0x0(%rax),%ecx        # XrvScM
 21d:	8b 05 00 00 00 00    	mov    0x0(%rip),%eax        # 223 <encode_2+0x53>  uRgCMV - 4  CODE
 223:	01 c8                	add    %ecx,%eax
 225:	83 e0 7f             	and    $0x7f,%eax
 228:	88 02                	mov    %al,(%rdx)
 22a:	8b 45 fc             	mov    -0x4(%rbp),%eax
 22d:	48 63 d0             	movslq %eax,%rdx
 230:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 234:	48 01 d0             	add    %rdx,%rax
 237:	0f b6 00             	movzbl (%rax),%eax
 23a:	3c 1f                	cmp    $0x1f,%al
 23c:	7e 14                	jle    252 <encode_2+0x82>
 23e:	8b 45 fc             	mov    -0x4(%rbp),%eax
 241:	48 63 d0             	movslq %eax,%rdx
 244:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 248:	48 01 d0             	add    %rdx,%rax
 24b:	0f b6 00             	movzbl (%rax),%eax
 24e:	3c 7f                	cmp    $0x7f,%al
 250:	75 10                	jne    262 <encode_2+0x92>
 252:	8b 45 fc             	mov    -0x4(%rbp),%eax
 255:	48 63 d0             	movslq %eax,%rdx
 258:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
 25c:	48 01 d0             	add    %rdx,%rax
 25f:	c6 00 2a             	movb   $0x2a,(%rax)
 262:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
 266:	8b 45 fc             	mov    -0x4(%rbp),%eax
 269:	3b 45 f8             	cmp    -0x8(%rbp),%eax
 26c:	7c 86                	jl     1f4 <encode_2+0x24>
 26e:	8b 45 f8             	mov    -0x8(%rbp),%eax
 271:	c9                   	leave
 272:	c3                   	ret

0000000000000273 <do_phase>:
 273:	55                   	push   %rbp
 274:	48 89 e5             	mov    %rsp,%rbp
 277:	bf a2 00 00 00       	mov    $0xa2,%edi
 27c:	e8 00 00 00 00       	call   281 <do_phase+0xe>
 281:	48 8b 05 00 00 00 00 	mov    0x0(%rip),%rax        # 288 <do_phase+0x15>   encoder - 4
 288:	bf 00 00 00 00       	mov    $0x0,%edi
 28d:	ff d0                	call   *%rax
 28f:	bf 00 00 00 00       	mov    $0x0,%edi
 294:	e8 00 00 00 00       	call   299 <do_phase+0x26>
 299:	5d                   	pop    %rbp
 29a:	c3                   	ret
