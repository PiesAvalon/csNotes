
phase5:     file format elf64-x86-64


Disassembly of section .init:

0000000000400538 <_init>:
  400538:	48 83 ec 08          	sub    $0x8,%rsp
  40053c:	48 8b 05 b5 0a 20 00 	mov    0x200ab5(%rip),%rax        # 600ff8 <__gmon_start__>
  400543:	48 85 c0             	test   %rax,%rax
  400546:	74 05                	je     40054d <_init+0x15>
  400548:	e8 73 00 00 00       	call   4005c0 <__gmon_start__@plt>
  40054d:	48 83 c4 08          	add    $0x8,%rsp
  400551:	c3                   	ret

Disassembly of section .plt:

0000000000400560 <.plt>:
  400560:	ff 35 a2 0a 20 00    	push   0x200aa2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400566:	ff 25 a4 0a 20 00    	jmp    *0x200aa4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40056c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400570 <puts@plt>:
  400570:	ff 25 a2 0a 20 00    	jmp    *0x200aa2(%rip)        # 601018 <puts@GLIBC_2.2.5>
  400576:	68 00 00 00 00       	push   $0x0
  40057b:	e9 e0 ff ff ff       	jmp    400560 <.plt>

0000000000400580 <printf@plt>:
  400580:	ff 25 9a 0a 20 00    	jmp    *0x200a9a(%rip)        # 601020 <printf@GLIBC_2.2.5>
  400586:	68 01 00 00 00       	push   $0x1
  40058b:	e9 d0 ff ff ff       	jmp    400560 <.plt>

0000000000400590 <memset@plt>:
  400590:	ff 25 92 0a 20 00    	jmp    *0x200a92(%rip)        # 601028 <memset@GLIBC_2.2.5>
  400596:	68 02 00 00 00       	push   $0x2
  40059b:	e9 c0 ff ff ff       	jmp    400560 <.plt>

00000000004005a0 <__libc_start_main@plt>:
  4005a0:	ff 25 8a 0a 20 00    	jmp    *0x200a8a(%rip)        # 601030 <__libc_start_main@GLIBC_2.2.5>
  4005a6:	68 03 00 00 00       	push   $0x3
  4005ab:	e9 b0 ff ff ff       	jmp    400560 <.plt>

00000000004005b0 <fgets@plt>:
  4005b0:	ff 25 82 0a 20 00    	jmp    *0x200a82(%rip)        # 601038 <fgets@GLIBC_2.2.5>
  4005b6:	68 04 00 00 00       	push   $0x4
  4005bb:	e9 a0 ff ff ff       	jmp    400560 <.plt>

00000000004005c0 <__gmon_start__@plt>:
  4005c0:	ff 25 7a 0a 20 00    	jmp    *0x200a7a(%rip)        # 601040 <__gmon_start__>
  4005c6:	68 05 00 00 00       	push   $0x5
  4005cb:	e9 90 ff ff ff       	jmp    400560 <.plt>

00000000004005d0 <fopen@plt>:
  4005d0:	ff 25 72 0a 20 00    	jmp    *0x200a72(%rip)        # 601048 <fopen@GLIBC_2.2.5>
  4005d6:	68 06 00 00 00       	push   $0x6
  4005db:	e9 80 ff ff ff       	jmp    400560 <.plt>

00000000004005e0 <exit@plt>:
  4005e0:	ff 25 6a 0a 20 00    	jmp    *0x200a6a(%rip)        # 601050 <exit@GLIBC_2.2.5>
  4005e6:	68 07 00 00 00       	push   $0x7
  4005eb:	e9 70 ff ff ff       	jmp    400560 <.plt>

Disassembly of section .text:

