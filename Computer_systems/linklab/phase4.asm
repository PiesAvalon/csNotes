
phase4.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <eUkqicYTYz>:
   0:	55                   	push   %rbp
   1:	48 89 e5             	mov    %rsp,%rbp
   4:	90                   	nop
   5:	90                   	nop
   6:	90                   	nop
   7:	90                   	nop
   8:	90                   	nop
   9:	90                   	nop
   a:	90                   	nop
   b:	90                   	nop
   c:	90                   	nop
   d:	90                   	nop
   e:	90                   	nop
   f:	90                   	nop
  10:	90                   	nop
  11:	90                   	nop
  12:	90                   	nop
  13:	90                   	nop
  14:	90                   	nop
  15:	90                   	nop
  16:	90                   	nop
  17:	90                   	nop
  18:	90                   	nop
  19:	90                   	nop
  1a:	90                   	nop
  1b:	90                   	nop
  1c:	90                   	nop
  1d:	90                   	nop
  1e:	90                   	nop
  1f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  24:	5d                   	pop    %rbp
  25:	c3                   	ret

0000000000000026 <do_phase>:
  26:	55                   	push   %rbp
  27:	48 89 e5             	mov    %rsp,%rbp
  2a:	48 83 ec 30          	sub    $0x30,%rsp
  2e:	48 b8 42 53 57 58 55 	movabs $0x414a465558575342,%rax
  35:	46 4a 41 
  38:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  3c:	66 c7 45 e8 56 00    	movw   $0x56,-0x18(%rbp)
  42:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  49:	e9 e1 00 00 00       	jmp    12f <do_phase+0x109>
  
  4e:	8b 45 f8             	mov    -0x8(%rbp),%eax
  51:	48 98                	cltq
  53:	0f b6 44 05 e0       	movzbl -0x20(%rbp,%rax,1),%eax
  58:	88 45 ff             	mov    %al,-0x1(%rbp)
  5b:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  5f:	83 e8 41             	sub    $0x41,%eax
  62:	83 f8 19             	cmp    $0x19,%eax
  65:	0f 87 b3 00 00 00    	ja     11e <do_phase+0xf8>
  6b:	89 c0                	mov    %eax,%eax
  6d:	48 8b 04 c5 00 00 00 	mov    0x0(,%rax,8),%rax       # rodata + 0x8
  74:	00 
  75:	ff e0                	jmp    *%rax
  77:	c6 45 ff 35          	movb   $0x35,-0x1(%rbp)
  7b:	e9 9e 00 00 00       	jmp    11e <do_phase+0xf8>
  80:	c6 45 ff 6c          	movb   $0x6c,-0x1(%rbp)
  84:	e9 95 00 00 00       	jmp    11e <do_phase+0xf8>
  89:	c6 45 ff 54          	movb   $0x54,-0x1(%rbp)
  8d:	e9 8c 00 00 00       	jmp    11e <do_phase+0xf8>
  92:	c6 45 ff 3e          	movb   $0x3e,-0x1(%rbp)
  96:	e9 83 00 00 00       	jmp    11e <do_phase+0xf8>
  9b:	c6 45 ff 5e          	movb   $0x5e,-0x1(%rbp)
  9f:	eb 7d                	jmp    11e <do_phase+0xf8>
  a1:	c6 45 ff 50          	movb   $0x50,-0x1(%rbp)
  a5:	eb 77                	jmp    11e <do_phase+0xf8>
  a7:	c6 45 ff 31          	movb   $0x31,-0x1(%rbp)
  ab:	eb 71                	jmp    11e <do_phase+0xf8>
  ad:	c6 45 ff 37          	movb   $0x37,-0x1(%rbp)
  b1:	eb 6b                	jmp    11e <do_phase+0xf8>
  b3:	c6 45 ff 56          	movb   $0x56,-0x1(%rbp)
  b7:	eb 65                	jmp    11e <do_phase+0xf8>
  b9:	c6 45 ff 43          	movb   $0x43,-0x1(%rbp)
  bd:	eb 5f                	jmp    11e <do_phase+0xf8>
  bf:	c6 45 ff 33          	movb   $0x33,-0x1(%rbp)
  c3:	eb 59                	jmp    11e <do_phase+0xf8>
  c5:	c6 45 ff 34          	movb   $0x34,-0x1(%rbp)
  c9:	eb 53                	jmp    11e <do_phase+0xf8>
  cb:	c6 45 ff 38          	movb   $0x38,-0x1(%rbp)
  cf:	eb 4d                	jmp    11e <do_phase+0xf8>
  d1:	c6 45 ff 6f          	movb   $0x6f,-0x1(%rbp)
  d5:	eb 47                	jmp    11e <do_phase+0xf8>
  d7:	c6 45 ff 67          	movb   $0x67,-0x1(%rbp)
  db:	eb 41                	jmp    11e <do_phase+0xf8>
  dd:	c6 45 ff 32          	movb   $0x32,-0x1(%rbp)
  e1:	eb 3b                	jmp    11e <do_phase+0xf8>
  e3:	c6 45 ff 4b          	movb   $0x4b,-0x1(%rbp)
  e7:	eb 35                	jmp    11e <do_phase+0xf8>
  e9:	c6 45 ff 36          	movb   $0x36,-0x1(%rbp)
  ed:	eb 2f                	jmp    11e <do_phase+0xf8>
  ef:	c6 45 ff 4c          	movb   $0x4c,-0x1(%rbp)
  f3:	eb 29                	jmp    11e <do_phase+0xf8>
  f5:	c6 45 ff 63          	movb   $0x63,-0x1(%rbp)
  f9:	eb 23                	jmp    11e <do_phase+0xf8>
  fb:	c6 45 ff 50          	movb   $0x50,-0x1(%rbp)
  ff:	eb 1d                	jmp    11e <do_phase+0xf8>
 101:	c6 45 ff 7d          	movb   $0x7d,-0x1(%rbp)
 105:	eb 17                	jmp    11e <do_phase+0xf8>
 107:	c6 45 ff 39          	movb   $0x39,-0x1(%rbp)
 10b:	eb 11                	jmp    11e <do_phase+0xf8>
 10d:	c6 45 ff 74          	movb   $0x74,-0x1(%rbp)
 111:	eb 0b                	jmp    11e <do_phase+0xf8>
 113:	c6 45 ff 54          	movb   $0x54,-0x1(%rbp)
 117:	eb 05                	jmp    11e <do_phase+0xf8>
 119:	c6 45 ff 30          	movb   $0x30,-0x1(%rbp)
 11d:	90                   	nop
 11e:	8b 45 f8             	mov    -0x8(%rbp),%eax
 121:	48 98                	cltq
 123:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
 127:	88 54 05 d0          	mov    %dl,-0x30(%rbp,%rax,1)
 12b:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
 12f:	8b 45 f8             	mov    -0x8(%rbp),%eax
 132:	83 f8 08             	cmp    $0x8,%eax
 135:	0f 86 13 ff ff ff    	jbe    4e <do_phase+0x28>

 13b:	8b 45 f8             	mov    -0x8(%rbp),%eax
 13e:	48 98                	cltq
 140:	c6 44 05 d0 00       	movb   $0x0,-0x30(%rbp,%rax,1)
 145:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
 149:	48 89 c7             	mov    %rax,%rdi
 14c:	e8 00 00 00 00       	call   151 <do_phase+0x12b>    # puts
 151:	c9                   	leave
 152:	c3                   	ret

