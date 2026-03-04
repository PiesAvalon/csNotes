
phase5:     file format elf64-x86-64


Disassembly of section .init:

0000000000400650 <_init>:
  400650:	48 83 ec 08          	sub    $0x8,%rsp
  400654:	48 8b 05 9d 19 20 00 	mov    0x20199d(%rip),%rax        # 601ff8 <__gmon_start__>
  40065b:	48 85 c0             	test   %rax,%rax
  40065e:	74 05                	je     400665 <_init+0x15>
  400660:	e8 ab 00 00 00       	call   400710 <__gmon_start__@plt>
  400665:	48 83 c4 08          	add    $0x8,%rsp
  400669:	c3                   	ret

Disassembly of section .plt:

0000000000400670 <.plt>:
  400670:	ff 35 92 19 20 00    	push   0x201992(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400676:	ff 25 94 19 20 00    	jmp    *0x201994(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40067c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400680 <puts@plt>:
  400680:	ff 25 92 19 20 00    	jmp    *0x201992(%rip)        # 602018 <puts@GLIBC_2.2.5>
  400686:	68 00 00 00 00       	push   $0x0
  40068b:	e9 e0 ff ff ff       	jmp    400670 <.plt>

0000000000400690 <ferror@plt>:
  400690:	ff 25 8a 19 20 00    	jmp    *0x20198a(%rip)        # 602020 <ferror@GLIBC_2.2.5>
  400696:	68 01 00 00 00       	push   $0x1
  40069b:	e9 d0 ff ff ff       	jmp    400670 <.plt>

00000000004006a0 <fread@plt>:
  4006a0:	ff 25 82 19 20 00    	jmp    *0x201982(%rip)        # 602028 <fread@GLIBC_2.2.5>
  4006a6:	68 02 00 00 00       	push   $0x2
  4006ab:	e9 c0 ff ff ff       	jmp    400670 <.plt>

00000000004006b0 <getpid@plt>:
  4006b0:	ff 25 7a 19 20 00    	jmp    *0x20197a(%rip)        # 602030 <getpid@GLIBC_2.2.5>
  4006b6:	68 03 00 00 00       	push   $0x3
  4006bb:	e9 b0 ff ff ff       	jmp    400670 <.plt>

00000000004006c0 <fclose@plt>:
  4006c0:	ff 25 72 19 20 00    	jmp    *0x201972(%rip)        # 602038 <fclose@GLIBC_2.2.5>
  4006c6:	68 04 00 00 00       	push   $0x4
  4006cb:	e9 a0 ff ff ff       	jmp    400670 <.plt>

00000000004006d0 <printf@plt>:
  4006d0:	ff 25 6a 19 20 00    	jmp    *0x20196a(%rip)        # 602040 <printf@GLIBC_2.2.5>
  4006d6:	68 05 00 00 00       	push   $0x5
  4006db:	e9 90 ff ff ff       	jmp    400670 <.plt>

00000000004006e0 <memset@plt>:
  4006e0:	ff 25 62 19 20 00    	jmp    *0x201962(%rip)        # 602048 <memset@GLIBC_2.2.5>
  4006e6:	68 06 00 00 00       	push   $0x6
  4006eb:	e9 80 ff ff ff       	jmp    400670 <.plt>

00000000004006f0 <__libc_start_main@plt>:
  4006f0:	ff 25 5a 19 20 00    	jmp    *0x20195a(%rip)        # 602050 <__libc_start_main@GLIBC_2.2.5>
  4006f6:	68 07 00 00 00       	push   $0x7
  4006fb:	e9 70 ff ff ff       	jmp    400670 <.plt>

0000000000400700 <srand@plt>:
  400700:	ff 25 52 19 20 00    	jmp    *0x201952(%rip)        # 602058 <srand@GLIBC_2.2.5>
  400706:	68 08 00 00 00       	push   $0x8
  40070b:	e9 60 ff ff ff       	jmp    400670 <.plt>

0000000000400710 <__gmon_start__@plt>:
  400710:	ff 25 4a 19 20 00    	jmp    *0x20194a(%rip)        # 602060 <__gmon_start__>
  400716:	68 09 00 00 00       	push   $0x9
  40071b:	e9 50 ff ff ff       	jmp    400670 <.plt>

0000000000400720 <fopen@plt>:
  400720:	ff 25 42 19 20 00    	jmp    *0x201942(%rip)        # 602068 <fopen@GLIBC_2.2.5>
  400726:	68 0a 00 00 00       	push   $0xa
  40072b:	e9 40 ff ff ff       	jmp    400670 <.plt>

0000000000400730 <exit@plt>:
  400730:	ff 25 3a 19 20 00    	jmp    *0x20193a(%rip)        # 602070 <exit@GLIBC_2.2.5>
  400736:	68 0b 00 00 00       	push   $0xb
  40073b:	e9 30 ff ff ff       	jmp    400670 <.plt>

0000000000400740 <rand@plt>:
  400740:	ff 25 32 19 20 00    	jmp    *0x201932(%rip)        # 602078 <rand@GLIBC_2.2.5>
  400746:	68 0c 00 00 00       	push   $0xc
  40074b:	e9 20 ff ff ff       	jmp    400670 <.plt>

Disassembly of section .text:

0000000000400750 <_start>:
  400750:	31 ed                	xor    %ebp,%ebp
  400752:	49 89 d1             	mov    %rdx,%r9
  400755:	5e                   	pop    %rsi
  400756:	48 89 e2             	mov    %rsp,%rdx
  400759:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40075d:	50                   	push   %rax
  40075e:	54                   	push   %rsp
  40075f:	49 c7 c0 70 0d 40 00 	mov    $0x400d70,%r8
  400766:	48 c7 c1 00 0d 40 00 	mov    $0x400d00,%rcx
  40076d:	48 c7 c7 b3 0b 40 00 	mov    $0x400bb3,%rdi
  400774:	e8 77 ff ff ff       	call   4006f0 <__libc_start_main@plt>
  400779:	f4                   	hlt
  40077a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400780 <deregister_tm_clones>:
  400780:	b8 c7 21 60 00       	mov    $0x6021c7,%eax
  400785:	55                   	push   %rbp
  400786:	48 2d c0 21 60 00    	sub    $0x6021c0,%rax
  40078c:	48 83 f8 0e          	cmp    $0xe,%rax
  400790:	48 89 e5             	mov    %rsp,%rbp
  400793:	77 02                	ja     400797 <deregister_tm_clones+0x17>
  400795:	5d                   	pop    %rbp
  400796:	c3                   	ret
  400797:	b8 00 00 00 00       	mov    $0x0,%eax
  40079c:	48 85 c0             	test   %rax,%rax
  40079f:	74 f4                	je     400795 <deregister_tm_clones+0x15>
  4007a1:	5d                   	pop    %rbp
  4007a2:	bf c0 21 60 00       	mov    $0x6021c0,%edi
  4007a7:	ff e0                	jmp    *%rax
  4007a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004007b0 <register_tm_clones>:
  4007b0:	b8 c0 21 60 00       	mov    $0x6021c0,%eax
  4007b5:	55                   	push   %rbp
  4007b6:	48 2d c0 21 60 00    	sub    $0x6021c0,%rax
  4007bc:	48 c1 f8 03          	sar    $0x3,%rax
  4007c0:	48 89 e5             	mov    %rsp,%rbp
  4007c3:	48 89 c2             	mov    %rax,%rdx
  4007c6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4007ca:	48 01 d0             	add    %rdx,%rax
  4007cd:	48 d1 f8             	sar    $1,%rax
  4007d0:	75 02                	jne    4007d4 <register_tm_clones+0x24>
  4007d2:	5d                   	pop    %rbp
  4007d3:	c3                   	ret
  4007d4:	ba 00 00 00 00       	mov    $0x0,%edx
  4007d9:	48 85 d2             	test   %rdx,%rdx
  4007dc:	74 f4                	je     4007d2 <register_tm_clones+0x22>
  4007de:	5d                   	pop    %rbp
  4007df:	48 89 c6             	mov    %rax,%rsi
  4007e2:	bf c0 21 60 00       	mov    $0x6021c0,%edi
  4007e7:	ff e2                	jmp    *%rdx
  4007e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004007f0 <__do_global_dtors_aux>:
  4007f0:	80 3d d1 19 20 00 00 	cmpb   $0x0,0x2019d1(%rip)        # 6021c8 <completed.6355>
  4007f7:	75 11                	jne    40080a <__do_global_dtors_aux+0x1a>
  4007f9:	55                   	push   %rbp
  4007fa:	48 89 e5             	mov    %rsp,%rbp
  4007fd:	e8 7e ff ff ff       	call   400780 <deregister_tm_clones>
  400802:	5d                   	pop    %rbp
  400803:	c6 05 be 19 20 00 01 	movb   $0x1,0x2019be(%rip)        # 6021c8 <completed.6355>
  40080a:	f3 c3                	repz ret
  40080c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400810 <frame_dummy>:
  400810:	48 83 3d 08 16 20 00 	cmpq   $0x0,0x201608(%rip)        # 601e20 <__JCR_END__>
  400817:	00 
  400818:	74 1e                	je     400838 <frame_dummy+0x28>
  40081a:	b8 00 00 00 00       	mov    $0x0,%eax
  40081f:	48 85 c0             	test   %rax,%rax
  400822:	74 14                	je     400838 <frame_dummy+0x28>
  400824:	55                   	push   %rbp
  400825:	bf 20 1e 60 00       	mov    $0x601e20,%edi
  40082a:	48 89 e5             	mov    %rsp,%rbp
  40082d:	ff d0                	call   *%rax
  40082f:	5d                   	pop    %rbp
  400830:	e9 7b ff ff ff       	jmp    4007b0 <register_tm_clones>
  400835:	0f 1f 00             	nopl   (%rax)
  400838:	e9 73 ff ff ff       	jmp    4007b0 <register_tm_clones>

000000000040083d <_r_func_>:
  40083d:	55                   	push   %rbp
  40083e:	48 89 e5             	mov    %rsp,%rbp
  400841:	90                   	nop
  400842:	90                   	nop
  400843:	90                   	nop
  400844:	90                   	nop
  400845:	90                   	nop
  400846:	90                   	nop
  400847:	90                   	nop
  400848:	90                   	nop
  400849:	90                   	nop
  40084a:	90                   	nop
  40084b:	90                   	nop
  40084c:	90                   	nop
  40084d:	90                   	nop
  40084e:	90                   	nop
  40084f:	90                   	nop
  400850:	90                   	nop
  400851:	90                   	nop
  400852:	90                   	nop
  400853:	5d                   	pop    %rbp
  400854:	c3                   	ret

0000000000400855 <_opfunc1_>:
  400855:	55                   	push   %rbp
  400856:	48 89 e5             	mov    %rsp,%rbp
  400859:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40085d:	89 f0                	mov    %esi,%eax
  40085f:	88 45 f4             	mov    %al,-0xc(%rbp)
  400862:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400866:	0f b6 55 f4          	movzbl -0xc(%rbp),%edx
  40086a:	88 10                	mov    %dl,(%rax)
  40086c:	5d                   	pop    %rbp
  40086d:	c3                   	ret

000000000040086e <_opfunc2_>:
  40086e:	55                   	push   %rbp
  40086f:	48 89 e5             	mov    %rsp,%rbp
  400872:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400876:	89 f1                	mov    %esi,%ecx
  400878:	89 d0                	mov    %edx,%eax
  40087a:	88 4d f4             	mov    %cl,-0xc(%rbp)
  40087d:	88 45 f0             	mov    %al,-0x10(%rbp)
  400880:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400884:	0f b6 55 f4          	movzbl -0xc(%rbp),%edx
  400888:	88 10                	mov    %dl,(%rax)
  40088a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40088e:	48 8d 50 01          	lea    0x1(%rax),%rdx
  400892:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
  400896:	88 02                	mov    %al,(%rdx)
  400898:	5d                   	pop    %rbp
  400899:	c3                   	ret

000000000040089a <_opfunc3_>:
  40089a:	55                   	push   %rbp
  40089b:	48 89 e5             	mov    %rsp,%rbp
  40089e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4008a2:	89 c8                	mov    %ecx,%eax
  4008a4:	44 89 c1             	mov    %r8d,%ecx
  4008a7:	40 88 75 f4          	mov    %sil,-0xc(%rbp)
  4008ab:	88 55 f0             	mov    %dl,-0x10(%rbp)
  4008ae:	88 45 ec             	mov    %al,-0x14(%rbp)
  4008b1:	88 4d e8             	mov    %cl,-0x18(%rbp)
  4008b4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4008b8:	0f b6 55 f4          	movzbl -0xc(%rbp),%edx
  4008bc:	88 10                	mov    %dl,(%rax)
  4008be:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4008c2:	48 8d 50 01          	lea    0x1(%rax),%rdx
  4008c6:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
  4008ca:	88 02                	mov    %al,(%rdx)
  4008cc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4008d0:	48 8d 50 02          	lea    0x2(%rax),%rdx
  4008d4:	0f b6 45 ec          	movzbl -0x14(%rbp),%eax
  4008d8:	88 02                	mov    %al,(%rdx)
  4008da:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4008de:	48 8d 50 03          	lea    0x3(%rax),%rdx
  4008e2:	0f b6 45 e8          	movzbl -0x18(%rbp),%eax
  4008e6:	88 02                	mov    %al,(%rdx)
  4008e8:	5d                   	pop    %rbp
  4008e9:	c3                   	ret

00000000004008ea <do_phase>:
  4008ea:	55                   	push   %rbp
  4008eb:	48 89 e5             	mov    %rsp,%rbp
  4008ee:	48 83 ec 20          	sub    $0x20,%rsp
  4008f2:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4008f6:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  4008fa:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4008fe:	48 89 d6             	mov    %rdx,%rsi
  400901:	48 89 c7             	mov    %rax,%rdi
  400904:	e8 87 00 00 00       	call   400990 <digit2hex>
  400909:	c9                   	leave
  40090a:	c3                   	ret

000000000040090b <phase>:
  40090b:	55                   	push   %rbp
  40090c:	48 89 e5             	mov    %rsp,%rbp
  40090f:	41 54                	push   %r12
  400911:	53                   	push   %rbx
  400912:	48 83 ec 10          	sub    $0x10,%rsp
  400916:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40091a:	49 bc 90 41 58 59 5a 	movabs $0xc35f5e5a59584190,%r12
  400921:	5e 5f c3 
  400924:	48 bb 58 58 c3 48 83 	movabs $0xc310c48348c35858,%rbx
  40092b:	c4 10 c3 
  40092e:	e8 0d fe ff ff       	call   400740 <rand@plt>
  400933:	48 98                	cltq
  400935:	25 ff 03 00 00       	and    $0x3ff,%eax
  40093a:	48 05 00 02 00 00    	add    $0x200,%rax
  400940:	48 8d 50 0f          	lea    0xf(%rax),%rdx
  400944:	b8 10 00 00 00       	mov    $0x10,%eax
  400949:	48 83 e8 01          	sub    $0x1,%rax
  40094d:	48 01 d0             	add    %rdx,%rax
  400950:	b9 10 00 00 00       	mov    $0x10,%ecx
  400955:	ba 00 00 00 00       	mov    $0x0,%edx
  40095a:	48 f7 f1             	div    %rcx
  40095d:	48 6b c0 10          	imul   $0x10,%rax,%rax
  400961:	48 29 c4             	sub    %rax,%rsp
  400964:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400968:	48 89 c7             	mov    %rax,%rdi
  40096b:	e8 7a ff ff ff       	call   4008ea <do_phase>
  400970:	bf a8 20 60 00       	mov    $0x6020a8,%edi
  400975:	e8 06 fd ff ff       	call   400680 <puts@plt>
  40097a:	4c 89 e0             	mov    %r12,%rax
  40097d:	48 21 d8             	and    %rbx,%rax
  400980:	48 85 c0             	test   %rax,%rax
  400983:	0f 94 c0             	sete   %al
  400986:	0f b6 c0             	movzbl %al,%eax
  400989:	89 c7                	mov    %eax,%edi
  40098b:	e8 a0 fd ff ff       	call   400730 <exit@plt>

0000000000400990 <digit2hex>:
  400990:	55                   	push   %rbp
  400991:	48 89 e5             	mov    %rsp,%rbp
  400994:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400998:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  40099c:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  4009a3:	00 
  4009a4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  4009ab:	e9 a5 00 00 00       	jmp    400a55 <digit2hex+0xc5>
  4009b0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4009b4:	0f b6 00             	movzbl (%rax),%eax
  4009b7:	3c 23                	cmp    $0x23,%al
  4009b9:	75 12                	jne    4009cd <digit2hex+0x3d>
  4009bb:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  4009bf:	0f 94 c0             	sete   %al
  4009c2:	0f b6 c0             	movzbl %al,%eax
  4009c5:	89 45 f4             	mov    %eax,-0xc(%rbp)
  4009c8:	e9 83 00 00 00       	jmp    400a50 <digit2hex+0xc0>
  4009cd:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  4009d1:	74 02                	je     4009d5 <digit2hex+0x45>
  4009d3:	eb 7b                	jmp    400a50 <digit2hex+0xc0>
  4009d5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4009d9:	0f b6 00             	movzbl (%rax),%eax
  4009dc:	0f be c0             	movsbl %al,%eax
  4009df:	83 e0 7f             	and    $0x7f,%eax
  4009e2:	48 98                	cltq
  4009e4:	0f b6 80 a0 0d 40 00 	movzbl 0x400da0(%rax),%eax
  4009eb:	3c ff                	cmp    $0xff,%al
  4009ed:	75 02                	jne    4009f1 <digit2hex+0x61>
  4009ef:	eb 5f                	jmp    400a50 <digit2hex+0xc0>
  4009f1:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  4009f6:	74 50                	je     400a48 <digit2hex+0xb8>
  4009f8:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4009fc:	0f b6 00             	movzbl (%rax),%eax
  4009ff:	0f be c0             	movsbl %al,%eax
  400a02:	83 e0 7f             	and    $0x7f,%eax
  400a05:	48 98                	cltq
  400a07:	0f b6 80 a0 0d 40 00 	movzbl 0x400da0(%rax),%eax
  400a0e:	0f b6 c0             	movzbl %al,%eax
  400a11:	c1 e0 04             	shl    $0x4,%eax
  400a14:	89 c2                	mov    %eax,%edx
  400a16:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400a1a:	0f b6 00             	movzbl (%rax),%eax
  400a1d:	0f be c0             	movsbl %al,%eax
  400a20:	83 e0 7f             	and    $0x7f,%eax
  400a23:	48 98                	cltq
  400a25:	0f b6 80 a0 0d 40 00 	movzbl 0x400da0(%rax),%eax
  400a2c:	83 e0 0f             	and    $0xf,%eax
  400a2f:	09 d0                	or     %edx,%eax
  400a31:	89 c2                	mov    %eax,%edx
  400a33:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400a37:	88 10                	mov    %dl,(%rax)
  400a39:	48 83 45 e0 01       	addq   $0x1,-0x20(%rbp)
  400a3e:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  400a45:	00 
  400a46:	eb 08                	jmp    400a50 <digit2hex+0xc0>
  400a48:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400a4c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400a50:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
  400a55:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400a59:	0f b6 00             	movzbl (%rax),%eax
  400a5c:	84 c0                	test   %al,%al
  400a5e:	0f 85 4c ff ff ff    	jne    4009b0 <digit2hex+0x20>
  400a64:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400a68:	5d                   	pop    %rbp
  400a69:	c3                   	ret

0000000000400a6a <getrid>:
  400a6a:	55                   	push   %rbp
  400a6b:	48 89 e5             	mov    %rsp,%rbp
  400a6e:	8b 05 44 17 20 00    	mov    0x201744(%rip),%eax        # 6021b8 <run_id.3622>
  400a74:	85 c0                	test   %eax,%eax
  400a76:	79 17                	jns    400a8f <getrid+0x25>
  400a78:	e8 33 fc ff ff       	call   4006b0 <getpid@plt>
  400a7d:	89 c7                	mov    %eax,%edi
  400a7f:	e8 7c fc ff ff       	call   400700 <srand@plt>
  400a84:	e8 b7 fc ff ff       	call   400740 <rand@plt>
  400a89:	89 05 29 17 20 00    	mov    %eax,0x201729(%rip)        # 6021b8 <run_id.3622>
  400a8f:	8b 05 23 17 20 00    	mov    0x201723(%rip),%eax        # 6021b8 <run_id.3622>
  400a95:	5d                   	pop    %rbp
  400a96:	c3                   	ret

0000000000400a97 <fillregion>:
  400a97:	55                   	push   %rbp
  400a98:	48 89 e5             	mov    %rsp,%rbp
  400a9b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400a9f:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  400aa2:	89 55 e0             	mov    %edx,-0x20(%rbp)
  400aa5:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400aac:	eb 1d                	jmp    400acb <fillregion+0x34>
  400aae:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400ab1:	48 98                	cltq
  400ab3:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400aba:	00 
  400abb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400abf:	48 01 c2             	add    %rax,%rdx
  400ac2:	8b 45 e0             	mov    -0x20(%rbp),%eax
  400ac5:	89 02                	mov    %eax,(%rdx)
  400ac7:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  400acb:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400ace:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
  400ad1:	7c db                	jl     400aae <fillregion+0x17>
  400ad3:	5d                   	pop    %rbp
  400ad4:	c3                   	ret

0000000000400ad5 <checkregion>:
  400ad5:	55                   	push   %rbp
  400ad6:	48 89 e5             	mov    %rsp,%rbp
  400ad9:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400add:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  400ae0:	89 55 e0             	mov    %edx,-0x20(%rbp)
  400ae3:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400aea:	eb 26                	jmp    400b12 <checkregion+0x3d>
  400aec:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400aef:	48 98                	cltq
  400af1:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400af8:	00 
  400af9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400afd:	48 01 d0             	add    %rdx,%rax
  400b00:	8b 00                	mov    (%rax),%eax
  400b02:	3b 45 e0             	cmp    -0x20(%rbp),%eax
  400b05:	74 07                	je     400b0e <checkregion+0x39>
  400b07:	b8 00 00 00 00       	mov    $0x0,%eax
  400b0c:	eb 11                	jmp    400b1f <checkregion+0x4a>
  400b0e:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  400b12:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400b15:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
  400b18:	7c d2                	jl     400aec <checkregion+0x17>
  400b1a:	b8 01 00 00 00       	mov    $0x1,%eax
  400b1f:	5d                   	pop    %rbp
  400b20:	c3                   	ret

0000000000400b21 <exec_phase>:
  400b21:	55                   	push   %rbp
  400b22:	48 89 e5             	mov    %rsp,%rbp
  400b25:	48 83 ec 50          	sub    $0x50,%rsp
  400b29:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  400b2d:	48 c7 05 c8 36 20 00 	movq   $0x40,0x2036c8(%rip)        # 604200 <alloca_size.3649>
  400b34:	40 00 00 00 
  400b38:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
  400b3c:	48 89 05 c5 36 20 00 	mov    %rax,0x2036c5(%rip)        # 604208 <alloca_region.3648>
  400b43:	b8 00 00 00 00       	mov    $0x0,%eax
  400b48:	e8 1d ff ff ff       	call   400a6a <getrid>
  400b4d:	89 c2                	mov    %eax,%edx
  400b4f:	48 8b 05 aa 36 20 00 	mov    0x2036aa(%rip),%rax        # 604200 <alloca_size.3649>
  400b56:	48 c1 e8 02          	shr    $0x2,%rax
  400b5a:	89 c1                	mov    %eax,%ecx
  400b5c:	48 8b 05 a5 36 20 00 	mov    0x2036a5(%rip),%rax        # 604208 <alloca_region.3648>
  400b63:	89 ce                	mov    %ecx,%esi
  400b65:	48 89 c7             	mov    %rax,%rdi
  400b68:	e8 2a ff ff ff       	call   400a97 <fillregion>
  400b6d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  400b71:	48 89 c7             	mov    %rax,%rdi
  400b74:	e8 92 fd ff ff       	call   40090b <phase>
  400b79:	b8 00 00 00 00       	mov    $0x0,%eax
  400b7e:	e8 e7 fe ff ff       	call   400a6a <getrid>
  400b83:	89 c2                	mov    %eax,%edx
  400b85:	48 8b 05 74 36 20 00 	mov    0x203674(%rip),%rax        # 604200 <alloca_size.3649>
  400b8c:	48 c1 e8 02          	shr    $0x2,%rax
  400b90:	89 c1                	mov    %eax,%ecx
  400b92:	48 8b 05 6f 36 20 00 	mov    0x20366f(%rip),%rax        # 604208 <alloca_region.3648>
  400b99:	89 ce                	mov    %ecx,%esi
  400b9b:	48 89 c7             	mov    %rax,%rdi
  400b9e:	e8 32 ff ff ff       	call   400ad5 <checkregion>
  400ba3:	85 c0                	test   %eax,%eax
  400ba5:	75 0a                	jne    400bb1 <exec_phase+0x90>
  400ba7:	bf 20 0e 40 00       	mov    $0x400e20,%edi
  400bac:	e8 cf fa ff ff       	call   400680 <puts@plt>
  400bb1:	c9                   	leave
  400bb2:	c3                   	ret

0000000000400bb3 <main>:
  400bb3:	55                   	push   %rbp
  400bb4:	48 89 e5             	mov    %rsp,%rbp
  400bb7:	48 83 ec 20          	sub    $0x20,%rsp
  400bbb:	89 7d ec             	mov    %edi,-0x14(%rbp)
  400bbe:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400bc2:	b8 00 00 00 00       	mov    $0x0,%eax
  400bc7:	e8 9e fe ff ff       	call   400a6a <getrid>
  400bcc:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  400bd3:	00 
  400bd4:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
  400bd8:	75 0d                	jne    400be7 <main+0x34>
  400bda:	48 8b 05 df 15 20 00 	mov    0x2015df(%rip),%rax        # 6021c0 <stdin@GLIBC_2.2.5>
  400be1:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400be5:	eb 73                	jmp    400c5a <main+0xa7>
  400be7:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
  400beb:	75 4a                	jne    400c37 <main+0x84>
  400bed:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400bf1:	48 83 c0 08          	add    $0x8,%rax
  400bf5:	48 8b 00             	mov    (%rax),%rax
  400bf8:	be 42 0e 40 00       	mov    $0x400e42,%esi
  400bfd:	48 89 c7             	mov    %rax,%rdi
  400c00:	e8 1b fb ff ff       	call   400720 <fopen@plt>
  400c05:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400c09:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  400c0e:	75 4a                	jne    400c5a <main+0xa7>
  400c10:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400c14:	48 83 c0 08          	add    $0x8,%rax
  400c18:	48 8b 00             	mov    (%rax),%rax
  400c1b:	48 89 c6             	mov    %rax,%rsi
  400c1e:	bf 48 0e 40 00       	mov    $0x400e48,%edi
  400c23:	b8 00 00 00 00       	mov    $0x0,%eax
  400c28:	e8 a3 fa ff ff       	call   4006d0 <printf@plt>
  400c2d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  400c32:	e9 bb 00 00 00       	jmp    400cf2 <main+0x13f>
  400c37:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400c3b:	48 8b 00             	mov    (%rax),%rax
  400c3e:	48 89 c6             	mov    %rax,%rsi
  400c41:	bf 6c 0e 40 00       	mov    $0x400e6c,%edi
  400c46:	b8 00 00 00 00       	mov    $0x0,%eax
  400c4b:	e8 80 fa ff ff       	call   4006d0 <printf@plt>
  400c50:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  400c55:	e9 98 00 00 00       	jmp    400cf2 <main+0x13f>
  400c5a:	bf 88 0e 40 00       	mov    $0x400e88,%edi
  400c5f:	e8 1c fa ff ff       	call   400680 <puts@plt>
  400c64:	bf b8 0e 40 00       	mov    $0x400eb8,%edi
  400c69:	e8 12 fa ff ff       	call   400680 <puts@plt>
  400c6e:	ba 00 20 00 00       	mov    $0x2000,%edx
  400c73:	be 00 00 00 00       	mov    $0x0,%esi
  400c78:	bf 00 22 60 00       	mov    $0x602200,%edi
  400c7d:	e8 5e fa ff ff       	call   4006e0 <memset@plt>
  400c82:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400c86:	48 89 c1             	mov    %rax,%rcx
  400c89:	ba ff 1f 00 00       	mov    $0x1fff,%edx
  400c8e:	be 01 00 00 00       	mov    $0x1,%esi
  400c93:	bf 00 22 60 00       	mov    $0x602200,%edi
  400c98:	e8 03 fa ff ff       	call   4006a0 <fread@plt>
  400c9d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  400ca1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400ca5:	48 89 c7             	mov    %rax,%rdi
  400ca8:	e8 e3 f9 ff ff       	call   400690 <ferror@plt>
  400cad:	85 c0                	test   %eax,%eax
  400caf:	74 0c                	je     400cbd <main+0x10a>
  400cb1:	bf e0 0e 40 00       	mov    $0x400ee0,%edi
  400cb6:	e8 c5 f9 ff ff       	call   400680 <puts@plt>
  400cbb:	eb 17                	jmp    400cd4 <main+0x121>
  400cbd:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400cc1:	48 05 00 22 60 00    	add    $0x602200,%rax
  400cc7:	c6 00 00             	movb   $0x0,(%rax)
  400cca:	bf 00 22 60 00       	mov    $0x602200,%edi
  400ccf:	e8 4d fe ff ff       	call   400b21 <exec_phase>
  400cd4:	48 8b 05 e5 14 20 00 	mov    0x2014e5(%rip),%rax        # 6021c0 <stdin@GLIBC_2.2.5>
  400cdb:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
  400cdf:	74 0c                	je     400ced <main+0x13a>
  400ce1:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400ce5:	48 89 c7             	mov    %rax,%rdi
  400ce8:	e8 d3 f9 ff ff       	call   4006c0 <fclose@plt>
  400ced:	b8 00 00 00 00       	mov    $0x0,%eax
  400cf2:	c9                   	leave
  400cf3:	c3                   	ret
  400cf4:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  400cfb:	00 00 00 
  400cfe:	66 90                	xchg   %ax,%ax

0000000000400d00 <__libc_csu_init>:
  400d00:	41 57                	push   %r15
  400d02:	41 89 ff             	mov    %edi,%r15d
  400d05:	41 56                	push   %r14
  400d07:	49 89 f6             	mov    %rsi,%r14
  400d0a:	41 55                	push   %r13
  400d0c:	49 89 d5             	mov    %rdx,%r13
  400d0f:	41 54                	push   %r12
  400d11:	4c 8d 25 f8 10 20 00 	lea    0x2010f8(%rip),%r12        # 601e10 <__frame_dummy_init_array_entry>
  400d18:	55                   	push   %rbp
  400d19:	48 8d 2d f8 10 20 00 	lea    0x2010f8(%rip),%rbp        # 601e18 <__do_global_dtors_aux_fini_array_entry>
  400d20:	53                   	push   %rbx
  400d21:	4c 29 e5             	sub    %r12,%rbp
  400d24:	31 db                	xor    %ebx,%ebx
  400d26:	48 c1 fd 03          	sar    $0x3,%rbp
  400d2a:	48 83 ec 08          	sub    $0x8,%rsp
  400d2e:	e8 1d f9 ff ff       	call   400650 <_init>
  400d33:	48 85 ed             	test   %rbp,%rbp
  400d36:	74 1e                	je     400d56 <__libc_csu_init+0x56>
  400d38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400d3f:	00 
  400d40:	4c 89 ea             	mov    %r13,%rdx
  400d43:	4c 89 f6             	mov    %r14,%rsi
  400d46:	44 89 ff             	mov    %r15d,%edi
  400d49:	41 ff 14 dc          	call   *(%r12,%rbx,8)
  400d4d:	48 83 c3 01          	add    $0x1,%rbx
  400d51:	48 39 eb             	cmp    %rbp,%rbx
  400d54:	75 ea                	jne    400d40 <__libc_csu_init+0x40>
  400d56:	48 83 c4 08          	add    $0x8,%rsp
  400d5a:	5b                   	pop    %rbx
  400d5b:	5d                   	pop    %rbp
  400d5c:	41 5c                	pop    %r12
  400d5e:	41 5d                	pop    %r13
  400d60:	41 5e                	pop    %r14
  400d62:	41 5f                	pop    %r15
  400d64:	c3                   	ret
  400d65:	90                   	nop
  400d66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  400d6d:	00 00 00 

0000000000400d70 <__libc_csu_fini>:
  400d70:	f3 c3                	repz ret

Disassembly of section .fini:

0000000000400d74 <_fini>:
  400d74:	48 83 ec 08          	sub    $0x8,%rsp
  400d78:	48 83 c4 08          	add    $0x8,%rsp
  400d7c:	c3                   	ret