00000000004005f0 <_start>:
  4005f0:	31 ed                	xor    %ebp,%ebp
  4005f2:	49 89 d1             	mov    %rdx,%r9
  4005f5:	5e                   	pop    %rsi
  4005f6:	48 89 e2             	mov    %rsp,%rdx
  4005f9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4005fd:	50                   	push   %rax
  4005fe:	54                   	push   %rsp
  4005ff:	49 c7 c0 e0 09 40 00 	mov    $0x4009e0,%r8
  400606:	48 c7 c1 70 09 40 00 	mov    $0x400970,%rcx
  40060d:	48 c7 c7 21 07 40 00 	mov    $0x400721,%rdi
  400614:	e8 87 ff ff ff       	call   4005a0 <__libc_start_main@plt>
  400619:	f4                   	hlt
  40061a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400620 <deregister_tm_clones>:
  400620:	b8 e7 10 60 00       	mov    $0x6010e7,%eax
  400625:	55                   	push   %rbp
  400626:	48 2d e0 10 60 00    	sub    $0x6010e0,%rax
  40062c:	48 83 f8 0e          	cmp    $0xe,%rax
  400630:	48 89 e5             	mov    %rsp,%rbp
  400633:	77 02                	ja     400637 <deregister_tm_clones+0x17>
  400635:	5d                   	pop    %rbp
  400636:	c3                   	ret
  400637:	b8 00 00 00 00       	mov    $0x0,%eax
  40063c:	48 85 c0             	test   %rax,%rax
  40063f:	74 f4                	je     400635 <deregister_tm_clones+0x15>
  400641:	5d                   	pop    %rbp
  400642:	bf e0 10 60 00       	mov    $0x6010e0,%edi
  400647:	ff e0                	jmp    *%rax
  400649:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400650 <register_tm_clones>:
  400650:	b8 e0 10 60 00       	mov    $0x6010e0,%eax
  400655:	55                   	push   %rbp
  400656:	48 2d e0 10 60 00    	sub    $0x6010e0,%rax
  40065c:	48 c1 f8 03          	sar    $0x3,%rax
  400660:	48 89 e5             	mov    %rsp,%rbp
  400663:	48 89 c2             	mov    %rax,%rdx
  400666:	48 c1 ea 3f          	shr    $0x3f,%rdx
  40066a:	48 01 d0             	add    %rdx,%rax
  40066d:	48 d1 f8             	sar    $1,%rax
  400670:	75 02                	jne    400674 <register_tm_clones+0x24>
  400672:	5d                   	pop    %rbp
  400673:	c3                   	ret
  400674:	ba 00 00 00 00       	mov    $0x0,%edx
  400679:	48 85 d2             	test   %rdx,%rdx
  40067c:	74 f4                	je     400672 <register_tm_clones+0x22>
  40067e:	5d                   	pop    %rbp
  40067f:	48 89 c6             	mov    %rax,%rsi
  400682:	bf e0 10 60 00       	mov    $0x6010e0,%edi
  400687:	ff e2                	jmp    *%rdx
  400689:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400690 <__do_global_dtors_aux>:
  400690:	80 3d 51 0a 20 00 00 	cmpb   $0x0,0x200a51(%rip)        # 6010e8 <completed.6355>
  400697:	75 11                	jne    4006aa <__do_global_dtors_aux+0x1a>
  400699:	55                   	push   %rbp
  40069a:	48 89 e5             	mov    %rsp,%rbp
  40069d:	e8 7e ff ff ff       	call   400620 <deregister_tm_clones>
  4006a2:	5d                   	pop    %rbp
  4006a3:	c6 05 3e 0a 20 00 01 	movb   $0x1,0x200a3e(%rip)        # 6010e8 <completed.6355>
  4006aa:	f3 c3                	repz ret
  4006ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004006b0 <frame_dummy>:
  4006b0:	48 83 3d 68 07 20 00 	cmpq   $0x0,0x200768(%rip)        # 600e20 <__JCR_END__>
  4006b7:	00 
  4006b8:	74 1e                	je     4006d8 <frame_dummy+0x28>
  4006ba:	b8 00 00 00 00       	mov    $0x0,%eax
  4006bf:	48 85 c0             	test   %rax,%rax
  4006c2:	74 14                	je     4006d8 <frame_dummy+0x28>
  4006c4:	55                   	push   %rbp
  4006c5:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  4006ca:	48 89 e5             	mov    %rsp,%rbp
  4006cd:	ff d0                	call   *%rax
  4006cf:	5d                   	pop    %rbp
  4006d0:	e9 7b ff ff ff       	jmp    400650 <register_tm_clones>
  4006d5:	0f 1f 00             	nopl   (%rax)
  4006d8:	e9 73 ff ff ff       	jmp    400650 <register_tm_clones>

00000000004006dd <fixinput>:
  4006dd:	55                   	push   %rbp
  4006de:	48 89 e5             	mov    %rsp,%rbp
  4006e1:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4006e5:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  4006e8:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4006eb:	48 98                	cltq
  4006ed:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
  4006f1:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4006f5:	48 01 d0             	add    %rdx,%rax
  4006f8:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4006fc:	eb 17                	jmp    400715 <fixinput+0x38>
  4006fe:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400702:	0f b6 00             	movzbl (%rax),%eax
  400705:	3c 0a                	cmp    $0xa,%al
  400707:	75 07                	jne    400710 <fixinput+0x33>
  400709:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40070d:	c6 00 00             	movb   $0x0,(%rax)
  400710:	48 83 6d f8 01       	subq   $0x1,-0x8(%rbp)
  400715:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400719:	48 3b 45 e8          	cmp    -0x18(%rbp),%rax
  40071d:	73 df                	jae    4006fe <fixinput+0x21>
  40071f:	5d                   	pop    %rbp
  400720:	c3                   	ret

