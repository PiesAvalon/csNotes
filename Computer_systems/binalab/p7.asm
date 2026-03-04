
phase7:     file format elf64-x86-64


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
  40066f:	49 c7 c0 20 0b 40 00 	mov    $0x400b20,%r8
  400676:	48 c7 c1 b0 0a 40 00 	mov    $0x400ab0,%rcx
  40067d:	48 c7 c7 91 07 40 00 	mov    $0x400791,%rdi
  400684:	e8 77 ff ff ff       	call   400600 <__libc_start_main@plt>
  400689:	f4                   	hlt
  40068a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400690 <deregister_tm_clones>:
  400690:	b8 e7 21 60 00       	mov    $0x6021e7,%eax
  400695:	55                   	push   %rbp
  400696:	48 2d e0 21 60 00    	sub    $0x6021e0,%rax
  40069c:	48 83 f8 0e          	cmp    $0xe,%rax
  4006a0:	48 89 e5             	mov    %rsp,%rbp
  4006a3:	77 02                	ja     4006a7 <deregister_tm_clones+0x17>
  4006a5:	5d                   	pop    %rbp
  4006a6:	c3                   	ret
  4006a7:	b8 00 00 00 00       	mov    $0x0,%eax
  4006ac:	48 85 c0             	test   %rax,%rax
  4006af:	74 f4                	je     4006a5 <deregister_tm_clones+0x15>
  4006b1:	5d                   	pop    %rbp
  4006b2:	bf e0 21 60 00       	mov    $0x6021e0,%edi
  4006b7:	ff e0                	jmp    *%rax
  4006b9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004006c0 <register_tm_clones>:
  4006c0:	b8 e0 21 60 00       	mov    $0x6021e0,%eax
  4006c5:	55                   	push   %rbp
  4006c6:	48 2d e0 21 60 00    	sub    $0x6021e0,%rax
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
  4006f2:	bf e0 21 60 00       	mov    $0x6021e0,%edi
  4006f7:	ff e2                	jmp    *%rdx
  4006f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400700 <__do_global_dtors_aux>:
  400700:	80 3d e1 1a 20 00 00 	cmpb   $0x0,0x201ae1(%rip)        # 6021e8 <completed.6355>
  400707:	75 11                	jne    40071a <__do_global_dtors_aux+0x1a>
  400709:	55                   	push   %rbp
  40070a:	48 89 e5             	mov    %rsp,%rbp
  40070d:	e8 7e ff ff ff       	call   400690 <deregister_tm_clones>
  400712:	5d                   	pop    %rbp
  400713:	c6 05 ce 1a 20 00 01 	movb   $0x1,0x201ace(%rip)        # 6021e8 <completed.6355>
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
  4007ae:	48 8b 05 2b 1a 20 00 	mov    0x201a2b(%rip),%rax        # 6021e0 <stdin@GLIBC_2.2.5>
  4007b5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4007b9:	eb 73                	jmp    40082e <main+0x9d>
  4007bb:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
  4007bf:	75 4a                	jne    40080b <main+0x7a>
  4007c1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4007c5:	48 83 c0 08          	add    $0x8,%rax
  4007c9:	48 8b 00             	mov    (%rax),%rax
  4007cc:	be 4a 0b 40 00       	mov    $0x400b4a,%esi
  4007d1:	48 89 c7             	mov    %rax,%rdi
  4007d4:	e8 67 fe ff ff       	call   400640 <fopen@plt>
  4007d9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4007dd:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  4007e2:	75 4a                	jne    40082e <main+0x9d>
  4007e4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4007e8:	48 83 c0 08          	add    $0x8,%rax
  4007ec:	48 8b 00             	mov    (%rax),%rax
  4007ef:	48 89 c6             	mov    %rax,%rsi
  4007f2:	bf 50 0b 40 00       	mov    $0x400b50,%edi
  4007f7:	b8 00 00 00 00       	mov    $0x0,%eax
  4007fc:	e8 df fd ff ff       	call   4005e0 <printf@plt>
  400801:	bf 01 00 00 00       	mov    $0x1,%edi
  400806:	e8 45 fe ff ff       	call   400650 <exit@plt>
  40080b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40080f:	48 8b 00             	mov    (%rax),%rax
  400812:	48 89 c6             	mov    %rax,%rsi
  400815:	bf 74 0b 40 00       	mov    $0x400b74,%edi
  40081a:	b8 00 00 00 00       	mov    $0x0,%eax
  40081f:	e8 bc fd ff ff       	call   4005e0 <printf@plt>
  400824:	bf 01 00 00 00       	mov    $0x1,%edi
  400829:	e8 22 fe ff ff       	call   400650 <exit@plt>
  40082e:	bf 90 0b 40 00       	mov    $0x400b90,%edi
  400833:	e8 98 fd ff ff       	call   4005d0 <puts@plt>
  400838:	bf c0 0b 40 00       	mov    $0x400bc0,%edi
  40083d:	e8 8e fd ff ff       	call   4005d0 <puts@plt>
  400842:	ba 00 01 00 00       	mov    $0x100,%edx
  400847:	be 00 00 00 00       	mov    $0x0,%esi
  40084c:	bf 00 22 60 00       	mov    $0x602200,%edi
  400851:	e8 9a fd ff ff       	call   4005f0 <memset@plt>
  400856:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40085a:	48 89 c2             	mov    %rax,%rdx
  40085d:	be 00 01 00 00       	mov    $0x100,%esi
  400862:	bf 00 22 60 00       	mov    $0x602200,%edi
  400867:	e8 a4 fd ff ff       	call   400610 <fgets@plt>
  40086c:	48 85 c0             	test   %rax,%rax
  40086f:	75 14                	jne    400885 <main+0xf4>
  400871:	bf f8 0b 40 00       	mov    $0x400bf8,%edi
  400876:	e8 55 fd ff ff       	call   4005d0 <puts@plt>
  40087b:	bf 01 00 00 00       	mov    $0x1,%edi
  400880:	e8 cb fd ff ff       	call   400650 <exit@plt>
  400885:	be 00 01 00 00       	mov    $0x100,%esi
  40088a:	bf 00 22 60 00       	mov    $0x602200,%edi
  40088f:	e8 b9 fe ff ff       	call   40074d <fixinput>
  400894:	bf 00 22 60 00       	mov    $0x602200,%edi
  400899:	e8 4d 01 00 00       	call   4009eb <phase>
  40089e:	85 c0                	test   %eax,%eax
  4008a0:	74 1b                	je     4008bd <main+0x12c>
  4008a2:	48 8b 05 d7 17 20 00 	mov    0x2017d7(%rip),%rax        # 602080 <phase_id>
  4008a9:	48 89 c6             	mov    %rax,%rsi
  4008ac:	bf 20 0c 40 00       	mov    $0x400c20,%edi
  4008b1:	b8 00 00 00 00       	mov    $0x0,%eax
  4008b6:	e8 25 fd ff ff       	call   4005e0 <printf@plt>
  4008bb:	eb 19                	jmp    4008d6 <main+0x145>
  4008bd:	48 8b 05 bc 17 20 00 	mov    0x2017bc(%rip),%rax        # 602080 <phase_id>
  4008c4:	48 89 c6             	mov    %rax,%rsi
  4008c7:	bf 54 0c 40 00       	mov    $0x400c54,%edi
  4008cc:	b8 00 00 00 00       	mov    $0x0,%eax
  4008d1:	e8 0a fd ff ff       	call   4005e0 <printf@plt>
  4008d6:	b8 00 00 00 00       	mov    $0x0,%eax
  4008db:	c9                   	leave
  4008dc:	c3                   	ret