phase4.o:     file format elf64-x86-64

Contents of section .data:
 0000 ca5db32b 8907252b 80a3ac23 d34ef007  .].+..%+...#.N..
 0010 26a1f2a8 c6331a4b 858c65c8 49b7ad99  &....3.K..e.I...
 0020 b0ed0000 00000000 00000000 00000000  ................
 0030 00000000 00000000                    ........        
Contents of section .rodata:
 0000 34000000 00000000 00000000 00000000  4............... # 08: dd  10: 89
 0010 00000000 00000000 00000000 00000000  ................ # 18: f5  20:101
 0020 00000000 00000000 00000000 00000000  ................ # 28: a7  30: cb
 0030 00000000 00000000 00000000 00000000  ................ # 38: d1  40:107 
 0040 00000000 00000000 00000000 00000000  ................ # 48: fb  50: a1
 0050 00000000 00000000 00000000 00000000  ................ # 58: 80  60: 77
 0060 00000000 00000000 00000000 00000000  ................ # 68: 92  70: b9 
 0070 00000000 00000000 00000000 00000000  ................ # 78: 80: 
 0080 00000000 00000000 00000000 00000000  ................ # 88: 90: 
 0090 00000000 00000000 00000000 00000000  ................ # 98: a0: 
 00a0 00000000 00000000 00000000 00000000  ................ # a8: b0: 
 00b0 00000000 00000000 00000000 00000000  ................ # b8: c0: 
 00c0 00000000 00000000 00000000 00000000  ................ # c8: d0: 
 00d0 00000000 00000000                    ........         # d8: d8: 