0000000000400721 <main>:
  400721:	55                   	push   %rbp
  400722:	48 89 e5             	mov    %rsp,%rbp
  400725:	48 83 ec 20          	sub    $0x20,%rsp
  400729:	89 7d ec             	mov    %edi,-0x14(%rbp)
  40072c:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400730:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  400737:	00 
  400738:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
  40073c:	75 0d                	jne    40074b <main+0x2a>
  40073e:	48 8b 05 9b 09 20 00 	mov    0x20099b(%rip),%rax        # 6010e0 <stdin@GLIBC_2.2.5>
  400745:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400749:	eb 73                	jmp    4007be <main+0x9d>
  40074b:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
  40074f:	75 4a                	jne    40079b <main+0x7a>
  400751:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400755:	48 83 c0 08          	add    $0x8,%rax
  400759:	48 8b 00             	mov    (%rax),%rax
  40075c:	be 0a 0a 40 00       	mov    $0x400a0a,%esi
  400761:	48 89 c7             	mov    %rax,%rdi
  400764:	e8 67 fe ff ff       	call   4005d0 <fopen@plt>
  400769:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40076d:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  400772:	75 4a                	jne    4007be <main+0x9d>
  400774:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400778:	48 83 c0 08          	add    $0x8,%rax
  40077c:	48 8b 00             	mov    (%rax),%rax
  40077f:	48 89 c6             	mov    %rax,%rsi
  400782:	bf 10 0a 40 00       	mov    $0x400a10,%edi
  400787:	b8 00 00 00 00       	mov    $0x0,%eax
  40078c:	e8 ef fd ff ff       	call   400580 <printf@plt>
  400791:	bf 01 00 00 00       	mov    $0x1,%edi
  400796:	e8 45 fe ff ff       	call   4005e0 <exit@plt>
  40079b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40079f:	48 8b 00             	mov    (%rax),%rax
  4007a2:	48 89 c6             	mov    %rax,%rsi
  4007a5:	bf 34 0a 40 00       	mov    $0x400a34,%edi
  4007aa:	b8 00 00 00 00       	mov    $0x0,%eax
  4007af:	e8 cc fd ff ff       	call   400580 <printf@plt>
  4007b4:	bf 01 00 00 00       	mov    $0x1,%edi
  4007b9:	e8 22 fe ff ff       	call   4005e0 <exit@plt>
  4007be:	bf 50 0a 40 00       	mov    $0x400a50,%edi
  4007c3:	e8 a8 fd ff ff       	call   400570 <puts@plt>
  4007c8:	bf 80 0a 40 00       	mov    $0x400a80,%edi
  4007cd:	e8 9e fd ff ff       	call   400570 <puts@plt>
  4007d2:	ba 00 01 00 00       	mov    $0x100,%edx
  4007d7:	be 00 00 00 00       	mov    $0x0,%esi
  4007dc:	bf 00 11 60 00       	mov    $0x601100,%edi
  4007e1:	e8 aa fd ff ff       	call   400590 <memset@plt>
  4007e6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4007ea:	48 89 c2             	mov    %rax,%rdx
  4007ed:	be 00 01 00 00       	mov    $0x100,%esi
  4007f2:	bf 00 11 60 00       	mov    $0x601100,%edi
  4007f7:	e8 b4 fd ff ff       	call   4005b0 <fgets@plt>
  4007fc:	48 85 c0             	test   %rax,%rax
  4007ff:	75 14                	jne    400815 <main+0xf4>
  400801:	bf b8 0a 40 00       	mov    $0x400ab8,%edi
  400806:	e8 65 fd ff ff       	call   400570 <puts@plt>
  40080b:	bf 01 00 00 00       	mov    $0x1,%edi
  400810:	e8 cb fd ff ff       	call   4005e0 <exit@plt>
  400815:	be 00 01 00 00       	mov    $0x100,%esi
  40081a:	bf 00 11 60 00       	mov    $0x601100,%edi
  40081f:	e8 b9 fe ff ff       	call   4006dd <fixinput>
  400824:	bf 00 11 60 00       	mov    $0x601100,%edi
  400829:	e8 09 01 00 00       	call   400937 <phase>
  40082e:	85 c0                	test   %eax,%eax
  400830:	74 1b                	je     40084d <main+0x12c>
  400832:	48 8b 05 47 08 20 00 	mov    0x200847(%rip),%rax        # 601080 <phase_id>
  400839:	48 89 c6             	mov    %rax,%rsi
  40083c:	bf e0 0a 40 00       	mov    $0x400ae0,%edi
  400841:	b8 00 00 00 00       	mov    $0x0,%eax
  400846:	e8 35 fd ff ff       	call   400580 <printf@plt>
  40084b:	eb 19                	jmp    400866 <main+0x145>
  40084d:	48 8b 05 2c 08 20 00 	mov    0x20082c(%rip),%rax        # 601080 <phase_id>
  400854:	48 89 c6             	mov    %rax,%rsi
  400857:	bf 14 0b 40 00       	mov    $0x400b14,%edi
  40085c:	b8 00 00 00 00       	mov    $0x0,%eax
  400861:	e8 1a fd ff ff       	call   400580 <printf@plt>
  400866:	b8 00 00 00 00       	mov    $0x0,%eax
  40086b:	c9                   	leave
  40086c:	c3                   	ret

