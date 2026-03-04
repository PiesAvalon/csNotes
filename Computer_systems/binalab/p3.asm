
./phase3:     file format elf64-x86-64


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

00000000004005b0 <strlen@plt>:
  4005b0:	ff 25 6a 0a 20 00    	jmp    *0x200a6a(%rip)        # 601020 <strlen@GLIBC_2.2.5>
  4005b6:	68 01 00 00 00       	push   $0x1
  4005bb:	e9 d0 ff ff ff       	jmp    400590 <.plt>

00000000004005c0 <printf@plt>:
  4005c0:	ff 25 62 0a 20 00    	jmp    *0x200a62(%rip)        # 601028 <printf@GLIBC_2.2.5>
  4005c6:	68 02 00 00 00       	push   $0x2
  4005cb:	e9 c0 ff ff ff       	jmp    400590 <.plt>

00000000004005d0 <memset@plt>:
  4005d0:	ff 25 5a 0a 20 00    	jmp    *0x200a5a(%rip)        # 601030 <memset@GLIBC_2.2.5>
  4005d6:	68 03 00 00 00       	push   $0x3
  4005db:	e9 b0 ff ff ff       	jmp    400590 <.plt>

00000000004005e0 <__libc_start_main@plt>:
  4005e0:	ff 25 52 0a 20 00    	jmp    *0x200a52(%rip)        # 601038 <__libc_start_main@GLIBC_2.2.5>
  4005e6:	68 04 00 00 00       	push   $0x4
  4005eb:	e9 a0 ff ff ff       	jmp    400590 <.plt>