00000000004008dd <__func_jBMCoJsk>:
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
  4008f9:	5d                   	pop    %rbp
  4008fa:	c3                   	ret

00000000004008fb <_opfunc0_>: # return p + 0xd
  4008fb:	55                   	push   %rbp
  4008fc:	48 89 e5             	mov    %rsp,%rbp
  4008ff:	89 7d fc             	mov    %edi,-0x4(%rbp)
  400902:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400905:	83 c0 0d             	add    $0xd,%eax
  400908:	5d                   	pop    %rbp
  400909:	c3                   	ret

000000000040090a <_opfunc1_>: # return p + 0x2b
  40090a:	55                   	push   %rbp
  40090b:	48 89 e5             	mov    %rsp,%rbp
  40090e:	89 7d fc             	mov    %edi,-0x4(%rbp)
  400911:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400914:	83 c0 2b             	add    $0x2b,%eax
  400917:	5d                   	pop    %rbp
  400918:	c3                   	ret

0000000000400919 <_opfunc2_>: # return p + 0x29
  400919:	55                   	push   %rbp
  40091a:	48 89 e5             	mov    %rsp,%rbp
  40091d:	89 7d fc             	mov    %edi,-0x4(%rbp)
  400920:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400923:	83 c0 29             	add    $0x29,%eax
  400926:	5d                   	pop    %rbp
  400927:	c3                   	ret

