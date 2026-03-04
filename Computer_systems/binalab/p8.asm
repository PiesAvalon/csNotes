
phase8:     file format elf64-x86-64


Disassembly of section .init:

0000000000400590 <_init>:
  400590:	48 83 ec 08          	sub    $0x8,%rsp
  400594:	48 8b 05 5d 0a 20 00 	mov    0x200a5d(%rip),%rax        # 600ff8 <__gmon_start__>
  40059b:	48 85 c0             	test   %rax,%rax
  40059e:	74 05                	je     4005a5 <_init+0x15>
  4005a0:	e8 7b 00 00 00       	call   400620 <__gmon_start__@plt>
  4005a5:	48 83 c4 08          	add    $0x8,%rsp
  4005a9:	c3                   	ret

Disassembly of section .plt:

00000000004005b0 <.plt>:
  4005b0:	ff 35 52 0a 20 00    	push   0x200a52(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  4005b6:	ff 25 54 0a 20 00    	jmp    *0x200a54(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  4005bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005c0 <puts@plt>:
  4005c0:	ff 25 52 0a 20 00    	jmp    *0x200a52(%rip)        # 601018 <puts@GLIBC_2.2.5>
  4005c6:	68 00 00 00 00       	push   $0x0
  4005cb:	e9 e0 ff ff ff       	jmp    4005b0 <.plt>

00000000004005d0 <strlen@plt>:
  4005d0:	ff 25 4a 0a 20 00    	jmp    *0x200a4a(%rip)        # 601020 <strlen@GLIBC_2.2.5>
  4005d6:	68 01 00 00 00       	push   $0x1
  4005db:	e9 d0 ff ff ff       	jmp    4005b0 <.plt>

00000000004005e0 <printf@plt>:
  4005e0:	ff 25 42 0a 20 00    	jmp    *0x200a42(%rip)        # 601028 <printf@GLIBC_2.2.5>
  4005e6:	68 02 00 00 00       	push   $0x2
  4005eb:	e9 c0 ff ff ff       	jmp    4005b0 <.plt>

00000000004005f0 <memset@plt>:
  4005f0:	ff 25 3a 0a 20 00    	jmp    *0x200a3a(%rip)        # 601030 <memset@GLIBC_2.2.5>
  4005f6:	68 03 00 00 00       	push   $0x3
  4005fb:	e9 b0 ff ff ff       	jmp    4005b0 <.plt>

0000000000400600 <__libc_start_main@plt>:
  400600:	ff 25 32 0a 20 00    	jmp    *0x200a32(%rip)        # 601038 <__libc_start_main@GLIBC_2.2.5>
  400606:	68 04 00 00 00       	push   $0x4
  40060b:	e9 a0 ff ff ff       	jmp    4005b0 <.plt>

0000000000400610 <fgets@plt>:
  400610:	ff 25 2a 0a 20 00    	jmp    *0x200a2a(%rip)        # 601040 <fgets@GLIBC_2.2.5>
  400616:	68 05 00 00 00       	push   $0x5
  40061b:	e9 90 ff ff ff       	jmp    4005b0 <.plt>

0000000000400620 <__gmon_start__@plt>:
  400620:	ff 25 22 0a 20 00    	jmp    *0x200a22(%rip)        # 601048 <__gmon_start__>
  400626:	68 06 00 00 00       	push   $0x6
  40062b:	e9 80 ff ff ff       	jmp    4005b0 <.plt>

0000000000400630 <fopen@plt>:
  400630:	ff 25 1a 0a 20 00    	jmp    *0x200a1a(%rip)        # 601050 <fopen@GLIBC_2.2.5>
  400636:	68 07 00 00 00       	push   $0x7
  40063b:	e9 70 ff ff ff       	jmp    4005b0 <.plt>

0000000000400640 <exit@plt>:
  400640:	ff 25 12 0a 20 00    	jmp    *0x200a12(%rip)        # 601058 <exit@GLIBC_2.2.5>
  400646:	68 08 00 00 00       	push   $0x8
  40064b:	e9 60 ff ff ff       	jmp    4005b0 <.plt>

Disassembly of section .text:

0000000000400650 <_start>:
  400650:	31 ed                	xor    %ebp,%ebp
  400652:	49 89 d1             	mov    %rdx,%r9
  400655:	5e                   	pop    %rsi
  400656:	48 89 e2             	mov    %rsp,%rdx
  400659:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40065d:	50                   	push   %rax
  40065e:	54                   	push   %rsp
  40065f:	49 c7 c0 c0 0a 40 00 	mov    $0x400ac0,%r8
  400666:	48 c7 c1 50 0a 40 00 	mov    $0x400a50,%rcx
  40066d:	48 c7 c7 81 07 40 00 	mov    $0x400781,%rdi
  400674:	e8 87 ff ff ff       	call   400600 <__libc_start_main@plt>
  400679:	f4                   	hlt
  40067a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400680 <deregister_tm_clones>:
  400680:	b8 7f 12 60 00       	mov    $0x60127f,%eax
  400685:	55                   	push   %rbp
  400686:	48 2d 78 12 60 00    	sub    $0x601278,%rax
  40068c:	48 83 f8 0e          	cmp    $0xe,%rax
  400690:	48 89 e5             	mov    %rsp,%rbp
  400693:	77 02                	ja     400697 <deregister_tm_clones+0x17>
  400695:	5d                   	pop    %rbp
  400696:	c3                   	ret
  400697:	b8 00 00 00 00       	mov    $0x0,%eax
  40069c:	48 85 c0             	test   %rax,%rax
  40069f:	74 f4                	je     400695 <deregister_tm_clones+0x15>
  4006a1:	5d                   	pop    %rbp
  4006a2:	bf 78 12 60 00       	mov    $0x601278,%edi
  4006a7:	ff e0                	jmp    *%rax
  4006a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004006b0 <register_tm_clones>:
  4006b0:	b8 78 12 60 00       	mov    $0x601278,%eax
  4006b5:	55                   	push   %rbp
  4006b6:	48 2d 78 12 60 00    	sub    $0x601278,%rax
  4006bc:	48 c1 f8 03          	sar    $0x3,%rax
  4006c0:	48 89 e5             	mov    %rsp,%rbp
  4006c3:	48 89 c2             	mov    %rax,%rdx
  4006c6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4006ca:	48 01 d0             	add    %rdx,%rax
  4006cd:	48 d1 f8             	sar    $1,%rax
  4006d0:	75 02                	jne    4006d4 <register_tm_clones+0x24>
  4006d2:	5d                   	pop    %rbp
  4006d3:	c3                   	ret
  4006d4:	ba 00 00 00 00       	mov    $0x0,%edx
  4006d9:	48 85 d2             	test   %rdx,%rdx
  4006dc:	74 f4                	je     4006d2 <register_tm_clones+0x22>
  4006de:	5d                   	pop    %rbp
  4006df:	48 89 c6             	mov    %rax,%rsi
  4006e2:	bf 78 12 60 00       	mov    $0x601278,%edi
  4006e7:	ff e2                	jmp    *%rdx
  4006e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004006f0 <__do_global_dtors_aux>:
  4006f0:	80 3d 91 0b 20 00 00 	cmpb   $0x0,0x200b91(%rip)        # 601288 <completed.6355>
  4006f7:	75 11                	jne    40070a <__do_global_dtors_aux+0x1a>
  4006f9:	55                   	push   %rbp
  4006fa:	48 89 e5             	mov    %rsp,%rbp
  4006fd:	e8 7e ff ff ff       	call   400680 <deregister_tm_clones>
  400702:	5d                   	pop    %rbp
  400703:	c6 05 7e 0b 20 00 01 	movb   $0x1,0x200b7e(%rip)        # 601288 <completed.6355>
  40070a:	f3 c3                	repz ret
  40070c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400710 <frame_dummy>:
  400710:	48 83 3d 08 07 20 00 	cmpq   $0x0,0x200708(%rip)        # 600e20 <__JCR_END__>
  400717:	00 
  400718:	74 1e                	je     400738 <frame_dummy+0x28>
  40071a:	b8 00 00 00 00       	mov    $0x0,%eax
  40071f:	48 85 c0             	test   %rax,%rax
  400722:	74 14                	je     400738 <frame_dummy+0x28>
  400724:	55                   	push   %rbp
  400725:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  40072a:	48 89 e5             	mov    %rsp,%rbp
  40072d:	ff d0                	call   *%rax
  40072f:	5d                   	pop    %rbp
  400730:	e9 7b ff ff ff       	jmp    4006b0 <register_tm_clones>
  400735:	0f 1f 00             	nopl   (%rax)
  400738:	e9 73 ff ff ff       	jmp    4006b0 <register_tm_clones>

000000000040073d <fixinput>:
  40073d:	55                   	push   %rbp
  40073e:	48 89 e5             	mov    %rsp,%rbp
  400741:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400745:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  400748:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  40074b:	48 98                	cltq
  40074d:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
  400751:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400755:	48 01 d0             	add    %rdx,%rax
  400758:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40075c:	eb 17                	jmp    400775 <fixinput+0x38>
  40075e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400762:	0f b6 00             	movzbl (%rax),%eax
  400765:	3c 0a                	cmp    $0xa,%al
  400767:	75 07                	jne    400770 <fixinput+0x33>
  400769:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40076d:	c6 00 00             	movb   $0x0,(%rax)
  400770:	48 83 6d f8 01       	subq   $0x1,-0x8(%rbp)
  400775:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400779:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  40077d:	73 df                	jae    40075e <fixinput+0x21>
  40077f:	5d                   	pop    %rbp
  400780:	c3                   	ret

0000000000400781 <main>:
  400781:	55                   	push   %rbp
  400782:	48 89 e5             	mov    %rsp,%rbp
  400785:	48 83 ec 20          	sub    $0x20,%rsp
  400789:	89 7d ec             	mov    %edi,-0x14(%rbp)
  40078c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400790:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  400797:	00 
  400798:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
  40079c:	75 0d                	jne    4007ab <main+0x2a>
  40079e:	48 8b 05 db 0a 20 00 	mov    0x200adb(%rip),%rax        # 601280 <stdin@GLIBC_2.2.5>
  4007a5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4007a9:	eb 73                	jmp    40081e <main+0x9d>
  4007ab:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
  4007af:	75 4a                	jne    4007fb <main+0x7a>
  4007b1:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4007b5:	48 83 c0 08          	add    $0x8,%rax
  4007b9:	48 8b 00             	mov    (%rax),%rax
  4007bc:	be ea 0a 40 00       	mov    $0x400aea,%esi
  4007c1:	48 89 c7             	mov    %rax,%rdi
  4007c4:	e8 67 fe ff ff       	call   400630 <fopen@plt>
  4007c9:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4007cd:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  4007d2:	75 4a                	jne    40081e <main+0x9d>
  4007d4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4007d8:	48 83 c0 08          	add    $0x8,%rax
  4007dc:	48 8b 00             	mov    (%rax),%rax
  4007df:	48 89 c6             	mov    %rax,%rsi
  4007e2:	bf f0 0a 40 00       	mov    $0x400af0,%edi
  4007e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4007ec:	e8 ef fd ff ff       	call   4005e0 <printf@plt>
  4007f1:	bf 01 00 00 00       	mov    $0x1,%edi
  4007f6:	e8 45 fe ff ff       	call   400640 <exit@plt>
  4007fb:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4007ff:	48 8b 00             	mov    (%rax),%rax
  400802:	48 89 c6             	mov    %rax,%rsi
  400805:	bf 14 0b 40 00       	mov    $0x400b14,%edi
  40080a:	b8 00 00 00 00       	mov    $0x0,%eax
  40080f:	e8 cc fd ff ff       	call   4005e0 <printf@plt>
  400814:	bf 01 00 00 00       	mov    $0x1,%edi
  400819:	e8 22 fe ff ff       	call   400640 <exit@plt>
  40081e:	bf 30 0b 40 00       	mov    $0x400b30,%edi
  400823:	e8 98 fd ff ff       	call   4005c0 <puts@plt>
  400828:	bf 60 0b 40 00       	mov    $0x400b60,%edi
  40082d:	e8 8e fd ff ff       	call   4005c0 <puts@plt>
  400832:	ba 00 01 00 00       	mov    $0x100,%edx
  400837:	be 00 00 00 00       	mov    $0x0,%esi
  40083c:	bf a0 12 60 00       	mov    $0x6012a0,%edi
  400841:	e8 aa fd ff ff       	call   4005f0 <memset@plt>
  400846:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40084a:	48 89 c2             	mov    %rax,%rdx
  40084d:	be 00 01 00 00       	mov    $0x100,%esi
  400852:	bf a0 12 60 00       	mov    $0x6012a0,%edi
  400857:	e8 b4 fd ff ff       	call   400610 <fgets@plt>
  40085c:	48 85 c0             	test   %rax,%rax
  40085f:	75 14                	jne    400875 <main+0xf4>
  400861:	bf 98 0b 40 00       	mov    $0x400b98,%edi
  400866:	e8 55 fd ff ff       	call   4005c0 <puts@plt>
  40086b:	bf 01 00 00 00       	mov    $0x1,%edi
  400870:	e8 cb fd ff ff       	call   400640 <exit@plt>
  400875:	be 00 01 00 00       	mov    $0x100,%esi
  40087a:	bf a0 12 60 00       	mov    $0x6012a0,%edi
  40087f:	e8 b9 fe ff ff       	call   40073d <fixinput>
  400884:	bf a0 12 60 00       	mov    $0x6012a0,%edi
  400889:	e8 1b 01 00 00       	call   4009a9 <phase>
  40088e:	85 c0                	test   %eax,%eax
  400890:	74 1b                	je     4008ad <main+0x12c>
  400892:	48 8b 05 e7 07 20 00 	mov    0x2007e7(%rip),%rax        # 601080 <phase_id>
  400899:	48 89 c6             	mov    %rax,%rsi
  40089c:	bf c0 0b 40 00       	mov    $0x400bc0,%edi
  4008a1:	b8 00 00 00 00       	mov    $0x0,%eax
  4008a6:	e8 35 fd ff ff       	call   4005e0 <printf@plt>
  4008ab:	eb 19                	jmp    4008c6 <main+0x145>
  4008ad:	48 8b 05 cc 07 20 00 	mov    0x2007cc(%rip),%rax        # 601080 <phase_id>
  4008b4:	48 89 c6             	mov    %rax,%rsi
  4008b7:	bf f4 0b 40 00       	mov    $0x400bf4,%edi
  4008bc:	b8 00 00 00 00       	mov    $0x0,%eax
  4008c1:	e8 1a fd ff ff       	call   4005e0 <printf@plt>
  4008c6:	b8 00 00 00 00       	mov    $0x0,%eax
  4008cb:	c9                   	leave
  4008cc:	c3                   	ret

00000000004008cd <__func_gJZYrGNA>:
  4008cd:	55                   	push   %rbp
  4008ce:	48 89 e5             	mov    %rsp,%rbp
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
  40090d:	5d                   	pop    %rbp
  40090e:	c3                   	ret

000000000040090f <access>:
  40090f:	55                   	push   %rbp
  400910:	48 89 e5             	mov    %rsp,%rbp
  400913:	89 f8                	mov    %edi,%eax
  400915:	88 45 dc             	mov    %al,-0x24(%rbp)
  400918:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
  40091f:	00 
  400920:	48 8b 05 49 09 20 00 	mov    0x200949(%rip),%rax        # 601270 <head>
  400927:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40092b:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
  400932:	00 
  400933:	eb 67                	jmp    40099c <access+0x8d>
  # while head != NULL
  400935:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400939:	0f b6 00             	movzbl (%rax),%eax
  40093c:	3a 45 dc             	cmp    -0x24(%rbp),%al
  40093f:	75 47                	jne    400988 <access+0x79> # if q[i] ! = cur->data continue
  400941:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400945:	48 83 c0 01          	add    $0x1,%rax
  400949:	48 89 45 e8          	mov    %rax,-0x18(%rbp)   # result = &cur->next
  40094d:	48 8b 05 1c 09 20 00 	mov    0x20091c(%rip),%rax        # 601270 <head>
  400954:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
  400958:	74 2c                	je     400986 <access+0x77>  # if cur == head : return
  40095a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax  # cur
  40095e:	48 8b 50 08          	mov    0x8(%rax),%rdx   # cur->next
  400962:	48 8b 45 f0          	mov    -0x10(%rbp),%rax   # rax = pre
  400966:	48 89 50 08          	mov    %rdx,0x8(%rax)   # pre->next = cur->next
  40096a:	48 8b 15 ff 08 20 00 	mov    0x2008ff(%rip),%rdx        # 601270 <head>
  400971:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400975:	48 89 50 08          	mov    %rdx,0x8(%rax)  # cur->next = head
  400979:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40097d:	48 89 05 ec 08 20 00 	mov    %rax,0x2008ec(%rip)        # 601270 <head> # head = cur
  400984:	eb 1d                	jmp    4009a3 <access+0x94>
  400986:	eb 1b                	jmp    4009a3 <access+0x94>

  400988:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40098c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  400990:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400994:	48 8b 40 08          	mov    0x8(%rax),%rax
  400998:	48 89 45 f8          	mov    %rax,-0x8(%rbp)    # rbp - 10 = cur, cur = cur->next

  40099c:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  4009a1:	75 92                	jne    400935 <access+0x26>
  4009a3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4009a7:	5d                   	pop    %rbp
  4009a8:	c3                   	ret

00000000004009a9 <phase>:
  4009a9:	55                   	push   %rbp
  4009aa:	48 89 e5             	mov    %rsp,%rbp
  4009ad:	48 83 ec 20          	sub    $0x20,%rsp
  4009b1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4009b5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4009b9:	48 89 c7             	mov    %rax,%rdi
  4009bc:	e8 0f fc ff ff       	call   4005d0 <strlen@plt>
  4009c1:	48 83 f8 0f          	cmp    $0xf,%rax
  4009c5:	74 07                	je     4009ce <phase+0x25> # strlen = 15
  4009c7:	b8 00 00 00 00       	mov    $0x0,%eax
  4009cc:	eb 7c                	jmp    400a4a <phase+0xa1>
  4009ce:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  4009d5:	eb 1e                	jmp    4009f5 <phase+0x4c>
  # from i = 0 to 14
  4009d7:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4009da:	48 63 d0             	movslq %eax,%rdx
  4009dd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4009e1:	48 01 d0             	add    %rdx,%rax
  4009e4:	0f b6 00             	movzbl (%rax),%eax
  4009e7:	0f be c0             	movsbl %al,%eax
  4009ea:	89 c7                	mov    %eax,%edi
  4009ec:	e8 1e ff ff ff       	call   40090f <access>
  4009f1:	83 45 f4 01          	addl   $0x1,-0xc(%rbp)

  4009f5:	83 7d f4 0e          	cmpl   $0xe,-0xc(%rbp)
  4009f9:	7e dc                	jle    4009d7 <phase+0x2e>

  4009fb:	48 8b 05 6e 08 20 00 	mov    0x20086e(%rip),%rax        # 601270 <head>
  400a02:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400a06:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  400a0d:	eb 2f                	jmp    400a3e <phase+0x95>
  # while cur != NULL
  400a0f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400a13:	0f b6 50 01          	movzbl 0x1(%rax),%edx
  400a17:	8b 45 f4             	mov    -0xc(%rbp),%eax
  400a1a:	48 98                	cltq
  400a1c:	0f b6 80 23 0c 40 00 	movzbl 0x400c23(%rax),%eax # b[i] b = "FNOQHAPCKBMTJSV"
  400a23:	38 c2                	cmp    %al,%dl
  400a25:	74 07                	je     400a2e <phase+0x85> # if b[i] == cur->data continue
  400a27:	b8 00 00 00 00       	mov    $0x0,%eax
  400a2c:	eb 1c                	jmp    400a4a <phase+0xa1>
  400a2e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400a32:	48 8b 40 08          	mov    0x8(%rax),%rax
  400a36:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400a3a:	83 45 f4 01          	addl   $0x1,-0xc(%rbp) # i++

  400a3e:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  400a43:	75 ca                	jne    400a0f <phase+0x66>
  400a45:	b8 01 00 00 00       	mov    $0x1,%eax
  400a4a:	c9                   	leave
  400a4b:	c3                   	ret
  400a4c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400a50 <__libc_csu_init>:
  400a50:	41 57                	push   %r15
  400a52:	41 89 ff             	mov    %edi,%r15d
  400a55:	41 56                	push   %r14
  400a57:	49 89 f6             	mov    %rsi,%r14
  400a5a:	41 55                	push   %r13
  400a5c:	49 89 d5             	mov    %rdx,%r13
  400a5f:	41 54                	push   %r12
  400a61:	4c 8d 25 a8 03 20 00 	lea    0x2003a8(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400a68:	55                   	push   %rbp
  400a69:	48 8d 2d a8 03 20 00 	lea    0x2003a8(%rip),%rbp        # 600e18 <__do_global_dtors_aux_fini_array_entry>
  400a70:	53                   	push   %rbx
  400a71:	4c 29 e5             	sub    %r12,%rbp
  400a74:	31 db                	xor    %ebx,%ebx
  400a76:	48 c1 fd 03          	sar    $0x3,%rbp
  400a7a:	48 83 ec 08          	sub    $0x8,%rsp
  400a7e:	e8 0d fb ff ff       	call   400590 <_init>
  400a83:	48 85 ed             	test   %rbp,%rbp
  400a86:	74 1e                	je     400aa6 <__libc_csu_init+0x56>
  400a88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400a8f:	00 
  400a90:	4c 89 ea             	mov    %r13,%rdx
  400a93:	4c 89 f6             	mov    %r14,%rsi
  400a96:	44 89 ff             	mov    %r15d,%edi
  400a99:	41 ff 14 dc          	call   *(%r12,%rbx,8)
  400a9d:	48 83 c3 01          	add    $0x1,%rbx
  400aa1:	48 39 eb             	cmp    %rbp,%rbx
  400aa4:	75 ea                	jne    400a90 <__libc_csu_init+0x40>
  400aa6:	48 83 c4 08          	add    $0x8,%rsp
  400aaa:	5b                   	pop    %rbx
  400aab:	5d                   	pop    %rbp
  400aac:	41 5c                	pop    %r12
  400aae:	41 5d                	pop    %r13
  400ab0:	41 5e                	pop    %r14
  400ab2:	41 5f                	pop    %r15
  400ab4:	c3                   	ret
  400ab5:	90                   	nop
  400ab6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  400abd:	00 00 00 

0000000000400ac0 <__libc_csu_fini>:
  400ac0:	f3 c3                	repz ret

Disassembly of section .fini:

0000000000400ac4 <_fini>:
  400ac4:	48 83 ec 08          	sub    $0x8,%rsp
  400ac8:	48 83 c4 08          	add    $0x8,%rsp
  400acc:	c3                   	ret