00000000004005f0 <fgets@plt>:
  4005f0:	ff 25 4a 0a 20 00    	jmp    *0x200a4a(%rip)        # 601040 <fgets@GLIBC_2.2.5>
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
  40063f:	49 c7 c0 00 0a 40 00 	mov    $0x400a00,%r8
  400646:	48 c7 c1 90 09 40 00 	mov    $0x400990,%rcx
  40064d:	48 c7 c7 61 07 40 00 	mov    $0x400761,%rdi
  400654:	e8 87 ff ff ff       	call   4005e0 <__libc_start_main@plt>
  400659:	f4                   	hlt
  40065a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400660 <deregister_tm_clones>:
  400660:	b8 1f 11 60 00       	mov    $0x60111f,%eax
  400665:	55                   	push   %rbp
  400666:	48 2d 18 11 60 00    	sub    $0x601118,%rax
  40066c:	48 83 f8 0e          	cmp    $0xe,%rax
  400670:	48 89 e5             	mov    %rsp,%rbp
  400673:	77 02                	ja     400677 <deregister_tm_clones+0x17>
  400675:	5d                   	pop    %rbp
  400676:	c3                   	ret
  400677:	b8 00 00 00 00       	mov    $0x0,%eax
  40067c:	48 85 c0             	test   %rax,%rax
  40067f:	74 f4                	je     400675 <deregister_tm_clones+0x15>
  400681:	5d                   	pop    %rbp
  400682:	bf 18 11 60 00       	mov    $0x601118,%edi
  400687:	ff e0                	jmp    *%rax
  400689:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400690 <register_tm_clones>:
  400690:	b8 18 11 60 00       	mov    $0x601118,%eax
  400695:	55                   	push   %rbp
  400696:	48 2d 18 11 60 00    	sub    $0x601118,%rax
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
  4006c2:	bf 18 11 60 00       	mov    $0x601118,%edi
  4006c7:	ff e2                	jmp    *%rdx
  4006c9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004006d0 <__do_global_dtors_aux>:
  4006d0:	80 3d 51 0a 20 00 00 	cmpb   $0x0,0x200a51(%rip)        # 601128 <completed.6355>
  4006d7:	75 11                	jne    4006ea <__do_global_dtors_aux+0x1a>
  4006d9:	55                   	push   %rbp
  4006da:	48 89 e5             	mov    %rsp,%rbp
  4006dd:	e8 7e ff ff ff       	call   400660 <deregister_tm_clones>
  4006e2:	5d                   	pop    %rbp
  4006e3:	c6 05 3e 0a 20 00 01 	movb   $0x1,0x200a3e(%rip)        # 601128 <completed.6355>
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
  40077e:	48 8b 05 9b 09 20 00 	mov    0x20099b(%rip),%rax        # 601120 <stdin@GLIBC_2.2.5>
  400785:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400789:	eb 73                	jmp    4007fe <main+0x9d>
  40078b:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
  40078f:	75 4a                	jne    4007db <main+0x7a>
  400791:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400795:	48 83 c0 08          	add    $0x8,%rax
  400799:	48 8b 00             	mov    (%rax),%rax
  40079c:	be 2a 0a 40 00       	mov    $0x400a2a,%esi
  4007a1:	48 89 c7             	mov    %rax,%rdi
  4007a4:	e8 67 fe ff ff       	call   400610 <fopen@plt>
  4007a9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4007ad:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  4007b2:	75 4a                	jne    4007fe <main+0x9d>
  4007b4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4007b8:	48 83 c0 08          	add    $0x8,%rax
  4007bc:	48 8b 00             	mov    (%rax),%rax
  4007bf:	48 89 c6             	mov    %rax,%rsi
  4007c2:	bf 30 0a 40 00       	mov    $0x400a30,%edi
  4007c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4007cc:	e8 ef fd ff ff       	call   4005c0 <printf@plt>
  4007d1:	bf 01 00 00 00       	mov    $0x1,%edi
  4007d6:	e8 45 fe ff ff       	call   400620 <exit@plt>
  4007db:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4007df:	48 8b 00             	mov    (%rax),%rax
  4007e2:	48 89 c6             	mov    %rax,%rsi
  4007e5:	bf 54 0a 40 00       	mov    $0x400a54,%edi
  4007ea:	b8 00 00 00 00       	mov    $0x0,%eax
  4007ef:	e8 cc fd ff ff       	call   4005c0 <printf@plt>
  4007f4:	bf 01 00 00 00       	mov    $0x1,%edi
  4007f9:	e8 22 fe ff ff       	call   400620 <exit@plt>
  4007fe:	bf 70 0a 40 00       	mov    $0x400a70,%edi
  400803:	e8 98 fd ff ff       	call   4005a0 <puts@plt>
  400808:	bf a0 0a 40 00       	mov    $0x400aa0,%edi
  40080d:	e8 8e fd ff ff       	call   4005a0 <puts@plt>
  400812:	ba 00 01 00 00       	mov    $0x100,%edx
  400817:	be 00 00 00 00       	mov    $0x0,%esi
  40081c:	bf 40 11 60 00       	mov    $0x601140,%edi
  400821:	e8 aa fd ff ff       	call   4005d0 <memset@plt>
  400826:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40082a:	48 89 c2             	mov    %rax,%rdx
  40082d:	be 00 01 00 00       	mov    $0x100,%esi
  400832:	bf 40 11 60 00       	mov    $0x601140,%edi
  400837:	e8 b4 fd ff ff       	call   4005f0 <fgets@plt>
  40083c:	48 85 c0             	test   %rax,%rax
  40083f:	75 14                	jne    400855 <main+0xf4>
  400841:	bf d8 0a 40 00       	mov    $0x400ad8,%edi
  400846:	e8 55 fd ff ff       	call   4005a0 <puts@plt>
  40084b:	bf 01 00 00 00       	mov    $0x1,%edi
  400850:	e8 cb fd ff ff       	call   400620 <exit@plt>
  400855:	be 00 01 00 00       	mov    $0x100,%esi
  40085a:	bf 40 11 60 00       	mov    $0x601140,%edi
  40085f:	e8 b9 fe ff ff       	call   40071d <fixinput>
  400864:	bf 40 11 60 00       	mov    $0x601140,%edi
  400869:	e8 85 00 00 00       	call   4008f3 <phase>
  40086e:	85 c0                	test   %eax,%eax
  400870:	74 1b                	je     40088d <main+0x12c>
  400872:	48 8b 05 07 08 20 00 	mov    0x200807(%rip),%rax        # 601080 <phase_id>
  400879:	48 89 c6             	mov    %rax,%rsi
  40087c:	bf 00 0b 40 00       	mov    $0x400b00,%edi
  400881:	b8 00 00 00 00       	mov    $0x0,%eax
  400886:	e8 35 fd ff ff       	call   4005c0 <printf@plt>
  40088b:	eb 19                	jmp    4008a6 <main+0x145>
  40088d:	48 8b 05 ec 07 20 00 	mov    0x2007ec(%rip),%rax        # 601080 <phase_id>
  400894:	48 89 c6             	mov    %rax,%rsi
  400897:	bf 34 0b 40 00       	mov    $0x400b34,%edi
  40089c:	b8 00 00 00 00       	mov    $0x0,%eax
  4008a1:	e8 1a fd ff ff       	call   4005c0 <printf@plt>
  4008a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4008ab:	c9                   	leave
  4008ac:	c3                   	ret