0000000000400928 <_opfunc3_>: # return p + 0x25
  400928:	55                   	push   %rbp
  400929:	48 89 e5             	mov    %rsp,%rbp
  40092c:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40092f:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400932:	83 c0 25             	add    $0x25,%eax
  400935:	5d                   	pop    %rbp
  400936:	c3                   	ret

0000000000400937 <_opfunc4_>: # return p + 0x0b
  400937:	55                   	push   %rbp
  400938:	48 89 e5             	mov    %rsp,%rbp
  40093b:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40093e:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400941:	83 c0 0b             	add    $0xb,%eax
  400944:	5d                   	pop    %rbp
  400945:	c3                   	ret

0000000000400946 <_opfunc5_>: # return p + 0x03
  400946:	55                   	push   %rbp
  400947:	48 89 e5             	mov    %rsp,%rbp
  40094a:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40094d:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400950:	83 c0 03             	add    $0x3,%eax
  400953:	5d                   	pop    %rbp
  400954:	c3                   	ret

0000000000400955 <_opfunc6_>: # return p + 0x05
  400955:	55                   	push   %rbp
  400956:	48 89 e5             	mov    %rsp,%rbp
  400959:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40095c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40095f:	83 c0 05             	add    $0x5,%eax
  400962:	5d                   	pop    %rbp
  400963:	c3                   	ret

0000000000400964 <_opfunc7_>: # return p + 0x1f
  400964:	55                   	push   %rbp
  400965:	48 89 e5             	mov    %rsp,%rbp
  400968:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40096b:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40096e:	83 c0 1f             	add    $0x1f,%eax
  400971:	5d                   	pop    %rbp
  400972:	c3                   	ret

0000000000400973 <_opfunc8_>: # return p + 0x1d
  400973:	55                   	push   %rbp
  400974:	48 89 e5             	mov    %rsp,%rbp
  400977:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40097a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40097d:	83 c0 1d             	add    $0x1d,%eax
  400980:	5d                   	pop    %rbp
  400981:	c3                   	ret

0000000000400982 <_opfunc9_>: # return p + 0x17
  400982:	55                   	push   %rbp
  400983:	48 89 e5             	mov    %rsp,%rbp
  400986:	89 7d fc             	mov    %edi,-0x4(%rbp)
  400989:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40098c:	83 c0 17             	add    $0x17,%eax
  40098f:	5d                   	pop    %rbp
  400990:	c3                   	ret

0000000000400991 <_opfunc10_>: # return p + 0x35
  400991:	55                   	push   %rbp
  400992:	48 89 e5             	mov    %rsp,%rbp
  400995:	89 7d fc             	mov    %edi,-0x4(%rbp)
  400998:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40099b:	83 c0 35             	add    $0x35,%eax
  40099e:	5d                   	pop    %rbp
  40099f:	c3                   	ret

