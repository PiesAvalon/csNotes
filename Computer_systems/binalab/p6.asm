
phase6:     file format elf64-x86-64


Disassembly of section .init:

0000000000400598 <_init>:
  400598:	48 83 ec 08          	sub    $0x8,%rsp
  40059c:	48 8b 05 55 1a 20 00 	mov    0x201a55(%rip),%rax        # 601ff8 <__gmon_start__>
  4005a3:	48 85 c0             	test   %rax,%rax
  4005a6:	74 05                	je     4005ad <_init+0x15>
  4005a8:	e8 73 00 00 00       	call   400620 <__gmon_start__@plt>
  4005ad:	48 83 c4 08          	add    $0x8,%rsp
  4005b1:	c3                   	ret

Disassembly of section .plt:

00000000004005c0 <.plt>:
  4005c0:	ff 35 42 1a 20 00    	push   0x201a42(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4005c6:	ff 25 44 1a 20 00    	jmp    *0x201a44(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4005cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005d0 <puts@plt>:
  4005d0:	ff 25 42 1a 20 00    	jmp    *0x201a42(%rip)        # 602018 <puts@GLIBC_2.2.5>
  4005d6:	68 00 00 00 00       	push   $0x0
  4005db:	e9 e0 ff ff ff       	jmp    4005c0 <.plt>

00000000004005e0 <printf@plt>:
  4005e0:	ff 25 3a 1a 20 00    	jmp    *0x201a3a(%rip)        # 602020 <printf@GLIBC_2.2.5>
  4005e6:	68 01 00 00 00       	push   $0x1
  4005eb:	e9 d0 ff ff ff       	jmp    4005c0 <.plt>

00000000004005f0 <memset@plt>:
  4005f0:	ff 25 32 1a 20 00    	jmp    *0x201a32(%rip)        # 602028 <memset@GLIBC_2.2.5>
  4005f6:	68 02 00 00 00       	push   $0x2
  4005fb:	e9 c0 ff ff ff       	jmp    4005c0 <.plt>

0000000000400600 <__libc_start_main@plt>:
  400600:	ff 25 2a 1a 20 00    	jmp    *0x201a2a(%rip)        # 602030 <__libc_start_main@GLIBC_2.2.5>
  400606:	68 03 00 00 00       	push   $0x3
  40060b:	e9 b0 ff ff ff       	jmp    4005c0 <.plt>

0000000000400610 <fgets@plt>:
  400610:	ff 25 22 1a 20 00    	jmp    *0x201a22(%rip)        # 602038 <fgets@GLIBC_2.2.5>
  400616:	68 04 00 00 00       	push   $0x4
  40061b:	e9 a0 ff ff ff       	jmp    4005c0 <.plt>

0000000000400620 <__gmon_start__@plt>:
  400620:	ff 25 1a 1a 20 00    	jmp    *0x201a1a(%rip)        # 602040 <__gmon_start__>
  400626:	68 05 00 00 00       	push   $0x5
  40062b:	e9 90 ff ff ff       	jmp    4005c0 <.plt>

0000000000400630 <__isoc99_sscanf@plt>:
  400630:	ff 25 12 1a 20 00    	jmp    *0x201a12(%rip)        # 602048 <__isoc99_sscanf@GLIBC_2.7>
  400636:	68 06 00 00 00       	push   $0x6
  40063b:	e9 80 ff ff ff       	jmp    4005c0 <.plt>

0000000000400640 <fopen@plt>:
  400640:	ff 25 0a 1a 20 00    	jmp    *0x201a0a(%rip)        # 602050 <fopen@GLIBC_2.2.5>
  400646:	68 07 00 00 00       	push   $0x7
  40064b:	e9 70 ff ff ff       	jmp    4005c0 <.plt>

0000000000400650 <exit@plt>:
  400650:	ff 25 02 1a 20 00    	jmp    *0x201a02(%rip)        # 602058 <exit@GLIBC_2.2.5>
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
  40066f:	49 c7 c0 30 0b 40 00 	mov    $0x400b30,%r8
  400676:	48 c7 c1 c0 0a 40 00 	mov    $0x400ac0,%rcx
  40067d:	48 c7 c7 91 07 40 00 	mov    $0x400791,%rdi
  400684:	e8 77 ff ff ff       	call   400600 <__libc_start_main@plt>
  400689:	f4                   	hlt
  40068a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400690 <deregister_tm_clones>:
  400690:	b8 f7 21 60 00       	mov    $0x6021f7,%eax
  400695:	55                   	push   %rbp
  400696:	48 2d f0 21 60 00    	sub    $0x6021f0,%rax
  40069c:	48 83 f8 0e          	cmp    $0xe,%rax
  4006a0:	48 89 e5             	mov    %rsp,%rbp
  4006a3:	77 02                	ja     4006a7 <deregister_tm_clones+0x17>
  4006a5:	5d                   	pop    %rbp
  4006a6:	c3                   	ret
  4006a7:	b8 00 00 00 00       	mov    $0x0,%eax
  4006ac:	48 85 c0             	test   %rax,%rax
  4006af:	74 f4                	je     4006a5 <deregister_tm_clones+0x15>
  4006b1:	5d                   	pop    %rbp
  4006b2:	bf f0 21 60 00       	mov    $0x6021f0,%edi
  4006b7:	ff e0                	jmp    *%rax
  4006b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004006c0 <register_tm_clones>:
  4006c0:	b8 f0 21 60 00       	mov    $0x6021f0,%eax
  4006c5:	55                   	push   %rbp
  4006c6:	48 2d f0 21 60 00    	sub    $0x6021f0,%rax
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
  4006f2:	bf f0 21 60 00       	mov    $0x6021f0,%edi
  4006f7:	ff e2                	jmp    *%rdx
  4006f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400700 <__do_global_dtors_aux>:
  400700:	80 3d 01 1b 20 00 00 	cmpb   $0x0,0x201b01(%rip)        # 602208 <completed.6355>
  400707:	75 11                	jne    40071a <__do_global_dtors_aux+0x1a>
  400709:	55                   	push   %rbp
  40070a:	48 89 e5             	mov    %rsp,%rbp
  40070d:	e8 7e ff ff ff       	call   400690 <deregister_tm_clones>
  400712:	5d                   	pop    %rbp
  400713:	c6 05 ee 1a 20 00 01 	movb   $0x1,0x201aee(%rip)        # 602208 <completed.6355>
  40071a:	f3 c3                	repz ret
  40071c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400720 <frame_dummy>:
  400720:	48 83 3d f8 16 20 00 	cmpq   $0x0,0x2016f8(%rip)        # 601e20 <__JCR_END__>
  400727:	00 
  400728:	74 1e                	je     400748 <frame_dummy+0x28>
  40072a:	b8 00 00 00 00       	mov    $0x0,%eax
  40072f:	48 85 c0             	test   %rax,%rax
  400732:	74 14                	je     400748 <frame_dummy+0x28>
  400734:	55                   	push   %rbp
  400735:	bf 20 1e 60 00       	mov    $0x601e20,%edi
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
  4007ae:	48 8b 05 4b 1a 20 00 	mov    0x201a4b(%rip),%rax        # 602200 <stdin@GLIBC_2.2.5>
  4007b5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4007b9:	eb 73                	jmp    40082e <main+0x9d>
  4007bb:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
  4007bf:	75 4a                	jne    40080b <main+0x7a>
  4007c1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4007c5:	48 83 c0 08          	add    $0x8,%rax
  4007c9:	48 8b 00             	mov    (%rax),%rax
  4007cc:	be 5a 0b 40 00       	mov    $0x400b5a,%esi
  4007d1:	48 89 c7             	mov    %rax,%rdi
  4007d4:	e8 67 fe ff ff       	call   400640 <fopen@plt>
  4007d9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4007dd:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  4007e2:	75 4a                	jne    40082e <main+0x9d>
  4007e4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4007e8:	48 83 c0 08          	add    $0x8,%rax
  4007ec:	48 8b 00             	mov    (%rax),%rax
  4007ef:	48 89 c6             	mov    %rax,%rsi
  4007f2:	bf 60 0b 40 00       	mov    $0x400b60,%edi
  4007f7:	b8 00 00 00 00       	mov    $0x0,%eax
  4007fc:	e8 df fd ff ff       	call   4005e0 <printf@plt>
  400801:	bf 01 00 00 00       	mov    $0x1,%edi
  400806:	e8 45 fe ff ff       	call   400650 <exit@plt>
  40080b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40080f:	48 8b 00             	mov    (%rax),%rax
  400812:	48 89 c6             	mov    %rax,%rsi
  400815:	bf 84 0b 40 00       	mov    $0x400b84,%edi
  40081a:	b8 00 00 00 00       	mov    $0x0,%eax
  40081f:	e8 bc fd ff ff       	call   4005e0 <printf@plt>
  400824:	bf 01 00 00 00       	mov    $0x1,%edi
  400829:	e8 22 fe ff ff       	call   400650 <exit@plt>
  40082e:	bf a0 0b 40 00       	mov    $0x400ba0,%edi
  400833:	e8 98 fd ff ff       	call   4005d0 <puts@plt>
  400838:	bf d0 0b 40 00       	mov    $0x400bd0,%edi
  40083d:	e8 8e fd ff ff       	call   4005d0 <puts@plt>
  400842:	ba 00 01 00 00       	mov    $0x100,%edx
  400847:	be 00 00 00 00       	mov    $0x0,%esi
  40084c:	bf 20 22 60 00       	mov    $0x602220,%edi
  400851:	e8 9a fd ff ff       	call   4005f0 <memset@plt>
  400856:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40085a:	48 89 c2             	mov    %rax,%rdx
  40085d:	be 00 01 00 00       	mov    $0x100,%esi
  400862:	bf 20 22 60 00       	mov    $0x602220,%edi
  400867:	e8 a4 fd ff ff       	call   400610 <fgets@plt>
  40086c:	48 85 c0             	test   %rax,%rax
  40086f:	75 14                	jne    400885 <main+0xf4>
  400871:	bf 08 0c 40 00       	mov    $0x400c08,%edi
  400876:	e8 55 fd ff ff       	call   4005d0 <puts@plt>
  40087b:	bf 01 00 00 00       	mov    $0x1,%edi
  400880:	e8 cb fd ff ff       	call   400650 <exit@plt>
  400885:	be 00 01 00 00       	mov    $0x100,%esi
  40088a:	bf 20 22 60 00       	mov    $0x602220,%edi
  40088f:	e8 b9 fe ff ff       	call   40074d <fixinput>
  400894:	bf 20 22 60 00       	mov    $0x602220,%edi
  400899:	e8 7b 00 00 00       	call   400919 <phase>
  40089e:	85 c0                	test   %eax,%eax
  4008a0:	74 1b                	je     4008bd <main+0x12c>
  4008a2:	48 8b 05 d7 17 20 00 	mov    0x2017d7(%rip),%rax        # 602080 <phase_id>
  4008a9:	48 89 c6             	mov    %rax,%rsi
  4008ac:	bf 30 0c 40 00       	mov    $0x400c30,%edi
  4008b1:	b8 00 00 00 00       	mov    $0x0,%eax
  4008b6:	e8 25 fd ff ff       	call   4005e0 <printf@plt>
  4008bb:	eb 19                	jmp    4008d6 <main+0x145>
  4008bd:	48 8b 05 bc 17 20 00 	mov    0x2017bc(%rip),%rax        # 602080 <phase_id>
  4008c4:	48 89 c6             	mov    %rax,%rsi
  4008c7:	bf 64 0c 40 00       	mov    $0x400c64,%edi
  4008cc:	b8 00 00 00 00       	mov    $0x0,%eax
  4008d1:	e8 0a fd ff ff       	call   4005e0 <printf@plt>
  4008d6:	b8 00 00 00 00       	mov    $0x0,%eax
  4008db:	c9                   	leave
  4008dc:	c3                   	ret

00000000004008dd <__func_RkuPJQzd>:
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
  40091d:	48 83 ec 50          	sub    $0x50,%rsp
  400921:	48 89 7d c8          	mov    %rdi,-0x38(%rbp)
  400925:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  400929:	4c 8d 40 0c          	lea    0xc(%rax),%r8
  40092d:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  400931:	48 8d 78 08          	lea    0x8(%rax),%rdi
  400935:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  400939:	48 8d 48 04          	lea    0x4(%rax),%rcx
  40093d:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
  400941:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  400945:	48 8d 75 d0          	lea    -0x30(%rbp),%rsi
  400949:	48 83 c6 14          	add    $0x14,%rsi
  40094d:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  400952:	48 8d 75 d0          	lea    -0x30(%rbp),%rsi
  400956:	48 83 c6 10          	add    $0x10,%rsi
  40095a:	48 89 34 24          	mov    %rsi,(%rsp)
  40095e:	4d 89 c1             	mov    %r8,%r9
  400961:	49 89 f8             	mov    %rdi,%r8
  400964:	be 93 0c 40 00       	mov    $0x400c93,%esi # %d %d %d %d %d %d
  400969:	48 89 c7             	mov    %rax,%rdi
  40096c:	b8 00 00 00 00       	mov    $0x0,%eax
  400971:	e8 ba fc ff ff       	call   400630 <__isoc99_sscanf@plt>
  400976:	83 f8 06             	cmp    $0x6,%eax
  400979:	74 0a                	je     400985 <phase+0x6c>
  40097b:	b8 00 00 00 00       	mov    $0x0,%eax
  400980:	e9 2f 01 00 00       	jmp    400ab4 <phase+0x19b>
  400985:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)        # i = 0
  40098c:	e9 b9 00 00 00       	jmp    400a4a <phase+0x131>
  # for i = 0 to 5
  400991:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400994:	48 98                	cltq
  400996:	8b 44 85 d0          	mov    -0x30(%rbp,%rax,4),%eax # a[i]
  40099a:	89 45 f4             	mov    %eax,-0xc(%rbp)      # r = a[i]
  40099d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)       # j = 0
  4009a4:	e9 93 00 00 00       	jmp    400a3c <phase+0x123>
  # for j = 0 to 5
  4009a9:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4009ac:	48 63 c8             	movslq %eax,%rcx    # rcx : j
  4009af:	8b 45 f4             	mov    -0xc(%rbp),%eax  # rax : r
  4009b2:	48 63 d0             	movslq %eax,%rdx
  4009b5:	48 89 d0             	mov    %rdx,%rax
  4009b8:	48 01 c0             	add    %rax,%rax
  4009bb:	48 01 d0             	add    %rdx,%rax
  4009be:	48 01 c0             	add    %rax,%rax
  4009c1:	48 01 c8             	add    %rcx,%rax
  4009c4:	8b 04 85 60 21 60 00 	mov    0x602160(,%rax,4),%eax  # b[6 * r + j]
  4009cb:	89 45 f0             	mov    %eax,-0x10(%rbp)    # ebp - 10 = b[6 * r + j]
  4009ce:	8b 45 f8             	mov    -0x8(%rbp),%eax 
  4009d1:	48 63 c8             	movslq %eax,%rcx
  4009d4:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4009d7:	48 63 d0             	movslq %eax,%rdx
  4009da:	48 89 d0             	mov    %rdx,%rax
  4009dd:	48 01 c0             	add    %rax,%rax
  4009e0:	48 01 d0             	add    %rdx,%rax
  4009e3:	48 01 c0             	add    %rax,%rax
  4009e6:	48 01 c8             	add    %rcx,%rax
  4009e9:	8b 0c 85 60 21 60 00 	mov    0x602160(,%rax,4),%ecx    # ecx : b[6 * i + j]
  4009f0:	8b 45 f8             	mov    -0x8(%rbp),%eax
  4009f3:	48 63 f0             	movslq %eax,%rsi
  4009f6:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4009f9:	48 63 d0             	movslq %eax,%rdx
  4009fc:	48 89 d0             	mov    %rdx,%rax
  4009ff:	48 01 c0             	add    %rax,%rax
  400a02:	48 01 d0             	add    %rdx,%rax
  400a05:	48 01 c0             	add    %rax,%rax
  400a08:	48 01 f0             	add    %rsi,%rax
  400a0b:	89 0c 85 60 21 60 00 	mov    %ecx,0x602160(,%rax,4)   # b[6 * r + j] = b[6 * i + j]
  400a12:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400a15:	48 63 c8             	movslq %eax,%rcx      # rcx : j
  400a18:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400a1b:	48 63 d0             	movslq %eax,%rdx
  400a1e:	48 89 d0             	mov    %rdx,%rax
  400a21:	48 01 c0             	add    %rax,%rax
  400a24:	48 01 d0             	add    %rdx,%rax
  400a27:	48 01 c0             	add    %rax,%rax
  400a2a:	48 8d 14 08          	lea    (%rax,%rcx,1),%rdx
  400a2e:	8b 45 f0             	mov    -0x10(%rbp),%eax
  400a31:	89 04 95 60 21 60 00 	mov    %eax,0x602160(,%rdx,4)   # b[6 * i + j] = ebp - 10
  400a38:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)   # j++

  400a3c:	83 7d f8 05          	cmpl   $0x5,-0x8(%rbp)
  400a40:	0f 8e 63 ff ff ff    	jle    4009a9 <phase+0x90>
  400a46:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)   # i++

  400a4a:	83 7d fc 05          	cmpl   $0x5,-0x4(%rbp)
  400a4e:	0f 8e 3d ff ff ff    	jle    400991 <phase+0x78>

  400a54:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400a5b:	eb 4c                	jmp    400aa9 <phase+0x190>
 # from i = 0 to 5
  400a5d:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  400a64:	eb 39                	jmp    400a9f <phase+0x186>
 # from j = 0 to 5
  400a66:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400a69:	3b 45 f8             	cmp    -0x8(%rbp),%eax
  400a6c:	74 2d                	je     400a9b <phase+0x182> # i == j continue
  400a6e:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400a71:	48 63 c8             	movslq %eax,%rcx
  400a74:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400a77:	48 63 d0             	movslq %eax,%rdx
  400a7a:	48 89 d0             	mov    %rdx,%rax
  400a7d:	48 01 c0             	add    %rax,%rax
  400a80:	48 01 d0             	add    %rdx,%rax
  400a83:	48 01 c0             	add    %rax,%rax
  400a86:	48 01 c8             	add    %rcx,%rax
  400a89:	8b 04 85 60 21 60 00 	mov    0x602160(,%rax,4),%eax
  400a90:	85 c0                	test   %eax,%eax
  400a92:	74 07                	je     400a9b <phase+0x182> # b[6 * i + j] == 0 continue
  400a94:	b8 00 00 00 00       	mov    $0x0,%eax
  400a99:	eb 19                	jmp    400ab4 <phase+0x19b>

  400a9b:	83 45 f8 01          	addl   $0x1,-0x8(%rbp) # j++
  400a9f:	83 7d f8 05          	cmpl   $0x5,-0x8(%rbp)
  400aa3:	7e c1                	jle    400a66 <phase+0x14d>

  400aa5:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  400aa9:	83 7d fc 05          	cmpl   $0x5,-0x4(%rbp)
  400aad:	7e ae                	jle    400a5d <phase+0x144>

  400aaf:	b8 01 00 00 00       	mov    $0x1,%eax
  400ab4:	c9                   	leave
  400ab5:	c3                   	ret
  400ab6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  400abd:	00 00 00 

