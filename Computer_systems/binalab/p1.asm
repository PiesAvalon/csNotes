
phase1:     file format elf64-x86-64


Disassembly of section .init:

0000000000400570 <_init>:
  400570:	48 83 ec 08          	sub    $0x8,%rsp
  400574:	48 8b 05 7d 0a 20 00 	mov    0x200a7d(%rip),%rax        # 600ff8 <__gmon_start__>
  40057b:	48 85 c0             	test   %rax,%rax
  40057e:	74 05                	je     400585 <_init+0x15>
  400580:	e8 7b 00 00 00       	call   400600 <__gmon_start__@plt>
  400585:	48 83 c4 08          	add    $0x8,%rsp
  400589:	c3                   	ret

Disassembly of section .plt:

0000000000400590 <.plt>:
  400590:	ff 35 72 0a 20 00    	push   0x200a72(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400596:	ff 25 74 0a 20 00    	jmp    *0x200a74(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40059c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005a0 <puts@plt>:
  4005a0:	ff 25 72 0a 20 00    	jmp    *0x200a72(%rip)        # 601018 <puts@GLIBC_2.2.5>
  4005a6:	68 00 00 00 00       	push   $0x0
  4005ab:	e9 e0 ff ff ff       	jmp    400590 <.plt>

00000000004005b0 <printf@plt>:
  4005b0:	ff 25 6a 0a 20 00    	jmp    *0x200a6a(%rip)        # 601020 <printf@GLIBC_2.2.5>
  4005b6:	68 01 00 00 00       	push   $0x1
  4005bb:	e9 d0 ff ff ff       	jmp    400590 <.plt>

00000000004005c0 <memset@plt>:
  4005c0:	ff 25 62 0a 20 00    	jmp    *0x200a62(%rip)        # 601028 <memset@GLIBC_2.2.5>
  4005c6:	68 02 00 00 00       	push   $0x2
  4005cb:	e9 c0 ff ff ff       	jmp    400590 <.plt>

00000000004005d0 <__libc_start_main@plt>:
  4005d0:	ff 25 5a 0a 20 00    	jmp    *0x200a5a(%rip)        # 601030 <__libc_start_main@GLIBC_2.2.5>
  4005d6:	68 03 00 00 00       	push   $0x3
  4005db:	e9 b0 ff ff ff       	jmp    400590 <.plt>

00000000004005e0 <fgets@plt>:
  4005e0:	ff 25 52 0a 20 00    	jmp    *0x200a52(%rip)        # 601038 <fgets@GLIBC_2.2.5>
  4005e6:	68 04 00 00 00       	push   $0x4
  4005eb:	e9 a0 ff ff ff       	jmp    400590 <.plt>

00000000004005f0 <strcmp@plt>:
  4005f0:	ff 25 4a 0a 20 00    	jmp    *0x200a4a(%rip)        # 601040 <strcmp@GLIBC_2.2.5>
  4005f6:	68 05 00 00 00       	push   $0x5
  4005fb:	e9 90 ff ff ff       	jmp    400590 <.plt>

0000000000400600 <__gmon_start__@plt>:
  400600:	ff 25 42 0a 20 00    	jmp    *0x200a42(%rip)        # 601048 <__gmon_start__>
  400606:	68 06 00 00 00       	push   $0x6
  40060b:	e9 80 ff ff ff       	jmp    400590 <.plt>

0000000000400610 <fopen@plt>:
  400610:	ff 25 3a 0a 20 00    	jmp    *0x200a3a(%rip)        # 601050 <fopen@GLIBC_2.2.5>
  400616:	68 07 00 00 00       	push   $0x7
  40061b:	e9 70 ff ff ff       	jmp    400590 <.plt>

0000000000400620 <exit@plt>:
  400620:	ff 25 32 0a 20 00    	jmp    *0x200a32(%rip)        # 601058 <exit@GLIBC_2.2.5>
  400626:	68 08 00 00 00       	push   $0x8
  40062b:	e9 60 ff ff ff       	jmp    400590 <.plt>

Disassembly of section .text:

0000000000400630 <_start>:
  400630:	31 ed                	xor    %ebp,%ebp
  400632:	49 89 d1             	mov    %rdx,%r9
  400635:	5e                   	pop    %rsi
  400636:	48 89 e2             	mov    %rsp,%rdx
  400639:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40063d:	50                   	push   %rax
  40063e:	54                   	push   %rsp
  40063f:	49 c7 c0 70 09 40 00 	mov    $0x400970,%r8
  400646:	48 c7 c1 00 09 40 00 	mov    $0x400900,%rcx
  40064d:	48 c7 c7 61 07 40 00 	mov    $0x400761,%rdi
  400654:	e8 77 ff ff ff       	call   4005d0 <__libc_start_main@plt>
  400659:	f4                   	hlt
  40065a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400660 <deregister_tm_clones>:
  400660:	b8 df 10 60 00       	mov    $0x6010df,%eax
  400665:	55                   	push   %rbp
  400666:	48 2d d8 10 60 00    	sub    $0x6010d8,%rax
  40066c:	48 83 f8 0e          	cmp    $0xe,%rax
  400670:	48 89 e5             	mov    %rsp,%rbp
  400673:	77 02                	ja     400677 <deregister_tm_clones+0x17>
  400675:	5d                   	pop    %rbp
  400676:	c3                   	ret
  400677:	b8 00 00 00 00       	mov    $0x0,%eax
  40067c:	48 85 c0             	test   %rax,%rax
  40067f:	74 f4                	je     400675 <deregister_tm_clones+0x15>
  400681:	5d                   	pop    %rbp
  400682:	bf d8 10 60 00       	mov    $0x6010d8,%edi
  400687:	ff e0                	jmp    *%rax
  400689:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400690 <register_tm_clones>:
  400690:	b8 d8 10 60 00       	mov    $0x6010d8,%eax
  400695:	55                   	push   %rbp
  400696:	48 2d d8 10 60 00    	sub    $0x6010d8,%rax
  40069c:	48 c1 f8 03          	sar    $0x3,%rax
  4006a0:	48 89 e5             	mov    %rsp,%rbp
  4006a3:	48 89 c2             	mov    %rax,%rdx
  4006a6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4006aa:	48 01 d0             	add    %rdx,%rax
  4006ad:	48 d1 f8             	sar    $1,%rax
  4006b0:	75 02                	jne    4006b4 <register_tm_clones+0x24>
  4006b2:	5d                   	pop    %rbp
  4006b3:	c3                   	ret
  4006b4:	ba 00 00 00 00       	mov    $0x0,%edx
  4006b9:	48 85 d2             	test   %rdx,%rdx
  4006bc:	74 f4                	je     4006b2 <register_tm_clones+0x22>
  4006be:	5d                   	pop    %rbp
  4006bf:	48 89 c6             	mov    %rax,%rsi
  4006c2:	bf d8 10 60 00       	mov    $0x6010d8,%edi
  4006c7:	ff e2                	jmp    *%rdx
  4006c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004006d0 <__do_global_dtors_aux>:
  4006d0:	80 3d 11 0a 20 00 00 	cmpb   $0x0,0x200a11(%rip)        # 6010e8 <completed.6355>
  4006d7:	75 11                	jne    4006ea <__do_global_dtors_aux+0x1a>
  4006d9:	55                   	push   %rbp
  4006da:	48 89 e5             	mov    %rsp,%rbp
  4006dd:	e8 7e ff ff ff       	call   400660 <deregister_tm_clones>
  4006e2:	5d                   	pop    %rbp
  4006e3:	c6 05 fe 09 20 00 01 	movb   $0x1,0x2009fe(%rip)        # 6010e8 <completed.6355>
  4006ea:	f3 c3                	repz ret
  4006ec:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004006f0 <frame_dummy>:
  4006f0:	48 83 3d 28 07 20 00 	cmpq   $0x0,0x200728(%rip)        # 600e20 <__JCR_END__>
  4006f7:	00 
  4006f8:	74 1e                	je     400718 <frame_dummy+0x28>
  4006fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4006ff:	48 85 c0             	test   %rax,%rax
  400702:	74 14                	je     400718 <frame_dummy+0x28>
  400704:	55                   	push   %rbp
  400705:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  40070a:	48 89 e5             	mov    %rsp,%rbp
  40070d:	ff d0                	call   *%rax
  40070f:	5d                   	pop    %rbp
  400710:	e9 7b ff ff ff       	jmp    400690 <register_tm_clones>
  400715:	0f 1f 00             	nopl   (%rax)
  400718:	e9 73 ff ff ff       	jmp    400690 <register_tm_clones>

000000000040071d <fixinput>:
  40071d:	55                   	push   %rbp
  40071e:	48 89 e5             	mov    %rsp,%rbp
  400721:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400725:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  400728:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  40072b:	48 98                	cltq
  40072d:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
  400731:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400735:	48 01 d0             	add    %rdx,%rax
  400738:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40073c:	eb 17                	jmp    400755 <fixinput+0x38>
  40073e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400742:	0f b6 00             	movzbl (%rax),%eax
  400745:	3c 0a                	cmp    $0xa,%al
  400747:	75 07                	jne    400750 <fixinput+0x33>
  400749:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40074d:	c6 00 00             	movb   $0x0,(%rax)
  400750:	48 83 6d f8 01       	subq   $0x1,-0x8(%rbp)
  400755:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400759:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  40075d:	73 df                	jae    40073e <fixinput+0x21>
  40075f:	5d                   	pop    %rbp
  400760:	c3                   	ret

0000000000400761 <main>:
  400761:	55                   	push   %rbp
  400762:	48 89 e5             	mov    %rsp,%rbp
  400765:	48 83 ec 20          	sub    $0x20,%rsp
  400769:	89 7d ec             	mov    %edi,-0x14(%rbp)
  40076c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400770:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  400777:	00 
  400778:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
  40077c:	75 0d                	jne    40078b <main+0x2a>
  40077e:	48 8b 05 5b 09 20 00 	mov    0x20095b(%rip),%rax        # 6010e0 <stdin@GLIBC_2.2.5>
  400785:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400789:	eb 73                	jmp    4007fe <main+0x9d>
  40078b:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
  40078f:	75 4a                	jne    4007db <main+0x7a>
  400791:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400795:	48 83 c0 08          	add    $0x8,%rax
  400799:	48 8b 00             	mov    (%rax),%rax
  40079c:	be 9a 09 40 00       	mov    $0x40099a,%esi
  4007a1:	48 89 c7             	mov    %rax,%rdi
  4007a4:	e8 67 fe ff ff       	call   400610 <fopen@plt>
  4007a9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4007ad:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  4007b2:	75 4a                	jne    4007fe <main+0x9d>
  4007b4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4007b8:	48 83 c0 08          	add    $0x8,%rax
  4007bc:	48 8b 00             	mov    (%rax),%rax
  4007bf:	48 89 c6             	mov    %rax,%rsi
  4007c2:	bf a0 09 40 00       	mov    $0x4009a0,%edi
  4007c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4007cc:	e8 df fd ff ff       	call   4005b0 <printf@plt>
  4007d1:	bf 01 00 00 00       	mov    $0x1,%edi
  4007d6:	e8 45 fe ff ff       	call   400620 <exit@plt>
  4007db:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4007df:	48 8b 00             	mov    (%rax),%rax
  4007e2:	48 89 c6             	mov    %rax,%rsi
  4007e5:	bf c4 09 40 00       	mov    $0x4009c4,%edi
  4007ea:	b8 00 00 00 00       	mov    $0x0,%eax
  4007ef:	e8 bc fd ff ff       	call   4005b0 <printf@plt>
  4007f4:	bf 01 00 00 00       	mov    $0x1,%edi
  4007f9:	e8 22 fe ff ff       	call   400620 <exit@plt>
  4007fe:	bf e0 09 40 00       	mov    $0x4009e0,%edi
  400803:	e8 98 fd ff ff       	call   4005a0 <puts@plt>
  400808:	bf 10 0a 40 00       	mov    $0x400a10,%edi
  40080d:	e8 8e fd ff ff       	call   4005a0 <puts@plt>
  400812:	ba 00 01 00 00       	mov    $0x100,%edx
  400817:	be 00 00 00 00       	mov    $0x0,%esi
  40081c:	bf 00 11 60 00       	mov    $0x601100,%edi
  400821:	e8 9a fd ff ff       	call   4005c0 <memset@plt>
  400826:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40082a:	48 89 c2             	mov    %rax,%rdx
  40082d:	be 00 01 00 00       	mov    $0x100,%esi
  400832:	bf 00 11 60 00       	mov    $0x601100,%edi
  400837:	e8 a4 fd ff ff       	call   4005e0 <fgets@plt>
  40083c:	48 85 c0             	test   %rax,%rax
  40083f:	75 14                	jne    400855 <main+0xf4>
  400841:	bf 48 0a 40 00       	mov    $0x400a48,%edi
  400846:	e8 55 fd ff ff       	call   4005a0 <puts@plt>
  40084b:	bf 01 00 00 00       	mov    $0x1,%edi
  400850:	e8 cb fd ff ff       	call   400620 <exit@plt>
  400855:	be 00 01 00 00       	mov    $0x100,%esi
  40085a:	bf 00 11 60 00       	mov    $0x601100,%edi
  40085f:	e8 b9 fe ff ff       	call   40071d <fixinput>
  400864:	bf 00 11 60 00       	mov    $0x601100,%edi
  400869:	e8 5d 00 00 00       	call   4008cb <phase>
  40086e:	85 c0                	test   %eax,%eax
  400870:	74 1b                	je     40088d <main+0x12c>
  400872:	48 8b 05 07 08 20 00 	mov    0x200807(%rip),%rax        # 601080 <phase_id>
  400879:	48 89 c6             	mov    %rax,%rsi
  40087c:	bf 70 0a 40 00       	mov    $0x400a70,%edi
  400881:	b8 00 00 00 00       	mov    $0x0,%eax
  400886:	e8 25 fd ff ff       	call   4005b0 <printf@plt>
  40088b:	eb 19                	jmp    4008a6 <main+0x145>
  40088d:	48 8b 05 ec 07 20 00 	mov    0x2007ec(%rip),%rax        # 601080 <phase_id>
  400894:	48 89 c6             	mov    %rax,%rsi
  400897:	bf a4 0a 40 00       	mov    $0x400aa4,%edi
  40089c:	b8 00 00 00 00       	mov    $0x0,%eax
  4008a1:	e8 0a fd ff ff       	call   4005b0 <printf@plt>
  4008a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4008ab:	c9                   	leave
  4008ac:	c3                   	ret

00000000004008ad <__func_GBViSMxm>:
  4008ad:	55                   	push   %rbp
  4008ae:	48 89 e5             	mov    %rsp,%rbp
  4008b1:	90                   	nop
  4008b2:	90                   	nop
  4008b3:	90                   	nop
  4008b4:	90                   	nop
  4008b5:	90                   	nop
  4008b6:	90                   	nop
  4008b7:	90                   	nop
  4008b8:	90                   	nop
  4008b9:	90                   	nop
  4008ba:	90                   	nop
  4008bb:	90                   	nop
  4008bc:	90                   	nop
  4008bd:	90                   	nop
  4008be:	90                   	nop
  4008bf:	90                   	nop
  4008c0:	90                   	nop
  4008c1:	90                   	nop
  4008c2:	90                   	nop
  4008c3:	90                   	nop
  4008c4:	90                   	nop
  4008c5:	90                   	nop
  4008c6:	90                   	nop
  4008c7:	90                   	nop
  4008c8:	90                   	nop
  4008c9:	5d                   	pop    %rbp
  4008ca:	c3                   	ret

00000000004008cb <phase>:
  4008cb:	55                   	push   %rbp
  4008cc:	48 89 e5             	mov    %rsp,%rbp
  4008cf:	48 83 ec 10          	sub    $0x10,%rsp
  4008d3:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4008d7:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4008db:	be e0 0a 40 00       	mov    $0x400ae0,%esi
  4008e0:	48 89 c7             	mov    %rax,%rdi
  4008e3:	e8 08 fd ff ff       	call   4005f0 <strcmp@plt>
  4008e8:	85 c0                	test   %eax,%eax
  4008ea:	0f 94 c0             	sete   %al
  4008ed:	0f b6 c0             	movzbl %al,%eax
  4008f0:	c9                   	leave
  4008f1:	c3                   	ret
  4008f2:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4008f9:	00 00 00 
  4008fc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400900 <__libc_csu_init>:
  400900:	41 57                	push   %r15
  400902:	41 89 ff             	mov    %edi,%r15d
  400905:	41 56                	push   %r14
  400907:	49 89 f6             	mov    %rsi,%r14
  40090a:	41 55                	push   %r13
  40090c:	49 89 d5             	mov    %rdx,%r13
  40090f:	41 54                	push   %r12
  400911:	4c 8d 25 f8 04 20 00 	lea    0x2004f8(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400918:	55                   	push   %rbp
  400919:	48 8d 2d f8 04 20 00 	lea    0x2004f8(%rip),%rbp        # 600e18 <__do_global_dtors_aux_fini_array_entry>
  400920:	53                   	push   %rbx
  400921:	4c 29 e5             	sub    %r12,%rbp
  400924:	31 db                	xor    %ebx,%ebx
  400926:	48 c1 fd 03          	sar    $0x3,%rbp
  40092a:	48 83 ec 08          	sub    $0x8,%rsp
  40092e:	e8 3d fc ff ff       	call   400570 <_init>
  400933:	48 85 ed             	test   %rbp,%rbp
  400936:	74 1e                	je     400956 <__libc_csu_init+0x56>
  400938:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40093f:	00 
  400940:	4c 89 ea             	mov    %r13,%rdx
  400943:	4c 89 f6             	mov    %r14,%rsi
  400946:	44 89 ff             	mov    %r15d,%edi
  400949:	41 ff 14 dc          	call   *(%r12,%rbx,8)
  40094d:	48 83 c3 01          	add    $0x1,%rbx
  400951:	48 39 eb             	cmp    %rbp,%rbx
  400954:	75 ea                	jne    400940 <__libc_csu_init+0x40>
  400956:	48 83 c4 08          	add    $0x8,%rsp
  40095a:	5b                   	pop    %rbx
  40095b:	5d                   	pop    %rbp
  40095c:	41 5c                	pop    %r12
  40095e:	41 5d                	pop    %r13
  400960:	41 5e                	pop    %r14
  400962:	41 5f                	pop    %r15
  400964:	c3                   	ret
  400965:	90                   	nop
  400966:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40096d:	00 00 00 

0000000000400970 <__libc_csu_fini>:
  400970:	f3 c3                	repz ret

Disassembly of section .fini:

0000000000400974 <_fini>:
  400974:	48 83 ec 08          	sub    $0x8,%rsp
  400978:	48 83 c4 08          	add    $0x8,%rsp
  40097c:	c3                   	ret
