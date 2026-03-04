
./phase2:     file format elf64-x86-64


Disassembly of section .init:

0000000000400598 <_init>:
  400598:	48 83 ec 08          	sub    $0x8,%rsp
  40059c:	48 8b 05 55 0a 20 00 	mov    0x200a55(%rip),%rax        # 600ff8 <__gmon_start__>
  4005a3:	48 85 c0             	test   %rax,%rax
  4005a6:	74 05                	je     4005ad <_init+0x15>
  4005a8:	e8 73 00 00 00       	call   400620 <__gmon_start__@plt>
  4005ad:	48 83 c4 08          	add    $0x8,%rsp
  4005b1:	c3                   	ret

Disassembly of section .plt:

00000000004005c0 <.plt>:
  4005c0:	ff 35 42 0a 20 00    	push   0x200a42(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4005c6:	ff 25 44 0a 20 00    	jmp    *0x200a44(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4005cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005d0 <puts@plt>:
  4005d0:	ff 25 42 0a 20 00    	jmp    *0x200a42(%rip)        # 601018 <puts@GLIBC_2.2.5>
  4005d6:	68 00 00 00 00       	push   $0x0
  4005db:	e9 e0 ff ff ff       	jmp    4005c0 <.plt>

00000000004005e0 <printf@plt>:
  4005e0:	ff 25 3a 0a 20 00    	jmp    *0x200a3a(%rip)        # 601020 <printf@GLIBC_2.2.5>
  4005e6:	68 01 00 00 00       	push   $0x1
  4005eb:	e9 d0 ff ff ff       	jmp    4005c0 <.plt>

00000000004005f0 <memset@plt>:
  4005f0:	ff 25 32 0a 20 00    	jmp    *0x200a32(%rip)        # 601028 <memset@GLIBC_2.2.5>
  4005f6:	68 02 00 00 00       	push   $0x2
  4005fb:	e9 c0 ff ff ff       	jmp    4005c0 <.plt>

0000000000400600 <__libc_start_main@plt>:
  400600:	ff 25 2a 0a 20 00    	jmp    *0x200a2a(%rip)        # 601030 <__libc_start_main@GLIBC_2.2.5>
  400606:	68 03 00 00 00       	push   $0x3
  40060b:	e9 b0 ff ff ff       	jmp    4005c0 <.plt>

0000000000400610 <fgets@plt>:
  400610:	ff 25 22 0a 20 00    	jmp    *0x200a22(%rip)        # 601038 <fgets@GLIBC_2.2.5>
  400616:	68 04 00 00 00       	push   $0x4
  40061b:	e9 a0 ff ff ff       	jmp    4005c0 <.plt>

0000000000400620 <__gmon_start__@plt>:
  400620:	ff 25 1a 0a 20 00    	jmp    *0x200a1a(%rip)        # 601040 <__gmon_start__>
  400626:	68 05 00 00 00       	push   $0x5
  40062b:	e9 90 ff ff ff       	jmp    4005c0 <.plt>

0000000000400630 <__isoc99_sscanf@plt>:
  400630:	ff 25 12 0a 20 00    	jmp    *0x200a12(%rip)        # 601048 <__isoc99_sscanf@GLIBC_2.7>
  400636:	68 06 00 00 00       	push   $0x6
  40063b:	e9 80 ff ff ff       	jmp    4005c0 <.plt>

0000000000400640 <fopen@plt>:
  400640:	ff 25 0a 0a 20 00    	jmp    *0x200a0a(%rip)        # 601050 <fopen@GLIBC_2.2.5>
  400646:	68 07 00 00 00       	push   $0x7
  40064b:	e9 70 ff ff ff       	jmp    4005c0 <.plt>

0000000000400650 <exit@plt>:
  400650:	ff 25 02 0a 20 00    	jmp    *0x200a02(%rip)        # 601058 <exit@GLIBC_2.2.5>
  400656:	68 08 00 00 00       	push   $0x8
  40065b:	e9 60 ff ff ff       	jmp    4005c0 <.plt>

Disassembly of section .text:

0000000000400660 <_start>:
  400660:	31 ed                	xor    %ebp,%ebp
  400662:	49 89 d1             	mov    %rdx,%r9
  400665:	5e                   	pop    %rsi
  400666:	48 89 e2             	mov    %rsp,%rdx
  400669:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40066d:	50                   	push   %rax
  40066e:	54                   	push   %rsp
  40066f:	49 c7 c0 00 0a 40 00 	mov    $0x400a00,%r8
  400676:	48 c7 c1 90 09 40 00 	mov    $0x400990,%rcx
  40067d:	48 c7 c7 91 07 40 00 	mov    $0x400791,%rdi
  400684:	e8 77 ff ff ff       	call   400600 <__libc_start_main@plt>
  400689:	f4                   	hlt
  40068a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400690 <deregister_tm_clones>:
  400690:	b8 a7 11 60 00       	mov    $0x6011a7,%eax
  400695:	55                   	push   %rbp
  400696:	48 2d a0 11 60 00    	sub    $0x6011a0,%rax
  40069c:	48 83 f8 0e          	cmp    $0xe,%rax
  4006a0:	48 89 e5             	mov    %rsp,%rbp
  4006a3:	77 02                	ja     4006a7 <deregister_tm_clones+0x17>
  4006a5:	5d                   	pop    %rbp
  4006a6:	c3                   	ret
  4006a7:	b8 00 00 00 00       	mov    $0x0,%eax
  4006ac:	48 85 c0             	test   %rax,%rax
  4006af:	74 f4                	je     4006a5 <deregister_tm_clones+0x15>
  4006b1:	5d                   	pop    %rbp
  4006b2:	bf a0 11 60 00       	mov    $0x6011a0,%edi
  4006b7:	ff e0                	jmp    *%rax
  4006b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004006c0 <register_tm_clones>:
  4006c0:	b8 a0 11 60 00       	mov    $0x6011a0,%eax
  4006c5:	55                   	push   %rbp
  4006c6:	48 2d a0 11 60 00    	sub    $0x6011a0,%rax
  4006cc:	48 c1 f8 03          	sar    $0x3,%rax
  4006d0:	48 89 e5             	mov    %rsp,%rbp
  4006d3:	48 89 c2             	mov    %rax,%rdx
  4006d6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4006da:	48 01 d0             	add    %rdx,%rax
  4006dd:	48 d1 f8             	sar    $1,%rax
  4006e0:	75 02                	jne    4006e4 <register_tm_clones+0x24>
  4006e2:	5d                   	pop    %rbp
  4006e3:	c3                   	ret
  4006e4:	ba 00 00 00 00       	mov    $0x0,%edx
  4006e9:	48 85 d2             	test   %rdx,%rdx
  4006ec:	74 f4                	je     4006e2 <register_tm_clones+0x22>
  4006ee:	5d                   	pop    %rbp
  4006ef:	48 89 c6             	mov    %rax,%rsi
  4006f2:	bf a0 11 60 00       	mov    $0x6011a0,%edi
  4006f7:	ff e2                	jmp    *%rdx
  4006f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400700 <__do_global_dtors_aux>:
  400700:	80 3d a1 0a 20 00 00 	cmpb   $0x0,0x200aa1(%rip)        # 6011a8 <completed.6355>
  400707:	75 11                	jne    40071a <__do_global_dtors_aux+0x1a>
  400709:	55                   	push   %rbp
  40070a:	48 89 e5             	mov    %rsp,%rbp
  40070d:	e8 7e ff ff ff       	call   400690 <deregister_tm_clones>
  400712:	5d                   	pop    %rbp
  400713:	c6 05 8e 0a 20 00 01 	movb   $0x1,0x200a8e(%rip)        # 6011a8 <completed.6355>
  40071a:	f3 c3                	repz ret
  40071c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400720 <frame_dummy>:
  400720:	48 83 3d f8 06 20 00 	cmpq   $0x0,0x2006f8(%rip)        # 600e20 <__JCR_END__>
  400727:	00 
  400728:	74 1e                	je     400748 <frame_dummy+0x28>
  40072a:	b8 00 00 00 00       	mov    $0x0,%eax
  40072f:	48 85 c0             	test   %rax,%rax
  400732:	74 14                	je     400748 <frame_dummy+0x28>
  400734:	55                   	push   %rbp
  400735:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  40073a:	48 89 e5             	mov    %rsp,%rbp
  40073d:	ff d0                	call   *%rax
  40073f:	5d                   	pop    %rbp
  400740:	e9 7b ff ff ff       	jmp    4006c0 <register_tm_clones>
  400745:	0f 1f 00             	nopl   (%rax)
  400748:	e9 73 ff ff ff       	jmp    4006c0 <register_tm_clones>

000000000040074d <fixinput>:
  40074d:	55                   	push   %rbp
  40074e:	48 89 e5             	mov    %rsp,%rbp
  400751:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400755:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  400758:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  40075b:	48 98                	cltq
  40075d:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
  400761:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400765:	48 01 d0             	add    %rdx,%rax
  400768:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40076c:	eb 17                	jmp    400785 <fixinput+0x38>
  40076e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400772:	0f b6 00             	movzbl (%rax),%eax
  400775:	3c 0a                	cmp    $0xa,%al
  400777:	75 07                	jne    400780 <fixinput+0x33>
  400779:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40077d:	c6 00 00             	movb   $0x0,(%rax)
  400780:	48 83 6d f8 01       	subq   $0x1,-0x8(%rbp)
  400785:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400789:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  40078d:	73 df                	jae    40076e <fixinput+0x21>
  40078f:	5d                   	pop    %rbp
  400790:	c3                   	ret

0000000000400791 <main>:
  400791:	55                   	push   %rbp
  400792:	48 89 e5             	mov    %rsp,%rbp
  400795:	48 83 ec 20          	sub    $0x20,%rsp
  400799:	89 7d ec             	mov    %edi,-0x14(%rbp)
  40079c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  4007a0:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  4007a7:	00 
  4007a8:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
  4007ac:	75 0d                	jne    4007bb <main+0x2a>
  4007ae:	48 8b 05 eb 09 20 00 	mov    0x2009eb(%rip),%rax        # 6011a0 <stdin@GLIBC_2.2.5>
  4007b5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4007b9:	eb 73                	jmp    40082e <main+0x9d>
  4007bb:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
  4007bf:	75 4a                	jne    40080b <main+0x7a>
  4007c1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4007c5:	48 83 c0 08          	add    $0x8,%rax
  4007c9:	48 8b 00             	mov    (%rax),%rax
  4007cc:	be 2a 0a 40 00       	mov    $0x400a2a,%esi
  4007d1:	48 89 c7             	mov    %rax,%rdi
  4007d4:	e8 67 fe ff ff       	call   400640 <fopen@plt>
  4007d9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4007dd:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  4007e2:	75 4a                	jne    40082e <main+0x9d>
  4007e4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4007e8:	48 83 c0 08          	add    $0x8,%rax
  4007ec:	48 8b 00             	mov    (%rax),%rax
  4007ef:	48 89 c6             	mov    %rax,%rsi
  4007f2:	bf 30 0a 40 00       	mov    $0x400a30,%edi
  4007f7:	b8 00 00 00 00       	mov    $0x0,%eax
  4007fc:	e8 df fd ff ff       	call   4005e0 <printf@plt>
  400801:	bf 01 00 00 00       	mov    $0x1,%edi
  400806:	e8 45 fe ff ff       	call   400650 <exit@plt>
  40080b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40080f:	48 8b 00             	mov    (%rax),%rax
  400812:	48 89 c6             	mov    %rax,%rsi
  400815:	bf 54 0a 40 00       	mov    $0x400a54,%edi
  40081a:	b8 00 00 00 00       	mov    $0x0,%eax
  40081f:	e8 bc fd ff ff       	call   4005e0 <printf@plt>
  400824:	bf 01 00 00 00       	mov    $0x1,%edi
  400829:	e8 22 fe ff ff       	call   400650 <exit@plt>
  40082e:	bf 70 0a 40 00       	mov    $0x400a70,%edi
  400833:	e8 98 fd ff ff       	call   4005d0 <puts@plt>
  400838:	bf a0 0a 40 00       	mov    $0x400aa0,%edi
  40083d:	e8 8e fd ff ff       	call   4005d0 <puts@plt>
  400842:	ba 00 01 00 00       	mov    $0x100,%edx
  400847:	be 00 00 00 00       	mov    $0x0,%esi
  40084c:	bf c0 11 60 00       	mov    $0x6011c0,%edi
  400851:	e8 9a fd ff ff       	call   4005f0 <memset@plt>
  400856:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40085a:	48 89 c2             	mov    %rax,%rdx
  40085d:	be 00 01 00 00       	mov    $0x100,%esi
  400862:	bf c0 11 60 00       	mov    $0x6011c0,%edi
  400867:	e8 a4 fd ff ff       	call   400610 <fgets@plt>
  40086c:	48 85 c0             	test   %rax,%rax
  40086f:	75 14                	jne    400885 <main+0xf4>
  400871:	bf d8 0a 40 00       	mov    $0x400ad8,%edi
  400876:	e8 55 fd ff ff       	call   4005d0 <puts@plt>
  40087b:	bf 01 00 00 00       	mov    $0x1,%edi
  400880:	e8 cb fd ff ff       	call   400650 <exit@plt>
  400885:	be 00 01 00 00       	mov    $0x100,%esi
  40088a:	bf c0 11 60 00       	mov    $0x6011c0,%edi
  40088f:	e8 b9 fe ff ff       	call   40074d <fixinput>
  400894:	bf c0 11 60 00       	mov    $0x6011c0,%edi
  400899:	e8 7b 00 00 00       	call   400919 <phase>
  40089e:	85 c0                	test   %eax,%eax
  4008a0:	74 1b                	je     4008bd <main+0x12c>
  4008a2:	48 8b 05 d7 07 20 00 	mov    0x2007d7(%rip),%rax        # 601080 <phase_id>
  4008a9:	48 89 c6             	mov    %rax,%rsi
  4008ac:	bf 00 0b 40 00       	mov    $0x400b00,%edi
  4008b1:	b8 00 00 00 00       	mov    $0x0,%eax
  4008b6:	e8 25 fd ff ff       	call   4005e0 <printf@plt>
  4008bb:	eb 19                	jmp    4008d6 <main+0x145>
  4008bd:	48 8b 05 bc 07 20 00 	mov    0x2007bc(%rip),%rax        # 601080 <phase_id>
  4008c4:	48 89 c6             	mov    %rax,%rsi
  4008c7:	bf 34 0b 40 00       	mov    $0x400b34,%edi
  4008cc:	b8 00 00 00 00       	mov    $0x0,%eax
  4008d1:	e8 0a fd ff ff       	call   4005e0 <printf@plt>
  4008d6:	b8 00 00 00 00       	mov    $0x0,%eax
  4008db:	c9                   	leave
  4008dc:	c3                   	ret

00000000004008dd <__func_KFGLAsPt>:
  4008dd:	55                   	push   %rbp
  4008de:	48 89 e5             	mov    %rsp,%rbp
  4008e1:	90                   	nop
  4008e2:	90                   	nop
  4008e3:	90                   	nop
  4008e4:	90                   	nop
  4008e5:	90                   	nop
  4008e6:	90                   	nop
  4008e7:	90                   	nop
  4008e8:	90                   	nop
  4008e9:	90                   	nop
  4008ea:	90                   	nop
  4008eb:	90                   	nop
  4008ec:	90                   	nop
  4008ed:	90                   	nop
  4008ee:	90                   	nop
  4008ef:	90                   	nop
  4008f0:	90                   	nop
  4008f1:	90                   	nop
  4008f2:	90                   	nop
  4008f3:	90                   	nop
  4008f4:	90                   	nop
  4008f5:	90                   	nop
  4008f6:	90                   	nop
  4008f7:	90                   	nop
  4008f8:	90                   	nop
  4008f9:	90                   	nop
  4008fa:	90                   	nop
  4008fb:	90                   	nop
  4008fc:	90                   	nop
  4008fd:	90                   	nop
  4008fe:	90                   	nop
  4008ff:	90                   	nop
  400900:	90                   	nop
  400901:	90                   	nop
  400902:	90                   	nop
  400903:	90                   	nop
  400904:	90                   	nop
  400905:	90                   	nop
  400906:	90                   	nop
  400907:	90                   	nop
  400908:	90                   	nop
  400909:	90                   	nop
  40090a:	90                   	nop
  40090b:	90                   	nop
  40090c:	90                   	nop
  40090d:	90                   	nop
  40090e:	90                   	nop
  40090f:	90                   	nop
  400910:	90                   	nop
  400911:	90                   	nop
  400912:	90                   	nop
  400913:	90                   	nop
  400914:	90                   	nop
  400915:	90                   	nop
  400916:	90                   	nop
  400917:	5d                   	pop    %rbp
  400918:	c3                   	ret

0000000000400919 <phase>:
  400919:	55                   	push   %rbp
  40091a:	48 89 e5             	mov    %rsp,%rbp
  40091d:	48 83 ec 20          	sub    $0x20,%rsp
  400921:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400925:	b8 00 00 00 00       	mov    $0x0,%eax
  40092a:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40092e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400935:	48 8d 55 f0          	lea    -0x10(%rbp),%rdx
  400939:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  40093d:	48 8d 70 04          	lea    0x4(%rax),%rsi
  400941:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400945:	48 89 d1             	mov    %rdx,%rcx
  400948:	48 89 f2             	mov    %rsi,%rdx
  40094b:	be 63 0b 40 00       	mov    $0x400b63,%esi
  400950:	48 89 c7             	mov    %rax,%rdi
  400953:	b8 00 00 00 00       	mov    $0x0,%eax
  400958:	e8 d3 fc ff ff       	call   400630 <__isoc99_sscanf@plt>
  40095d:	83 f8 02             	cmp    $0x2,%eax
  400960:	74 07                	je     400969 <phase+0x50>
  400962:	b8 00 00 00 00       	mov    $0x0,%eax
  400967:	eb 19                	jmp    400982 <phase+0x69>
  400969:	f2 0f 10 45 f0       	movsd  -0x10(%rbp),%xmm0
  40096e:	f2 0f 2c c0          	cvttsd2si %xmm0,%eax
  400972:	89 45 fc             	mov    %eax,-0x4(%rbp)
  400975:	81 7d fc 6c 29 d6 26 	cmpl   $0x26d6296c,-0x4(%rbp)
  40097c:	0f 94 c0             	sete   %al
  40097f:	0f b6 c0             	movzbl %al,%eax
  400982:	c9                   	leave
  400983:	c3                   	ret
  400984:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40098b:	00 00 00 
  40098e:	66 90                	xchg   %ax,%ax

0000000000400990 <__libc_csu_init>:
  400990:	41 57                	push   %r15
  400992:	41 89 ff             	mov    %edi,%r15d
  400995:	41 56                	push   %r14
  400997:	49 89 f6             	mov    %rsi,%r14
  40099a:	41 55                	push   %r13
  40099c:	49 89 d5             	mov    %rdx,%r13
  40099f:	41 54                	push   %r12
  4009a1:	4c 8d 25 68 04 20 00 	lea    0x200468(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  4009a8:	55                   	push   %rbp
  4009a9:	48 8d 2d 68 04 20 00 	lea    0x200468(%rip),%rbp        # 600e18 <__do_global_dtors_aux_fini_array_entry>
  4009b0:	53                   	push   %rbx
  4009b1:	4c 29 e5             	sub    %r12,%rbp
  4009b4:	31 db                	xor    %ebx,%ebx
  4009b6:	48 c1 fd 03          	sar    $0x3,%rbp
  4009ba:	48 83 ec 08          	sub    $0x8,%rsp
  4009be:	e8 d5 fb ff ff       	call   400598 <_init>
  4009c3:	48 85 ed             	test   %rbp,%rbp
  4009c6:	74 1e                	je     4009e6 <__libc_csu_init+0x56>
  4009c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4009cf:	00 
  4009d0:	4c 89 ea             	mov    %r13,%rdx
  4009d3:	4c 89 f6             	mov    %r14,%rsi
  4009d6:	44 89 ff             	mov    %r15d,%edi
  4009d9:	41 ff 14 dc          	call   *(%r12,%rbx,8)
  4009dd:	48 83 c3 01          	add    $0x1,%rbx
  4009e1:	48 39 eb             	cmp    %rbp,%rbx
  4009e4:	75 ea                	jne    4009d0 <__libc_csu_init+0x40>
  4009e6:	48 83 c4 08          	add    $0x8,%rsp
  4009ea:	5b                   	pop    %rbx
  4009eb:	5d                   	pop    %rbp
  4009ec:	41 5c                	pop    %r12
  4009ee:	41 5d                	pop    %r13
  4009f0:	41 5e                	pop    %r14
  4009f2:	41 5f                	pop    %r15
  4009f4:	c3                   	ret
  4009f5:	90                   	nop
  4009f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4009fd:	00 00 00 

0000000000400a00 <__libc_csu_fini>:
  400a00:	f3 c3                	repz ret

Disassembly of section .fini:

0000000000400a04 <_fini>:
  400a04:	48 83 ec 08          	sub    $0x8,%rsp
  400a08:	48 83 c4 08          	add    $0x8,%rsp
  400a0c:	c3                   	ret