0000000000400ac0 <__libc_csu_init>:
  400ac0:	41 57                	push   %r15
  400ac2:	41 89 ff             	mov    %edi,%r15d
  400ac5:	41 56                	push   %r14
  400ac7:	49 89 f6             	mov    %rsi,%r14
  400aca:	41 55                	push   %r13
  400acc:	49 89 d5             	mov    %rdx,%r13
  400acf:	41 54                	push   %r12
  400ad1:	4c 8d 25 38 13 20 00 	lea    0x201338(%rip),%r12        # 601e10 <__frame_dummy_init_array_entry>
  400ad8:	55                   	push   %rbp
  400ad9:	48 8d 2d 38 13 20 00 	lea    0x201338(%rip),%rbp        # 601e18 <__do_global_dtors_aux_fini_array_entry>
  400ae0:	53                   	push   %rbx
  400ae1:	4c 29 e5             	sub    %r12,%rbp
  400ae4:	31 db                	xor    %ebx,%ebx
  400ae6:	48 c1 fd 03          	sar    $0x3,%rbp
  400aea:	48 83 ec 08          	sub    $0x8,%rsp
  400aee:	e8 a5 fa ff ff       	call   400598 <_init>
  400af3:	48 85 ed             	test   %rbp,%rbp
  400af6:	74 1e                	je     400b16 <__libc_csu_init+0x56>
  400af8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400aff:	00 
  400b00:	4c 89 ea             	mov    %r13,%rdx
  400b03:	4c 89 f6             	mov    %r14,%rsi
  400b06:	44 89 ff             	mov    %r15d,%edi
  400b09:	41 ff 14 dc          	call   *(%r12,%rbx,8)
  400b0d:	48 83 c3 01          	add    $0x1,%rbx
  400b11:	48 39 eb             	cmp    %rbp,%rbx
  400b14:	75 ea                	jne    400b00 <__libc_csu_init+0x40>
  400b16:	48 83 c4 08          	add    $0x8,%rsp
  400b1a:	5b                   	pop    %rbx
  400b1b:	5d                   	pop    %rbp
  400b1c:	41 5c                	pop    %r12
  400b1e:	41 5d                	pop    %r13
  400b20:	41 5e                	pop    %r14
  400b22:	41 5f                	pop    %r15
  400b24:	c3                   	ret
  400b25:	90                   	nop
  400b26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  400b2d:	00 00 00 

0000000000400b30 <__libc_csu_fini>:
  400b30:	f3 c3                	repz ret

Disassembly of section .fini:

0000000000400b34 <_fini>:
  400b34:	48 83 ec 08          	sub    $0x8,%rsp
  400b38:	48 83 c4 08          	add    $0x8,%rsp
  400b3c:	c3                   	ret