00000000004009a0 <_opfunc11_>: # return p + 0x02  
  4009a0:	55                   	push   %rbp
  4009a1:	48 89 e5             	mov    %rsp,%rbp
  4009a4:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4009a7:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4009aa:	83 c0 02             	add    $0x2,%eax
  4009ad:	5d                   	pop    %rbp
  4009ae:	c3                   	ret

00000000004009af <_opfunc12_>: # return p + 0x2f
  4009af:	55                   	push   %rbp
  4009b0:	48 89 e5             	mov    %rsp,%rbp
  4009b3:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4009b6:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4009b9:	83 c0 2f             	add    $0x2f,%eax
  4009bc:	5d                   	pop    %rbp
  4009bd:	c3                   	ret

00000000004009be <_opfunc13_>: # return p + 0x13
  4009be:	55                   	push   %rbp
  4009bf:	48 89 e5             	mov    %rsp,%rbp
  4009c2:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4009c5:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4009c8:	83 c0 13             	add    $0x13,%eax
  4009cb:	5d                   	pop    %rbp
  4009cc:	c3                   	ret

00000000004009cd <_opfunc14_>: # return p + 0x07
  4009cd:	55                   	push   %rbp
  4009ce:	48 89 e5             	mov    %rsp,%rbp
  4009d1:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4009d4:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4009d7:	83 c0 07             	add    $0x7,%eax
  4009da:	5d                   	pop    %rbp
  4009db:	c3                   	ret

00000000004009dc <_opfunc15_>: # return p + 0x11  
  4009dc:	55                   	push   %rbp
  4009dd:	48 89 e5             	mov    %rsp,%rbp
  4009e0:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4009e3:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4009e6:	83 c0 11             	add    $0x11,%eax
  4009e9:	5d                   	pop    %rbp
  4009ea:	c3                   	ret

00000000004009eb <phase>:
  4009eb:	55                   	push   %rbp
  4009ec:	48 89 e5             	mov    %rsp,%rbp
  4009ef:	48 83 ec 30          	sub    $0x30,%rsp
  4009f3:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  4009f7:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  4009fe:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  400a02:	4c 8d 40 0c          	lea    0xc(%rax),%r8
  400a06:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  400a0a:	48 8d 78 08          	lea    0x8(%rax),%rdi
  400a0e:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  400a12:	48 8d 48 04          	lea    0x4(%rax),%rcx
  400a16:	48 8d 55 e0          	lea    -0x20(%rbp),%rdx
  400a1a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400a1e:	48 8d 75 e0          	lea    -0x20(%rbp),%rsi
  400a22:	48 83 c6 10          	add    $0x10,%rsi
  400a26:	48 89 34 24          	mov    %rsi,(%rsp)
  400a2a:	4d 89 c1             	mov    %r8,%r9
  400a2d:	49 89 f8             	mov    %rdi,%r8
  400a30:	be 83 0c 40 00       	mov    $0x400c83,%esi
  400a35:	48 89 c7             	mov    %rax,%rdi
  400a38:	b8 00 00 00 00       	mov    $0x0,%eax
  400a3d:	e8 ee fb ff ff       	call   400630 <__isoc99_sscanf@plt>
  400a42:	83 f8 05             	cmp    $0x5,%eax
  400a45:	74 07                	je     400a4e <phase+0x63>
  400a47:	b8 00 00 00 00       	mov    $0x0,%eax
  400a4c:	eb 57                	jmp    400aa5 <phase+0xba>
  400a4e:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400a55:	eb 3e                	jmp    400a95 <phase+0xaa>
  # from i = 0 to 4
  400a57:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400a5a:	48 98                	cltq
  400a5c:	8b 44 85 e0          	mov    -0x20(%rbp,%rax,4),%eax
  400a60:	89 45 f4             	mov    %eax,-0xc(%rbp)
  400a63:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  400a67:	78 25                	js     400a8e <phase+0xa3> # if a[i] < 0 : fail
  400a69:	8b 45 f4             	mov    -0xc(%rbp),%eax
  400a6c:	83 f8 0f             	cmp    $0xf,%eax
  400a6f:	77 1d                	ja     400a8e <phase+0xa3> # if a[i] > 15 : fail
  400a71:	8b 45 f4             	mov    -0xc(%rbp),%eax
  400a74:	48 98                	cltq
  400a76:	48 8b 04 c5 60 21 60 	mov    0x602160(,%rax,8),%rax # 0x4008fb
  400a7d:	00 
  400a7e:	8b 55 f8             	mov    -0x8(%rbp),%edx
  400a81:	89 d7                	mov    %edx,%edi
  400a83:	ff d0                	call   *%rax
  400a85:	89 45 f8             	mov    %eax,-0x8(%rbp)
  400a88:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  400a8c:	eb 07                	jmp    400a95 <phase+0xaa>
  400a8e:	b8 00 00 00 00       	mov    $0x0,%eax
  400a93:	eb 10                	jmp    400aa5 <phase+0xba>

  400a95:	83 7d fc 04          	cmpl   $0x4,-0x4(%rbp)
  400a99:	7e bc                	jle    400a57 <phase+0x6c>
  400a9b:	83 7d f8 46          	cmpl   $0x46,-0x8(%rbp)
  400a9f:	0f 94 c0             	sete   %al
  400aa2:	0f b6 c0             	movzbl %al,%eax
  400aa5:	c9                   	leave
  400aa6:	c3                   	ret
  400aa7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400aae:	00 00 

