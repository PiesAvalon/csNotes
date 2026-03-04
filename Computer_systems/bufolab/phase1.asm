
phase1:     file format elf64-x86-64


Disassembly of section .init:

0000000000400618 <_init>:
  400618:	48 83 ec 08          	sub    $0x8,%rsp
  40061c:	48 8b 05 d5 19 20 00 	mov    0x2019d5(%rip),%rax        # 601ff8 <__gmon_start__>
  400623:	48 85 c0             	test   %rax,%rax
  400626:	74 05                	je     40062d <_init+0x15>
  400628:	e8 b3 00 00 00       	call   4006e0 <__gmon_start__@plt>
  40062d:	48 83 c4 08          	add    $0x8,%rsp
  400631:	c3                   	ret

Disassembly of section .plt:

0000000000400640 <.plt>:
  400640:	ff 35 c2 19 20 00    	push   0x2019c2(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400646:	ff 25 c4 19 20 00    	jmp    *0x2019c4(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40064c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400650 <puts@plt>:
  400650:	ff 25 c2 19 20 00    	jmp    *0x2019c2(%rip)        # 602018 <puts@GLIBC_2.2.5>
  400656:	68 00 00 00 00       	push   $0x0
  40065b:	e9 e0 ff ff ff       	jmp    400640 <.plt>

0000000000400660 <ferror@plt>:
  400660:	ff 25 ba 19 20 00    	jmp    *0x2019ba(%rip)        # 602020 <ferror@GLIBC_2.2.5>
  400666:	68 01 00 00 00       	push   $0x1
  40066b:	e9 d0 ff ff ff       	jmp    400640 <.plt>

0000000000400670 <fread@plt>:
  400670:	ff 25 b2 19 20 00    	jmp    *0x2019b2(%rip)        # 602028 <fread@GLIBC_2.2.5>
  400676:	68 02 00 00 00       	push   $0x2
  40067b:	e9 c0 ff ff ff       	jmp    400640 <.plt>

0000000000400680 <getpid@plt>:
  400680:	ff 25 aa 19 20 00    	jmp    *0x2019aa(%rip)        # 602030 <getpid@GLIBC_2.2.5>
  400686:	68 03 00 00 00       	push   $0x3
  40068b:	e9 b0 ff ff ff       	jmp    400640 <.plt>

0000000000400690 <fclose@plt>:
  400690:	ff 25 a2 19 20 00    	jmp    *0x2019a2(%rip)        # 602038 <fclose@GLIBC_2.2.5>
  400696:	68 04 00 00 00       	push   $0x4
  40069b:	e9 a0 ff ff ff       	jmp    400640 <.plt>

00000000004006a0 <printf@plt>:
  4006a0:	ff 25 9a 19 20 00    	jmp    *0x20199a(%rip)        # 602040 <printf@GLIBC_2.2.5>
  4006a6:	68 05 00 00 00       	push   $0x5
  4006ab:	e9 90 ff ff ff       	jmp    400640 <.plt>

00000000004006b0 <memset@plt>:
  4006b0:	ff 25 92 19 20 00    	jmp    *0x201992(%rip)        # 602048 <memset@GLIBC_2.2.5>
  4006b6:	68 06 00 00 00       	push   $0x6
  4006bb:	e9 80 ff ff ff       	jmp    400640 <.plt>

00000000004006c0 <__libc_start_main@plt>:
  4006c0:	ff 25 8a 19 20 00    	jmp    *0x20198a(%rip)        # 602050 <__libc_start_main@GLIBC_2.2.5>
  4006c6:	68 07 00 00 00       	push   $0x7
  4006cb:	e9 70 ff ff ff       	jmp    400640 <.plt>

00000000004006d0 <srand@plt>:
  4006d0:	ff 25 82 19 20 00    	jmp    *0x201982(%rip)        # 602058 <srand@GLIBC_2.2.5>
  4006d6:	68 08 00 00 00       	push   $0x8
  4006db:	e9 60 ff ff ff       	jmp    400640 <.plt>

00000000004006e0 <__gmon_start__@plt>:
  4006e0:	ff 25 7a 19 20 00    	jmp    *0x20197a(%rip)        # 602060 <__gmon_start__>
  4006e6:	68 09 00 00 00       	push   $0x9
  4006eb:	e9 50 ff ff ff       	jmp    400640 <.plt>

00000000004006f0 <fopen@plt>:
  4006f0:	ff 25 72 19 20 00    	jmp    *0x201972(%rip)        # 602068 <fopen@GLIBC_2.2.5>
  4006f6:	68 0a 00 00 00       	push   $0xa
  4006fb:	e9 40 ff ff ff       	jmp    400640 <.plt>

0000000000400700 <rand@plt>:
  400700:	ff 25 6a 19 20 00    	jmp    *0x20196a(%rip)        # 602070 <rand@GLIBC_2.2.5>
  400706:	68 0b 00 00 00       	push   $0xb
  40070b:	e9 30 ff ff ff       	jmp    400640 <.plt>

Disassembly of section .text:

0000000000400710 <_start>:
  400710:	31 ed                	xor    %ebp,%ebp
  400712:	49 89 d1             	mov    %rdx,%r9
  400715:	5e                   	pop    %rsi
  400716:	48 89 e2             	mov    %rsp,%rdx
  400719:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40071d:	50                   	push   %rax
  40071e:	54                   	push   %rsp
  40071f:	49 c7 c0 d0 0c 40 00 	mov    $0x400cd0,%r8
  400726:	48 c7 c1 60 0c 40 00 	mov    $0x400c60,%rcx
  40072d:	48 c7 c7 12 0b 40 00 	mov    $0x400b12,%rdi
  400734:	e8 87 ff ff ff       	call   4006c0 <__libc_start_main@plt>
  400739:	f4                   	hlt
  40073a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400740 <deregister_tm_clones>:
  400740:	b8 bf 21 60 00       	mov    $0x6021bf,%eax
  400745:	55                   	push   %rbp
  400746:	48 2d b8 21 60 00    	sub    $0x6021b8,%rax
  40074c:	48 83 f8 0e          	cmp    $0xe,%rax
  400750:	48 89 e5             	mov    %rsp,%rbp
  400753:	77 02                	ja     400757 <deregister_tm_clones+0x17>
  400755:	5d                   	pop    %rbp
  400756:	c3                   	ret
  400757:	b8 00 00 00 00       	mov    $0x0,%eax
  40075c:	48 85 c0             	test   %rax,%rax
  40075f:	74 f4                	je     400755 <deregister_tm_clones+0x15>
  400761:	5d                   	pop    %rbp
  400762:	bf b8 21 60 00       	mov    $0x6021b8,%edi
  400767:	ff e0                	jmp    *%rax
  400769:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400770 <register_tm_clones>:
  400770:	b8 b8 21 60 00       	mov    $0x6021b8,%eax
  400775:	55                   	push   %rbp
  400776:	48 2d b8 21 60 00    	sub    $0x6021b8,%rax
  40077c:	48 c1 f8 03          	sar    $0x3,%rax
  400780:	48 89 e5             	mov    %rsp,%rbp
  400783:	48 89 c2             	mov    %rax,%rdx
  400786:	48 c1 ea 3f          	shr    $0x3f,%rdx
  40078a:	48 01 d0             	add    %rdx,%rax
  40078d:	48 d1 f8             	sar    $1,%rax
  400790:	75 02                	jne    400794 <register_tm_clones+0x24>
  400792:	5d                   	pop    %rbp
  400793:	c3                   	ret
  400794:	ba 00 00 00 00       	mov    $0x0,%edx
  400799:	48 85 d2             	test   %rdx,%rdx
  40079c:	74 f4                	je     400792 <register_tm_clones+0x22>
  40079e:	5d                   	pop    %rbp
  40079f:	48 89 c6             	mov    %rax,%rsi
  4007a2:	bf b8 21 60 00       	mov    $0x6021b8,%edi
  4007a7:	ff e2                	jmp    *%rdx
  4007a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004007b0 <__do_global_dtors_aux>:
  4007b0:	80 3d 11 1a 20 00 00 	cmpb   $0x0,0x201a11(%rip)        # 6021c8 <completed.6355>
  4007b7:	75 11                	jne    4007ca <__do_global_dtors_aux+0x1a>
  4007b9:	55                   	push   %rbp
  4007ba:	48 89 e5             	mov    %rsp,%rbp
  4007bd:	e8 7e ff ff ff       	call   400740 <deregister_tm_clones>
  4007c2:	5d                   	pop    %rbp
  4007c3:	c6 05 fe 19 20 00 01 	movb   $0x1,0x2019fe(%rip)        # 6021c8 <completed.6355>
  4007ca:	f3 c3                	repz ret
  4007cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004007d0 <frame_dummy>:
  4007d0:	48 83 3d 48 16 20 00 	cmpq   $0x0,0x201648(%rip)        # 601e20 <__JCR_END__>
  4007d7:	00 
  4007d8:	74 1e                	je     4007f8 <frame_dummy+0x28>
  4007da:	b8 00 00 00 00       	mov    $0x0,%eax
  4007df:	48 85 c0             	test   %rax,%rax
  4007e2:	74 14                	je     4007f8 <frame_dummy+0x28>
  4007e4:	55                   	push   %rbp
  4007e5:	bf 20 1e 60 00       	mov    $0x601e20,%edi
  4007ea:	48 89 e5             	mov    %rsp,%rbp
  4007ed:	ff d0                	call   *%rax
  4007ef:	5d                   	pop    %rbp
  4007f0:	e9 7b ff ff ff       	jmp    400770 <register_tm_clones>
  4007f5:	0f 1f 00             	nopl   (%rax)
  4007f8:	e9 73 ff ff ff       	jmp    400770 <register_tm_clones>

00000000004007fd <_r_func_>:
  4007fd:	90                   	nop
  4007fe:	90                   	nop
  4007ff:	90                   	nop
  400800:	90                   	nop
  400801:	90                   	nop
  400802:	90                   	nop
  400803:	90                   	nop
  400804:	90                   	nop
  400805:	c3                   	ret

0000000000400806 <do_phase>:
  400806:	48 83 ec 48          	sub    $0x48,%rsp
  40080a:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
  40080f:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  400814:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  400819:	48 89 d6             	mov    %rdx,%rsi
  40081c:	48 89 c7             	mov    %rax,%rdi
  40081f:	e8 aa 00 00 00       	call   4008ce <digit2hex>
  400824:	b8 00 00 00 00       	mov    $0x0,%eax
  400829:	48 83 c4 48          	add    $0x48,%rsp
  40082d:	c3                   	ret

000000000040082e <message>:
  40082e:	48 83 ec 38          	sub    $0x38,%rsp
  400832:	89 7c 24 0c          	mov    %edi,0xc(%rsp)
  400836:	48 b8 54 61 73 6b 20 	movabs $0x637573206b736154,%rax
  40083d:	73 75 63 
  400840:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  400845:	48 b8 63 65 65 64 65 	movabs $0x2e646564656563,%rax
  40084c:	64 2e 00 
  40084f:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  400854:	48 b8 54 61 73 6b 20 	movabs $0x696166206b736154,%rax
  40085b:	66 61 69 
  40085e:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  400863:	c7 44 24 18 6c 65 64 	movl   $0x2e64656c,0x18(%rsp)
  40086a:	2e 
  40086b:	c6 44 24 1c 00       	movb   $0x0,0x1c(%rsp)
  400870:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
  400875:	74 0f                	je     400886 <message+0x58>
  400877:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  40087c:	48 89 c7             	mov    %rax,%rdi
  40087f:	e8 cc fd ff ff       	call   400650 <puts@plt>
  400884:	eb 0d                	jmp    400893 <message+0x65>
  400886:	48 8d 44 24 10       	lea    0x10(%rsp),%rax
  40088b:	48 89 c7             	mov    %rax,%rdi
  40088e:	e8 bd fd ff ff       	call   400650 <puts@plt>
  400893:	48 83 c4 38          	add    $0x38,%rsp
  400897:	c3                   	ret

0000000000400898 <phase>:
  400898:	48 83 ec 28          	sub    $0x28,%rsp
  40089c:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
  4008a1:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%rsp)
  4008a8:	00 
  4008a9:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4008ae:	48 89 c7             	mov    %rax,%rdi
  4008b1:	e8 50 ff ff ff       	call   400806 <do_phase>
  4008b6:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4008ba:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4008be:	89 c7                	mov    %eax,%edi
  4008c0:	e8 69 ff ff ff       	call   40082e <message>
  4008c5:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4008c9:	48 83 c4 28          	add    $0x28,%rsp
  4008cd:	c3                   	ret

00000000004008ce <digit2hex>:
  4008ce:	48 89 7c 24 e8       	mov    %rdi,-0x18(%rsp)
  4008d3:	48 89 74 24 e0       	mov    %rsi,-0x20(%rsp)
  4008d8:	48 c7 44 24 f8 00 00 	movq   $0x0,-0x8(%rsp)
  4008df:	00 00 
  4008e1:	c7 44 24 f4 00 00 00 	movl   $0x0,-0xc(%rsp)
  4008e8:	00 
  4008e9:	e9 b6 00 00 00       	jmp    4009a4 <digit2hex+0xd6>
  4008ee:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
  4008f3:	0f b6 00             	movzbl (%rax),%eax
  4008f6:	3c 23                	cmp    $0x23,%al
  4008f8:	75 14                	jne    40090e <digit2hex+0x40>
  4008fa:	83 7c 24 f4 00       	cmpl   $0x0,-0xc(%rsp)
  4008ff:	0f 94 c0             	sete   %al
  400902:	0f b6 c0             	movzbl %al,%eax
  400905:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  400909:	e9 90 00 00 00       	jmp    40099e <digit2hex+0xd0>
  40090e:	83 7c 24 f4 00       	cmpl   $0x0,-0xc(%rsp)
  400913:	74 05                	je     40091a <digit2hex+0x4c>
  400915:	e9 84 00 00 00       	jmp    40099e <digit2hex+0xd0>
  40091a:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
  40091f:	0f b6 00             	movzbl (%rax),%eax
  400922:	0f be c0             	movsbl %al,%eax
  400925:	83 e0 7f             	and    $0x7f,%eax
  400928:	48 98                	cltq
  40092a:	0f b6 80 00 0d 40 00 	movzbl 0x400d00(%rax),%eax
  400931:	3c ff                	cmp    $0xff,%al
  400933:	75 02                	jne    400937 <digit2hex+0x69>
  400935:	eb 67                	jmp    40099e <digit2hex+0xd0>
  400937:	48 83 7c 24 f8 00    	cmpq   $0x0,-0x8(%rsp)
  40093d:	74 55                	je     400994 <digit2hex+0xc6>
  40093f:	48 8b 44 24 f8       	mov    -0x8(%rsp),%rax
  400944:	0f b6 00             	movzbl (%rax),%eax
  400947:	0f be c0             	movsbl %al,%eax
  40094a:	83 e0 7f             	and    $0x7f,%eax
  40094d:	48 98                	cltq
  40094f:	0f b6 80 00 0d 40 00 	movzbl 0x400d00(%rax),%eax
  400956:	0f b6 c0             	movzbl %al,%eax
  400959:	c1 e0 04             	shl    $0x4,%eax
  40095c:	89 c2                	mov    %eax,%edx
  40095e:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
  400963:	0f b6 00             	movzbl (%rax),%eax
  400966:	0f be c0             	movsbl %al,%eax
  400969:	83 e0 7f             	and    $0x7f,%eax
  40096c:	48 98                	cltq
  40096e:	0f b6 80 00 0d 40 00 	movzbl 0x400d00(%rax),%eax
  400975:	83 e0 0f             	and    $0xf,%eax
  400978:	09 d0                	or     %edx,%eax
  40097a:	89 c2                	mov    %eax,%edx
  40097c:	48 8b 44 24 e0       	mov    -0x20(%rsp),%rax
  400981:	88 10                	mov    %dl,(%rax)
  400983:	48 83 44 24 e0 01    	addq   $0x1,-0x20(%rsp)
  400989:	48 c7 44 24 f8 00 00 	movq   $0x0,-0x8(%rsp)
  400990:	00 00 
  400992:	eb 0a                	jmp    40099e <digit2hex+0xd0>
  400994:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
  400999:	48 89 44 24 f8       	mov    %rax,-0x8(%rsp)
  40099e:	48 83 44 24 e8 01    	addq   $0x1,-0x18(%rsp)
  4009a4:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
  4009a9:	0f b6 00             	movzbl (%rax),%eax
  4009ac:	84 c0                	test   %al,%al
  4009ae:	0f 85 3a ff ff ff    	jne    4008ee <digit2hex+0x20>
  4009b4:	48 8b 44 24 e0       	mov    -0x20(%rsp),%rax
  4009b9:	c3                   	ret

00000000004009ba <getrid>:
  4009ba:	48 83 ec 08          	sub    $0x8,%rsp
  4009be:	8b 05 ec 17 20 00    	mov    0x2017ec(%rip),%eax        # 6021b0 <run_id.3622>
  4009c4:	85 c0                	test   %eax,%eax
  4009c6:	79 17                	jns    4009df <getrid+0x25>
  4009c8:	e8 b3 fc ff ff       	call   400680 <getpid@plt>
  4009cd:	89 c7                	mov    %eax,%edi
  4009cf:	e8 fc fc ff ff       	call   4006d0 <srand@plt>
  4009d4:	e8 27 fd ff ff       	call   400700 <rand@plt>
  4009d9:	89 05 d1 17 20 00    	mov    %eax,0x2017d1(%rip)        # 6021b0 <run_id.3622>
  4009df:	8b 05 cb 17 20 00    	mov    0x2017cb(%rip),%eax        # 6021b0 <run_id.3622>
  4009e5:	48 83 c4 08          	add    $0x8,%rsp
  4009e9:	c3                   	ret

00000000004009ea <fillregion>:
  4009ea:	48 89 7c 24 e8       	mov    %rdi,-0x18(%rsp)
  4009ef:	89 74 24 e4          	mov    %esi,-0x1c(%rsp)
  4009f3:	89 54 24 e0          	mov    %edx,-0x20(%rsp)
  4009f7:	c7 44 24 fc 00 00 00 	movl   $0x0,-0x4(%rsp)
  4009fe:	00 
  4009ff:	eb 21                	jmp    400a22 <fillregion+0x38>
  400a01:	8b 44 24 fc          	mov    -0x4(%rsp),%eax
  400a05:	48 98                	cltq
  400a07:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400a0e:	00 
  400a0f:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
  400a14:	48 01 c2             	add    %rax,%rdx
  400a17:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  400a1b:	89 02                	mov    %eax,(%rdx)
  400a1d:	83 44 24 fc 01       	addl   $0x1,-0x4(%rsp)
  400a22:	8b 44 24 fc          	mov    -0x4(%rsp),%eax
  400a26:	3b 44 24 e4          	cmp    -0x1c(%rsp),%eax
  400a2a:	7c d5                	jl     400a01 <fillregion+0x17>
  400a2c:	c3                   	ret

0000000000400a2d <checkregion>:
  400a2d:	48 89 7c 24 e8       	mov    %rdi,-0x18(%rsp)
  400a32:	89 74 24 e4          	mov    %esi,-0x1c(%rsp)
  400a36:	89 54 24 e0          	mov    %edx,-0x20(%rsp)
  400a3a:	c7 44 24 fc 00 00 00 	movl   $0x0,-0x4(%rsp)
  400a41:	00 
  400a42:	eb 2a                	jmp    400a6e <checkregion+0x41>
  400a44:	8b 44 24 fc          	mov    -0x4(%rsp),%eax
  400a48:	48 98                	cltq
  400a4a:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400a51:	00 
  400a52:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
  400a57:	48 01 d0             	add    %rdx,%rax
  400a5a:	8b 00                	mov    (%rax),%eax
  400a5c:	3b 44 24 e0          	cmp    -0x20(%rsp),%eax
  400a60:	74 07                	je     400a69 <checkregion+0x3c>
  400a62:	b8 00 00 00 00       	mov    $0x0,%eax
  400a67:	eb 14                	jmp    400a7d <checkregion+0x50>
  400a69:	83 44 24 fc 01       	addl   $0x1,-0x4(%rsp)
  400a6e:	8b 44 24 fc          	mov    -0x4(%rsp),%eax
  400a72:	3b 44 24 e4          	cmp    -0x1c(%rsp),%eax
  400a76:	7c cc                	jl     400a44 <checkregion+0x17>
  400a78:	b8 01 00 00 00       	mov    $0x1,%eax
  400a7d:	c3                   	ret

0000000000400a7e <exec_phase>:
  400a7e:	48 83 ec 58          	sub    $0x58,%rsp
  400a82:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
  400a87:	48 c7 05 6e 37 20 00 	movq   $0x40,0x20376e(%rip)        # 604200 <alloca_size.3649>
  400a8e:	40 00 00 00 
  400a92:	48 8d 44 24 10       	lea    0x10(%rsp),%rax
  400a97:	48 89 05 6a 37 20 00 	mov    %rax,0x20376a(%rip)        # 604208 <alloca_region.3648>
  400a9e:	b8 00 00 00 00       	mov    $0x0,%eax
  400aa3:	e8 12 ff ff ff       	call   4009ba <getrid>
  400aa8:	89 c2                	mov    %eax,%edx
  400aaa:	48 8b 05 4f 37 20 00 	mov    0x20374f(%rip),%rax        # 604200 <alloca_size.3649>
  400ab1:	48 c1 e8 02          	shr    $0x2,%rax
  400ab5:	89 c1                	mov    %eax,%ecx
  400ab7:	48 8b 05 4a 37 20 00 	mov    0x20374a(%rip),%rax        # 604208 <alloca_region.3648>
  400abe:	89 ce                	mov    %ecx,%esi
  400ac0:	48 89 c7             	mov    %rax,%rdi
  400ac3:	e8 22 ff ff ff       	call   4009ea <fillregion>
  400ac8:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  400acd:	48 89 c7             	mov    %rax,%rdi
  400ad0:	e8 c3 fd ff ff       	call   400898 <phase>
  400ad5:	b8 00 00 00 00       	mov    $0x0,%eax
  400ada:	e8 db fe ff ff       	call   4009ba <getrid>
  400adf:	89 c2                	mov    %eax,%edx
  400ae1:	48 8b 05 18 37 20 00 	mov    0x203718(%rip),%rax        # 604200 <alloca_size.3649>
  400ae8:	48 c1 e8 02          	shr    $0x2,%rax
  400aec:	89 c1                	mov    %eax,%ecx
  400aee:	48 8b 05 13 37 20 00 	mov    0x203713(%rip),%rax        # 604208 <alloca_region.3648>
  400af5:	89 ce                	mov    %ecx,%esi
  400af7:	48 89 c7             	mov    %rax,%rdi
  400afa:	e8 2e ff ff ff       	call   400a2d <checkregion>
  400aff:	85 c0                	test   %eax,%eax
  400b01:	75 0a                	jne    400b0d <exec_phase+0x8f>
  400b03:	bf 80 0d 40 00       	mov    $0x400d80,%edi
  400b08:	e8 43 fb ff ff       	call   400650 <puts@plt>
  400b0d:	48 83 c4 58          	add    $0x58,%rsp
  400b11:	c3                   	ret

0000000000400b12 <main>:
  400b12:	48 83 ec 28          	sub    $0x28,%rsp
  400b16:	89 7c 24 0c          	mov    %edi,0xc(%rsp)
  400b1a:	48 89 34 24          	mov    %rsi,(%rsp)
  400b1e:	b8 00 00 00 00       	mov    $0x0,%eax
  400b23:	e8 92 fe ff ff       	call   4009ba <getrid>
  400b28:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
  400b2f:	00 00 
  400b31:	83 7c 24 0c 01       	cmpl   $0x1,0xc(%rsp)
  400b36:	75 0e                	jne    400b46 <main+0x34>
  400b38:	48 8b 05 81 16 20 00 	mov    0x201681(%rip),%rax        # 6021c0 <stdin@GLIBC_2.2.5>
  400b3f:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  400b44:	eb 76                	jmp    400bbc <main+0xaa>
  400b46:	83 7c 24 0c 02       	cmpl   $0x2,0xc(%rsp)
  400b4b:	75 4c                	jne    400b99 <main+0x87>
  400b4d:	48 8b 04 24          	mov    (%rsp),%rax
  400b51:	48 83 c0 08          	add    $0x8,%rax
  400b55:	48 8b 00             	mov    (%rax),%rax
  400b58:	be a2 0d 40 00       	mov    $0x400da2,%esi
  400b5d:	48 89 c7             	mov    %rax,%rdi
  400b60:	e8 8b fb ff ff       	call   4006f0 <fopen@plt>
  400b65:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  400b6a:	48 83 7c 24 18 00    	cmpq   $0x0,0x18(%rsp)
  400b70:	75 4a                	jne    400bbc <main+0xaa>
  400b72:	48 8b 04 24          	mov    (%rsp),%rax
  400b76:	48 83 c0 08          	add    $0x8,%rax
  400b7a:	48 8b 00             	mov    (%rax),%rax
  400b7d:	48 89 c6             	mov    %rax,%rsi
  400b80:	bf a8 0d 40 00       	mov    $0x400da8,%edi
  400b85:	b8 00 00 00 00       	mov    $0x0,%eax
  400b8a:	e8 11 fb ff ff       	call   4006a0 <printf@plt>
  400b8f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  400b94:	e9 c1 00 00 00       	jmp    400c5a <main+0x148>
  400b99:	48 8b 04 24          	mov    (%rsp),%rax
  400b9d:	48 8b 00             	mov    (%rax),%rax
  400ba0:	48 89 c6             	mov    %rax,%rsi
  400ba3:	bf cc 0d 40 00       	mov    $0x400dcc,%edi
  400ba8:	b8 00 00 00 00       	mov    $0x0,%eax
  400bad:	e8 ee fa ff ff       	call   4006a0 <printf@plt>
  400bb2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  400bb7:	e9 9e 00 00 00       	jmp    400c5a <main+0x148>
  400bbc:	bf e8 0d 40 00       	mov    $0x400de8,%edi
  400bc1:	e8 8a fa ff ff       	call   400650 <puts@plt>
  400bc6:	bf 18 0e 40 00       	mov    $0x400e18,%edi
  400bcb:	e8 80 fa ff ff       	call   400650 <puts@plt>
  400bd0:	ba 00 20 00 00       	mov    $0x2000,%edx
  400bd5:	be 00 00 00 00       	mov    $0x0,%esi
  400bda:	bf 00 22 60 00       	mov    $0x602200,%edi
  400bdf:	e8 cc fa ff ff       	call   4006b0 <memset@plt>
  400be4:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  400be9:	48 89 c1             	mov    %rax,%rcx
  400bec:	ba ff 1f 00 00       	mov    $0x1fff,%edx
  400bf1:	be 01 00 00 00       	mov    $0x1,%esi
  400bf6:	bf 00 22 60 00       	mov    $0x602200,%edi
  400bfb:	e8 70 fa ff ff       	call   400670 <fread@plt>
  400c00:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  400c05:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  400c0a:	48 89 c7             	mov    %rax,%rdi
  400c0d:	e8 4e fa ff ff       	call   400660 <ferror@plt>
  400c12:	85 c0                	test   %eax,%eax
  400c14:	74 0c                	je     400c22 <main+0x110>
  400c16:	bf 40 0e 40 00       	mov    $0x400e40,%edi
  400c1b:	e8 30 fa ff ff       	call   400650 <puts@plt>
  400c20:	eb 18                	jmp    400c3a <main+0x128>
  400c22:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  400c27:	48 05 00 22 60 00    	add    $0x602200,%rax
  400c2d:	c6 00 00             	movb   $0x0,(%rax)
  400c30:	bf 00 22 60 00       	mov    $0x602200,%edi
  400c35:	e8 44 fe ff ff       	call   400a7e <exec_phase>
  400c3a:	48 8b 05 7f 15 20 00 	mov    0x20157f(%rip),%rax        # 6021c0 <stdin@GLIBC_2.2.5>
  400c41:	48 39 44 24 18       	cmp    %rax,0x18(%rsp)
  400c46:	74 0d                	je     400c55 <main+0x143>
  400c48:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  400c4d:	48 89 c7             	mov    %rax,%rdi
  400c50:	e8 3b fa ff ff       	call   400690 <fclose@plt>
  400c55:	b8 00 00 00 00       	mov    $0x0,%eax
  400c5a:	48 83 c4 28          	add    $0x28,%rsp
  400c5e:	c3                   	ret
  400c5f:	90                   	nop

0000000000400c60 <__libc_csu_init>:
  400c60:	41 57                	push   %r15
  400c62:	41 89 ff             	mov    %edi,%r15d
  400c65:	41 56                	push   %r14
  400c67:	49 89 f6             	mov    %rsi,%r14
  400c6a:	41 55                	push   %r13
  400c6c:	49 89 d5             	mov    %rdx,%r13
  400c6f:	41 54                	push   %r12
  400c71:	4c 8d 25 98 11 20 00 	lea    0x201198(%rip),%r12        # 601e10 <__frame_dummy_init_array_entry>
  400c78:	55                   	push   %rbp
  400c79:	48 8d 2d 98 11 20 00 	lea    0x201198(%rip),%rbp        # 601e18 <__do_global_dtors_aux_fini_array_entry>
  400c80:	53                   	push   %rbx
  400c81:	4c 29 e5             	sub    %r12,%rbp
  400c84:	31 db                	xor    %ebx,%ebx
  400c86:	48 c1 fd 03          	sar    $0x3,%rbp
  400c8a:	48 83 ec 08          	sub    $0x8,%rsp
  400c8e:	e8 85 f9 ff ff       	call   400618 <_init>
  400c93:	48 85 ed             	test   %rbp,%rbp
  400c96:	74 1e                	je     400cb6 <__libc_csu_init+0x56>
  400c98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400c9f:	00 
  400ca0:	4c 89 ea             	mov    %r13,%rdx
  400ca3:	4c 89 f6             	mov    %r14,%rsi
  400ca6:	44 89 ff             	mov    %r15d,%edi
  400ca9:	41 ff 14 dc          	call   *(%r12,%rbx,8)
  400cad:	48 83 c3 01          	add    $0x1,%rbx
  400cb1:	48 39 eb             	cmp    %rbp,%rbx
  400cb4:	75 ea                	jne    400ca0 <__libc_csu_init+0x40>
  400cb6:	48 83 c4 08          	add    $0x8,%rsp
  400cba:	5b                   	pop    %rbx
  400cbb:	5d                   	pop    %rbp
  400cbc:	41 5c                	pop    %r12
  400cbe:	41 5d                	pop    %r13
  400cc0:	41 5e                	pop    %r14
  400cc2:	41 5f                	pop    %r15
  400cc4:	c3                   	ret
  400cc5:	90                   	nop
  400cc6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  400ccd:	00 00 00 

0000000000400cd0 <__libc_csu_fini>:
  400cd0:	f3 c3                	repz ret

Disassembly of section .fini:

0000000000400cd4 <_fini>:
  400cd4:	48 83 ec 08          	sub    $0x8,%rsp
  400cd8:	48 83 c4 08          	add    $0x8,%rsp
  400cdc:	c3                   	ret