00000000004008ad <__func_vMgfrDTS>:
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
  4008c9:	90                   	nop
  4008ca:	90                   	nop
  4008cb:	90                   	nop
  4008cc:	90                   	nop
  4008cd:	90                   	nop
  4008ce:	90                   	nop
  4008cf:	90                   	nop
  4008d0:	90                   	nop
  4008d1:	90                   	nop
  4008d2:	90                   	nop
  4008d3:	90                   	nop
  4008d4:	90                   	nop
  4008d5:	90                   	nop
  4008d6:	90                   	nop
  4008d7:	90                   	nop
  4008d8:	90                   	nop
  4008d9:	90                   	nop
  4008da:	90                   	nop
  4008db:	90                   	nop
  4008dc:	90                   	nop
  4008dd:	90                   	nop
  4008de:	90                   	nop
  4008df:	90                   	nop
  4008e0:	90                   	nop
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
  4008f1:	5d                   	pop    %rbp
  4008f2:	c3                   	ret

00000000004008f3 <phase>:
  4008f3:	55                   	push   %rbp
  4008f4:	48 89 e5             	mov    %rsp,%rbp
  4008f7:	48 83 ec 20          	sub    $0x20,%rsp
  4008fb:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4008ff:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400903:	48 89 c7             	mov    %rax,%rdi
  400906:	e8 a5 fc ff ff       	call   4005b0 <strlen@plt>
  40090b:	48 83 f8 05          	cmp    $0x5,%rax
  40090f:	74 07                	je     400918 <phase+0x25>
  400911:	b8 00 00 00 00       	mov    $0x0,%eax
  400916:	eb 72                	jmp    40098a <phase+0x97>         # fail
  400918:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40091c:	0f b6 00             	movzbl (%rax),%eax
  40091f:	3c 5f                	cmp    $0x5f,%al
  400921:	74 07                	je     40092a <phase+0x37>
  400923:	b8 00 00 00 00       	mov    $0x0,%eax
  400928:	eb 60                	jmp    40098a <phase+0x97>         # fail
  40092a:	c6 45 fb 03          	movb   $0x3,-0x5(%rbp)
  40092e:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  400935:	eb 48                	jmp    40097f <phase+0x8c>

  400937:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40093a:	48 63 d0             	movslq %eax,%rdx
  40093d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400941:	48 01 d0             	add    %rdx,%rax
  400944:	0f b6 00             	movzbl (%rax),%eax
  400947:	0f be c0             	movsbl %al,%eax
  40094a:	8b 55 fc             	mov    -0x4(%rbp),%edx
  40094d:	48 63 d2             	movslq %edx,%rdx
  400950:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
  400954:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  400958:	48 01 ca             	add    %rcx,%rdx
  40095b:	0f b6 12             	movzbl (%rdx),%edx
  40095e:	0f be ca             	movsbl %dl,%ecx
  400961:	0f b6 55 fb          	movzbl -0x5(%rbp),%edx
  400965:	31 ca                	xor    %ecx,%edx
  400967:	83 e2 5e             	and    $0x5e,%edx
  40096a:	83 ca 20             	or     $0x20,%edx
  40096d:	39 d0                	cmp    %edx,%eax
  40096f:	74 07                	je     400978 <phase+0x85>
  400971:	b8 00 00 00 00       	mov    $0x0,%eax
  400976:	eb 12                	jmp    40098a <phase+0x97>          # fail
  400978:	d0 65 fb             	shlb   $1,-0x5(%rbp)
  40097b:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  40097f:	83 7d fc 04          	cmpl   $0x4,-0x4(%rbp)
  400983:	7e b2                	jle    400937 <phase+0x44>        # back
  400985:	b8 01 00 00 00       	mov    $0x1,%eax
  40098a:	c9                   	leave
  40098b:	c3                   	ret
  40098c:	0f 1f 40 00          	nopl   0x0(%rax)

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
  4009be:	e8 ad fb ff ff       	call   400570 <_init>
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