0000000000400ab0 <__libc_csu_init>:
  400ab0:	41 57                	push   %r15
  400ab2:	41 89 ff             	mov    %edi,%r15d
  400ab5:	41 56                	push   %r14
  400ab7:	49 89 f6             	mov    %rsi,%r14
  400aba:	41 55                	push   %r13
  400abc:	49 89 d5             	mov    %rdx,%r13
  400abf:	41 54                	push   %r12
  400ac1:	4c 8d 25 48 13 20 00 	lea    0x201348(%rip),%r12        # 601e10 <__frame_dummy_init_array_entry>
  400ac8:	55                   	push   %rbp
  400ac9:	48 8d 2d 48 13 20 00 	lea    0x201348(%rip),%rbp        # 601e18 <__do_global_dtors_aux_fini_array_entry>
  400ad0:	53                   	push   %rbx
  400ad1:	4c 29 e5             	sub    %r12,%rbp
  400ad4:	31 db                	xor    %ebx,%ebx
  400ad6:	48 c1 fd 03          	sar    $0x3,%rbp
  400ada:	48 83 ec 08          	sub    $0x8,%rsp
  400ade:	e8 b5 fa ff ff       	call   400598 <_init>
  400ae3:	48 85 ed             	test   %rbp,%rbp
  400ae6:	74 1e                	je     400b06 <__libc_csu_init+0x56>
  400ae8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400aef:	00 
  400af0:	4c 89 ea             	mov    %r13,%rdx
  400af3:	4c 89 f6             	mov    %r14,%rsi
  400af6:	44 89 ff             	mov    %r15d,%edi
  400af9:	41 ff 14 dc          	call   *(%r12,%rbx,8)
  400afd:	48 83 c3 01          	add    $0x1,%rbx
  400b01:	48 39 eb             	cmp    %rbp,%rbx
  400b04:	75 ea                	jne    400af0 <__libc_csu_init+0x40>
  400b06:	48 83 c4 08          	add    $0x8,%rsp
  400b0a:	5b                   	pop    %rbx
  400b0b:	5d                   	pop    %rbp
  400b0c:	41 5c                	pop    %r12
  400b0e:	41 5d                	pop    %r13
  400b10:	41 5e                	pop    %r14
  400b12:	41 5f                	pop    %r15
  400b14:	c3                   	ret
  400b15:	90                   	nop
  400b16:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  400b1d:	00 00 00 

0000000000400b20 <__libc_csu_fini>:
  400b20:	f3 c3                	repz ret

Disassembly of section .fini:

0000000000400b24 <_fini>:
  400b24:	48 83 ec 08          	sub    $0x8,%rsp
  400b28:	48 83 c4 08          	add    $0x8,%rsp
  400b2c:	c3                   	ret