000000000040086d <__func_WNzKcOvH>:
  40086d:	55                   	push   %rbp
  40086e:	48 89 e5             	mov    %rsp,%rbp
  400871:	90                   	nop
  400872:	90                   	nop
  400873:	90                   	nop
  400874:	90                   	nop
  400875:	90                   	nop
  400876:	90                   	nop
  400877:	90                   	nop
  400878:	90                   	nop
  400879:	90                   	nop
  40087a:	90                   	nop
  40087b:	90                   	nop
  40087c:	90                   	nop
  40087d:	90                   	nop
  40087e:	90                   	nop
  40087f:	90                   	nop
  400880:	90                   	nop
  400881:	90                   	nop
  400882:	90                   	nop
  400883:	90                   	nop
  400884:	90                   	nop
  400885:	90                   	nop
  400886:	90                   	nop
  400887:	90                   	nop
  400888:	90                   	nop
  400889:	90                   	nop
  40088a:	90                   	nop
  40088b:	90                   	nop
  40088c:	90                   	nop
  40088d:	5d                   	pop    %rbp
  40088e:	c3                   	ret

000000000040088f <seek>: # p1, char* p2, int p3
  40088f:	55                   	push   %rbp
  400890:	48 89 e5             	mov    %rsp,%rbp
  400893:	48 83 ec 30          	sub    $0x30,%rsp
  400897:	48 89 7d e8          	mov    %rdi,-0x18(%rbp) # p1
  40089b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp) # p2
  40089f:	89 55 dc             	mov    %edx,-0x24(%rbp) # p3
  4008a2:	8b 45 dc             	mov    -0x24(%rbp),%eax
  4008a5:	d1 e8                	shr    $1,%eax
  4008a7:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4008aa:	83 7d dc 01          	cmpl   $0x1,-0x24(%rbp)
  4008ae:	77 09                	ja     4008b9 <seek+0x2a>
  4008b0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4008b4:	0f b6 00             	movzbl (%rax),%eax
  4008b7:	eb 7c                	jmp    400935 <seek+0xa6>

  4008b9:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4008bd:	0f b6 00             	movzbl (%rax),%eax
  4008c0:	0f be c0             	movsbl %al,%eax
  4008c3:	83 f8 41             	cmp    $0x41,%eax
  4008c6:	74 0b                	je     4008d3 <seek+0x44>
  4008c8:	83 f8 52             	cmp    $0x52,%eax
  4008cb:	74 22                	je     4008ef <seek+0x60>
  4008cd:	85 c0                	test   %eax,%eax
  4008cf:	74 43                	je     400914 <seek+0x85>
  4008d1:	eb 48                	jmp    40091b <seek+0x8c>
  # *p1 == 41
  4008d3:	8b 55 fc             	mov    -0x4(%rbp),%edx
  4008d6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4008da:	48 8d 48 01          	lea    0x1(%rax),%rcx
  4008de:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4008e2:	48 89 c6             	mov    %rax,%rsi
  4008e5:	48 89 cf             	mov    %rcx,%rdi
  4008e8:	e8 a2 ff ff ff       	call   40088f <seek>
  4008ed:	eb 46                	jmp    400935 <seek+0xa6>
  # *p1 == 52
  4008ef:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4008f2:	8b 55 fc             	mov    -0x4(%rbp),%edx
  4008f5:	48 63 ca             	movslq %edx,%rcx
  4008f8:	48 8b 55 e0          	mov    -0x20(%rbp),%rdx
  4008fc:	48 8d 34 11          	lea    (%rcx,%rdx,1),%rsi
  400900:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  400904:	48 8d 4a 01          	lea    0x1(%rdx),%rcx
  400908:	89 c2                	mov    %eax,%edx
  40090a:	48 89 cf             	mov    %rcx,%rdi
  40090d:	e8 7d ff ff ff       	call   40088f <seek>
  400912:	eb 21                	jmp    400935 <seek+0xa6>
  # *p1 == 0
  400914:	b8 00 00 00 00       	mov    $0x0,%eax
  400919:	eb 1a                	jmp    400935 <seek+0xa6>
  # *p1 != 41 && *p1 != 52 && *p1 != 0
  40091b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40091f:	48 8d 48 01          	lea    0x1(%rax),%rcx
  400923:	8b 55 dc             	mov    -0x24(%rbp),%edx
  400926:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40092a:	48 89 c6             	mov    %rax,%rsi
  40092d:	48 89 cf             	mov    %rcx,%rdi
  400930:	e8 5a ff ff ff       	call   40088f <seek>

  400935:	c9                   	leave
  400936:	c3                   	ret

0000000000400937 <phase>: # p1
  400937:	55                   	push   %rbp
  400938:	48 89 e5             	mov    %rsp,%rbp
  40093b:	48 83 ec 10          	sub    $0x10,%rsp
  40093f:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400943:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400947:	ba 20 00 00 00       	mov    $0x20,%edx
  40094c:	be c0 10 60 00       	mov    $0x6010c0,%esi
  400951:	48 89 c7             	mov    %rax,%rdi
  400954:	e8 36 ff ff ff       	call   40088f <seek> # seek(p1, 0x6010c0, 0x20)
  400959:	3c 47                	cmp    $0x47,%al
  40095b:	0f 94 c0             	sete   %al
  40095e:	0f b6 c0             	movzbl %al,%eax
  400961:	c9                   	leave
  400962:	c3                   	ret
  400963:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  40096a:	00 00 00 
  40096d:	0f 1f 00             	nopl   (%rax)

0000000000400970 <__libc_csu_init>:
  400970:	41 57                	push   %r15
  400972:	41 89 ff             	mov    %edi,%r15d
  400975:	41 56                	push   %r14
  400977:	49 89 f6             	mov    %rsi,%r14
  40097a:	41 55                	push   %r13
  40097c:	49 89 d5             	mov    %rdx,%r13
  40097f:	41 54                	push   %r12
  400981:	4c 8d 25 88 04 20 00 	lea    0x200488(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  400988:	55                   	push   %rbp
  400989:	48 8d 2d 88 04 20 00 	lea    0x200488(%rip),%rbp        # 600e18 <__do_global_dtors_aux_fini_array_entry>
  400990:	53                   	push   %rbx
  400991:	4c 29 e5             	sub    %r12,%rbp
  400994:	31 db                	xor    %ebx,%ebx
  400996:	48 c1 fd 03          	sar    $0x3,%rbp
  40099a:	48 83 ec 08          	sub    $0x8,%rsp
  40099e:	e8 95 fb ff ff       	call   400538 <_init>
  4009a3:	48 85 ed             	test   %rbp,%rbp
  4009a6:	74 1e                	je     4009c6 <__libc_csu_init+0x56>
  4009a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4009af:	00 
  4009b0:	4c 89 ea             	mov    %r13,%rdx
  4009b3:	4c 89 f6             	mov    %r14,%rsi
  4009b6:	44 89 ff             	mov    %r15d,%edi
  4009b9:	41 ff 14 dc          	call   *(%r12,%rbx,8)
  4009bd:	48 83 c3 01          	add    $0x1,%rbx
  4009c1:	48 39 eb             	cmp    %rbp,%rbx
  4009c4:	75 ea                	jne    4009b0 <__libc_csu_init+0x40>
  4009c6:	48 83 c4 08          	add    $0x8,%rsp
  4009ca:	5b                   	pop    %rbx
  4009cb:	5d                   	pop    %rbp
  4009cc:	41 5c                	pop    %r12
  4009ce:	41 5d                	pop    %r13
  4009d0:	41 5e                	pop    %r14
  4009d2:	41 5f                	pop    %r15
  4009d4:	c3                   	ret
  4009d5:	90                   	nop
  4009d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  4009dd:	00 00 00 

00000000004009e0 <__libc_csu_fini>:
  4009e0:	f3 c3                	repz ret

Disassembly of section .fini:

00000000004009e4 <_fini>:
  4009e4:	48 83 ec 08          	sub    $0x8,%rsp
  4009e8:	48 83 c4 08          	add    $0x8,%rsp
  4009ec:	c3                   	ret
