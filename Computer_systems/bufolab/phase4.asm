
phase4:     file format elf64-x86-64


Disassembly of section .init:

0000000000400730 <_init>:
  400730:	48 83 ec 08          	sub    $0x8,%rsp
  400734:	48 8b 05 bd 18 20 00 	mov    0x2018bd(%rip),%rax        # 601ff8 <__gmon_start__>
  40073b:	48 85 c0             	test   %rax,%rax
  40073e:	74 05                	je     400745 <_init+0x15>
  400740:	e8 bb 00 00 00       	call   400800 <__gmon_start__@plt>
  400745:	48 83 c4 08          	add    $0x8,%rsp
  400749:	c3                   	ret

Disassembly of section .plt:

0000000000400750 <.plt>:
  400750:	ff 35 b2 18 20 00    	push   0x2018b2(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400756:	ff 25 b4 18 20 00    	jmp    *0x2018b4(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40075c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400760 <puts@plt>:
  400760:	ff 25 b2 18 20 00    	jmp    *0x2018b2(%rip)        # 602018 <puts@GLIBC_2.2.5>
  400766:	68 00 00 00 00       	push   $0x0
  40076b:	e9 e0 ff ff ff       	jmp    400750 <.plt>

0000000000400770 <ferror@plt>:
  400770:	ff 25 aa 18 20 00    	jmp    *0x2018aa(%rip)        # 602020 <ferror@GLIBC_2.2.5>
  400776:	68 01 00 00 00       	push   $0x1
  40077b:	e9 d0 ff ff ff       	jmp    400750 <.plt>

0000000000400780 <fread@plt>:
  400780:	ff 25 a2 18 20 00    	jmp    *0x2018a2(%rip)        # 602028 <fread@GLIBC_2.2.5>
  400786:	68 02 00 00 00       	push   $0x2
  40078b:	e9 c0 ff ff ff       	jmp    400750 <.plt>

0000000000400790 <getpid@plt>:
  400790:	ff 25 9a 18 20 00    	jmp    *0x20189a(%rip)        # 602030 <getpid@GLIBC_2.2.5>
  400796:	68 03 00 00 00       	push   $0x3
  40079b:	e9 b0 ff ff ff       	jmp    400750 <.plt>

00000000004007a0 <fclose@plt>:
  4007a0:	ff 25 92 18 20 00    	jmp    *0x201892(%rip)        # 602038 <fclose@GLIBC_2.2.5>
  4007a6:	68 04 00 00 00       	push   $0x4
  4007ab:	e9 a0 ff ff ff       	jmp    400750 <.plt>

00000000004007b0 <mmap@plt>:
  4007b0:	ff 25 8a 18 20 00    	jmp    *0x20188a(%rip)        # 602040 <mmap@GLIBC_2.2.5>
  4007b6:	68 05 00 00 00       	push   $0x5
  4007bb:	e9 90 ff ff ff       	jmp    400750 <.plt>

00000000004007c0 <printf@plt>:
  4007c0:	ff 25 82 18 20 00    	jmp    *0x201882(%rip)        # 602048 <printf@GLIBC_2.2.5>
  4007c6:	68 06 00 00 00       	push   $0x6
  4007cb:	e9 80 ff ff ff       	jmp    400750 <.plt>

00000000004007d0 <memset@plt>:
  4007d0:	ff 25 7a 18 20 00    	jmp    *0x20187a(%rip)        # 602050 <memset@GLIBC_2.2.5>
  4007d6:	68 07 00 00 00       	push   $0x7
  4007db:	e9 70 ff ff ff       	jmp    400750 <.plt>

00000000004007e0 <__libc_start_main@plt>:
  4007e0:	ff 25 72 18 20 00    	jmp    *0x201872(%rip)        # 602058 <__libc_start_main@GLIBC_2.2.5>
  4007e6:	68 08 00 00 00       	push   $0x8
  4007eb:	e9 60 ff ff ff       	jmp    400750 <.plt>

00000000004007f0 <srand@plt>:
  4007f0:	ff 25 6a 18 20 00    	jmp    *0x20186a(%rip)        # 602060 <srand@GLIBC_2.2.5>
  4007f6:	68 09 00 00 00       	push   $0x9
  4007fb:	e9 50 ff ff ff       	jmp    400750 <.plt>

0000000000400800 <__gmon_start__@plt>:
  400800:	ff 25 62 18 20 00    	jmp    *0x201862(%rip)        # 602068 <__gmon_start__>
  400806:	68 0a 00 00 00       	push   $0xa
  40080b:	e9 40 ff ff ff       	jmp    400750 <.plt>

0000000000400810 <munmap@plt>:
  400810:	ff 25 5a 18 20 00    	jmp    *0x20185a(%rip)        # 602070 <munmap@GLIBC_2.2.5>
  400816:	68 0b 00 00 00       	push   $0xb
  40081b:	e9 30 ff ff ff       	jmp    400750 <.plt>

0000000000400820 <fopen@plt>:
  400820:	ff 25 52 18 20 00    	jmp    *0x201852(%rip)        # 602078 <fopen@GLIBC_2.2.5>
  400826:	68 0c 00 00 00       	push   $0xc
  40082b:	e9 20 ff ff ff       	jmp    400750 <.plt>

0000000000400830 <fwrite@plt>:
  400830:	ff 25 4a 18 20 00    	jmp    *0x20184a(%rip)        # 602080 <fwrite@GLIBC_2.2.5>
  400836:	68 0d 00 00 00       	push   $0xd
  40083b:	e9 10 ff ff ff       	jmp    400750 <.plt>

0000000000400840 <rand@plt>:
  400840:	ff 25 42 18 20 00    	jmp    *0x201842(%rip)        # 602088 <rand@GLIBC_2.2.5>
  400846:	68 0e 00 00 00       	push   $0xe
  40084b:	e9 00 ff ff ff       	jmp    400750 <.plt>

Disassembly of section .text:

0000000000400850 <_start>:
  400850:	31 ed                	xor    %ebp,%ebp
  400852:	49 89 d1             	mov    %rdx,%r9
  400855:	5e                   	pop    %rsi
  400856:	48 89 e2             	mov    %rsp,%rdx
  400859:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40085d:	50                   	push   %rax
  40085e:	54                   	push   %rsp
  40085f:	49 c7 c0 90 0f 40 00 	mov    $0x400f90,%r8
  400866:	48 c7 c1 20 0f 40 00 	mov    $0x400f20,%rcx
  40086d:	48 c7 c7 0e 0d 40 00 	mov    $0x400d0e,%rdi
  400874:	e8 67 ff ff ff       	call   4007e0 <__libc_start_main@plt>
  400879:	f4                   	hlt
  40087a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400880 <deregister_tm_clones>:
  400880:	b8 37 21 60 00       	mov    $0x602137,%eax
  400885:	55                   	push   %rbp
  400886:	48 2d 30 21 60 00    	sub    $0x602130,%rax
  40088c:	48 83 f8 0e          	cmp    $0xe,%rax
  400890:	48 89 e5             	mov    %rsp,%rbp
  400893:	77 02                	ja     400897 <deregister_tm_clones+0x17>
  400895:	5d                   	pop    %rbp
  400896:	c3                   	ret
  400897:	b8 00 00 00 00       	mov    $0x0,%eax
  40089c:	48 85 c0             	test   %rax,%rax
  40089f:	74 f4                	je     400895 <deregister_tm_clones+0x15>
  4008a1:	5d                   	pop    %rbp
  4008a2:	bf 30 21 60 00       	mov    $0x602130,%edi
  4008a7:	ff e0                	jmp    *%rax
  4008a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004008b0 <register_tm_clones>:
  4008b0:	b8 30 21 60 00       	mov    $0x602130,%eax
  4008b5:	55                   	push   %rbp
  4008b6:	48 2d 30 21 60 00    	sub    $0x602130,%rax
  4008bc:	48 c1 f8 03          	sar    $0x3,%rax
  4008c0:	48 89 e5             	mov    %rsp,%rbp
  4008c3:	48 89 c2             	mov    %rax,%rdx
  4008c6:	48 c1 ea 3f          	shr    $0x3f,%rdx
  4008ca:	48 01 d0             	add    %rdx,%rax
  4008cd:	48 d1 f8             	sar    $1,%rax
  4008d0:	75 02                	jne    4008d4 <register_tm_clones+0x24>
  4008d2:	5d                   	pop    %rbp
  4008d3:	c3                   	ret
  4008d4:	ba 00 00 00 00       	mov    $0x0,%edx
  4008d9:	48 85 d2             	test   %rdx,%rdx
  4008dc:	74 f4                	je     4008d2 <register_tm_clones+0x22>
  4008de:	5d                   	pop    %rbp
  4008df:	48 89 c6             	mov    %rax,%rsi
  4008e2:	bf 30 21 60 00       	mov    $0x602130,%edi
  4008e7:	ff e2                	jmp    *%rdx
  4008e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004008f0 <__do_global_dtors_aux>:
  4008f0:	80 3d 59 18 20 00 00 	cmpb   $0x0,0x201859(%rip)        # 602150 <completed.6355>
  4008f7:	75 11                	jne    40090a <__do_global_dtors_aux+0x1a>
  4008f9:	55                   	push   %rbp
  4008fa:	48 89 e5             	mov    %rsp,%rbp
  4008fd:	e8 7e ff ff ff       	call   400880 <deregister_tm_clones>
  400902:	5d                   	pop    %rbp
  400903:	c6 05 46 18 20 00 01 	movb   $0x1,0x201846(%rip)        # 602150 <completed.6355>
  40090a:	f3 c3                	repz ret
  40090c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400910 <frame_dummy>:
  400910:	48 83 3d 08 15 20 00 	cmpq   $0x0,0x201508(%rip)        # 601e20 <__JCR_END__>
  400917:	00 
  400918:	74 1e                	je     400938 <frame_dummy+0x28>
  40091a:	b8 00 00 00 00       	mov    $0x0,%eax
  40091f:	48 85 c0             	test   %rax,%rax
  400922:	74 14                	je     400938 <frame_dummy+0x28>
  400924:	55                   	push   %rbp
  400925:	bf 20 1e 60 00       	mov    $0x601e20,%edi
  40092a:	48 89 e5             	mov    %rsp,%rbp
  40092d:	ff d0                	call   *%rax
  40092f:	5d                   	pop    %rbp
  400930:	e9 7b ff ff ff       	jmp    4008b0 <register_tm_clones>
  400935:	0f 1f 00             	nopl   (%rax)
  400938:	e9 73 ff ff ff       	jmp    4008b0 <register_tm_clones>

000000000040093d <_r_func_>:
  40093d:	55                   	push   %rbp
  40093e:	48 89 e5             	mov    %rsp,%rbp
  400941:	90                   	nop
  400942:	90                   	nop
  400943:	90                   	nop
  400944:	90                   	nop
  400945:	90                   	nop
  400946:	90                   	nop
  400947:	90                   	nop
  400948:	90                   	nop
  400949:	90                   	nop
  40094a:	90                   	nop
  40094b:	90                   	nop
  40094c:	90                   	nop
  40094d:	5d                   	pop    %rbp
  40094e:	c3                   	ret

000000000040094f <target>:
  40094f:	55                   	push   %rbp
  400950:	48 89 e5             	mov    %rsp,%rbp
  400953:	48 83 ec 30          	sub    $0x30,%rsp
  400957:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  40095b:	48 b8 77 75 68 79 6e 	movabs $0x6571726e79687577,%rax
  400962:	72 71 65 
  400965:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  400969:	c6 45 e8 00          	movb   $0x0,-0x18(%rbp)
  40096d:	c7 45 fc 01 00 00 00 	movl   $0x1,-0x4(%rbp)
  400974:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  40097b:	eb 34                	jmp    4009b1 <target+0x62>
  40097d:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400980:	48 63 d0             	movslq %eax,%rdx
  400983:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  400987:	48 01 d0             	add    %rdx,%rax
  40098a:	0f b6 00             	movzbl (%rax),%eax
  40098d:	0f be c0             	movsbl %al,%eax
  400990:	8d 50 07             	lea    0x7(%rax),%edx
  400993:	8b 45 f8             	mov    -0x8(%rbp),%eax
  400996:	48 98                	cltq
  400998:	0f b6 44 05 e0       	movzbl -0x20(%rbp,%rax,1),%eax
  40099d:	0f be c0             	movsbl %al,%eax
  4009a0:	39 c2                	cmp    %eax,%edx
  4009a2:	74 09                	je     4009ad <target+0x5e>
  4009a4:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4009ab:	eb 0a                	jmp    4009b7 <target+0x68>
  4009ad:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
  4009b1:	83 7d f8 07          	cmpl   $0x7,-0x8(%rbp)
  4009b5:	7e c6                	jle    40097d <target+0x2e>
  4009b7:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  4009bb:	74 1c                	je     4009d9 <target+0x8a>
  4009bd:	48 8b 55 d8          	mov    -0x28(%rbp),%rdx
  4009c1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4009c5:	48 89 c6             	mov    %rax,%rsi
  4009c8:	bf b8 0f 40 00       	mov    $0x400fb8,%edi
  4009cd:	b8 00 00 00 00       	mov    $0x0,%eax
  4009d2:	e8 e9 fd ff ff       	call   4007c0 <printf@plt>
  4009d7:	eb 0a                	jmp    4009e3 <target+0x94>
  4009d9:	bf f8 0f 40 00       	mov    $0x400ff8,%edi
  4009de:	e8 7d fd ff ff       	call   400760 <puts@plt>
  4009e3:	c9                   	leave
  4009e4:	c3                   	ret

00000000004009e5 <do_phase>:
  4009e5:	55                   	push   %rbp
  4009e6:	48 89 e5             	mov    %rsp,%rbp
  4009e9:	48 81 ec 50 02 00 00 	sub    $0x250,%rsp
  4009f0:	48 89 bd b8 fd ff ff 	mov    %rdi,-0x248(%rbp)
  4009f7:	48 8d 95 c0 fd ff ff 	lea    -0x240(%rbp),%rdx
  4009fe:	48 8b 85 b8 fd ff ff 	mov    -0x248(%rbp),%rax
  400a05:	48 89 d6             	mov    %rdx,%rsi
  400a08:	48 89 c7             	mov    %rax,%rdi
  400a0b:	e8 9b 00 00 00       	call   400aab <digit2hex>
  400a10:	c9                   	leave
  400a11:	c3                   	ret

0000000000400a12 <phase>:
  400a12:	55                   	push   %rbp
  400a13:	48 89 e5             	mov    %rsp,%rbp
  400a16:	48 83 ec 20          	sub    $0x20,%rsp
  400a1a:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400a1e:	48 89 e0             	mov    %rsp,%rax
  400a21:	48 89 05 30 17 20 00 	mov    %rax,0x201730(%rip)        # 602158 <init_stack_top.2871>
  400a28:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400a2f:	eb 48                	jmp    400a79 <phase+0x67>
  400a31:	48 8b 05 20 17 20 00 	mov    0x201720(%rip),%rax        # 602158 <init_stack_top.2871>
  400a38:	48 89 c4             	mov    %rax,%rsp
  400a3b:	e8 00 fe ff ff       	call   400840 <rand@plt>
  400a40:	48 98                	cltq
  400a42:	0f b6 c0             	movzbl %al,%eax
  400a45:	48 8d 50 0f          	lea    0xf(%rax),%rdx
  400a49:	b8 10 00 00 00       	mov    $0x10,%eax
  400a4e:	48 83 e8 01          	sub    $0x1,%rax
  400a52:	48 01 d0             	add    %rdx,%rax
  400a55:	b9 10 00 00 00       	mov    $0x10,%ecx
  400a5a:	ba 00 00 00 00       	mov    $0x0,%edx
  400a5f:	48 f7 f1             	div    %rcx
  400a62:	48 6b c0 10          	imul   $0x10,%rax,%rax
  400a66:	48 29 c4             	sub    %rax,%rsp
  400a69:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400a6d:	48 89 c7             	mov    %rax,%rdi
  400a70:	e8 70 ff ff ff       	call   4009e5 <do_phase>
  400a75:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  400a79:	83 7d fc 05          	cmpl   $0x5,-0x4(%rbp)
  400a7d:	7e b2                	jle    400a31 <phase+0x1f>
  400a7f:	48 8b 05 d2 16 20 00 	mov    0x2016d2(%rip),%rax        # 602158 <init_stack_top.2871>
  400a86:	48 89 c4             	mov    %rax,%rsp
  400a89:	83 7d fc 06          	cmpl   $0x6,-0x4(%rbp)
  400a8d:	0f 94 c0             	sete   %al
  400a90:	0f b6 c0             	movzbl %al,%eax
  400a93:	89 c6                	mov    %eax,%esi
  400a95:	bf 20 10 40 00       	mov    $0x401020,%edi
  400a9a:	b8 00 00 00 00       	mov    $0x0,%eax
  400a9f:	e8 1c fd ff ff       	call   4007c0 <printf@plt>
  400aa4:	b8 01 00 00 00       	mov    $0x1,%eax
  400aa9:	c9                   	leave
  400aaa:	c3                   	ret

0000000000400aab <digit2hex>:
  400aab:	55                   	push   %rbp
  400aac:	48 89 e5             	mov    %rsp,%rbp
  400aaf:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400ab3:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400ab7:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  400abe:	00 
  400abf:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  400ac6:	e9 a5 00 00 00       	jmp    400b70 <digit2hex+0xc5>
  400acb:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400acf:	0f b6 00             	movzbl (%rax),%eax
  400ad2:	3c 23                	cmp    $0x23,%al
  400ad4:	75 12                	jne    400ae8 <digit2hex+0x3d>
  400ad6:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  400ada:	0f 94 c0             	sete   %al
  400add:	0f b6 c0             	movzbl %al,%eax
  400ae0:	89 45 f4             	mov    %eax,-0xc(%rbp)
  400ae3:	e9 83 00 00 00       	jmp    400b6b <digit2hex+0xc0>
  400ae8:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  400aec:	74 02                	je     400af0 <digit2hex+0x45>
  400aee:	eb 7b                	jmp    400b6b <digit2hex+0xc0>
  400af0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400af4:	0f b6 00             	movzbl (%rax),%eax
  400af7:	0f be c0             	movsbl %al,%eax
  400afa:	83 e0 7f             	and    $0x7f,%eax
  400afd:	48 98                	cltq
  400aff:	0f b6 80 40 10 40 00 	movzbl 0x401040(%rax),%eax
  400b06:	3c ff                	cmp    $0xff,%al
  400b08:	75 02                	jne    400b0c <digit2hex+0x61>
  400b0a:	eb 5f                	jmp    400b6b <digit2hex+0xc0>
  400b0c:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  400b11:	74 50                	je     400b63 <digit2hex+0xb8>
  400b13:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400b17:	0f b6 00             	movzbl (%rax),%eax
  400b1a:	0f be c0             	movsbl %al,%eax
  400b1d:	83 e0 7f             	and    $0x7f,%eax
  400b20:	48 98                	cltq
  400b22:	0f b6 80 40 10 40 00 	movzbl 0x401040(%rax),%eax
  400b29:	0f b6 c0             	movzbl %al,%eax
  400b2c:	c1 e0 04             	shl    $0x4,%eax
  400b2f:	89 c2                	mov    %eax,%edx
  400b31:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400b35:	0f b6 00             	movzbl (%rax),%eax
  400b38:	0f be c0             	movsbl %al,%eax
  400b3b:	83 e0 7f             	and    $0x7f,%eax
  400b3e:	48 98                	cltq
  400b40:	0f b6 80 40 10 40 00 	movzbl 0x401040(%rax),%eax
  400b47:	83 e0 0f             	and    $0xf,%eax
  400b4a:	09 d0                	or     %edx,%eax
  400b4c:	89 c2                	mov    %eax,%edx
  400b4e:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400b52:	88 10                	mov    %dl,(%rax)
  400b54:	48 83 45 e0 01       	addq   $0x1,-0x20(%rbp)
  400b59:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  400b60:	00 
  400b61:	eb 08                	jmp    400b6b <digit2hex+0xc0>
  400b63:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400b67:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400b6b:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
  400b70:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400b74:	0f b6 00             	movzbl (%rax),%eax
  400b77:	84 c0                	test   %al,%al
  400b79:	0f 85 4c ff ff ff    	jne    400acb <digit2hex+0x20>
  400b7f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400b83:	5d                   	pop    %rbp
  400b84:	c3                   	ret

0000000000400b85 <getrid>:
  400b85:	55                   	push   %rbp
  400b86:	48 89 e5             	mov    %rsp,%rbp
  400b89:	8b 05 9d 15 20 00    	mov    0x20159d(%rip),%eax        # 60212c <run_id.3623>
  400b8f:	85 c0                	test   %eax,%eax
  400b91:	79 17                	jns    400baa <getrid+0x25>
  400b93:	e8 f8 fb ff ff       	call   400790 <getpid@plt>
  400b98:	89 c7                	mov    %eax,%edi
  400b9a:	e8 51 fc ff ff       	call   4007f0 <srand@plt>
  400b9f:	e8 9c fc ff ff       	call   400840 <rand@plt>
  400ba4:	89 05 82 15 20 00    	mov    %eax,0x201582(%rip)        # 60212c <run_id.3623>
  400baa:	8b 05 7c 15 20 00    	mov    0x20157c(%rip),%eax        # 60212c <run_id.3623>
  400bb0:	5d                   	pop    %rbp
  400bb1:	c3                   	ret

0000000000400bb2 <fillregion>:
  400bb2:	55                   	push   %rbp
  400bb3:	48 89 e5             	mov    %rsp,%rbp
  400bb6:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400bba:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  400bbd:	89 55 e0             	mov    %edx,-0x20(%rbp)
  400bc0:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400bc7:	eb 1d                	jmp    400be6 <fillregion+0x34>
  400bc9:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400bcc:	48 98                	cltq
  400bce:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400bd5:	00 
  400bd6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400bda:	48 01 c2             	add    %rax,%rdx
  400bdd:	8b 45 e0             	mov    -0x20(%rbp),%eax
  400be0:	89 02                	mov    %eax,(%rdx)
  400be2:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  400be6:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400be9:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
  400bec:	7c db                	jl     400bc9 <fillregion+0x17>
  400bee:	5d                   	pop    %rbp
  400bef:	c3                   	ret

0000000000400bf0 <checkregion>:
  400bf0:	55                   	push   %rbp
  400bf1:	48 89 e5             	mov    %rsp,%rbp
  400bf4:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400bf8:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  400bfb:	89 55 e0             	mov    %edx,-0x20(%rbp)
  400bfe:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400c05:	eb 26                	jmp    400c2d <checkregion+0x3d>
  400c07:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400c0a:	48 98                	cltq
  400c0c:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400c13:	00 
  400c14:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400c18:	48 01 d0             	add    %rdx,%rax
  400c1b:	8b 00                	mov    (%rax),%eax
  400c1d:	3b 45 e0             	cmp    -0x20(%rbp),%eax
  400c20:	74 07                	je     400c29 <checkregion+0x39>
  400c22:	b8 00 00 00 00       	mov    $0x0,%eax
  400c27:	eb 11                	jmp    400c3a <checkregion+0x4a>
  400c29:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  400c2d:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400c30:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
  400c33:	7c d2                	jl     400c07 <checkregion+0x17>
  400c35:	b8 01 00 00 00       	mov    $0x1,%eax
  400c3a:	5d                   	pop    %rbp
  400c3b:	c3                   	ret

0000000000400c3c <exec_phase>:
  400c3c:	55                   	push   %rbp
  400c3d:	48 89 e5             	mov    %rsp,%rbp
  400c40:	53                   	push   %rbx
  400c41:	48 83 ec 58          	sub    $0x58,%rsp
  400c45:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
  400c49:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  400c4d:	25 f0 3f 00 00       	and    $0x3ff0,%eax
  400c52:	48 89 05 27 35 20 00 	mov    %rax,0x203527(%rip)        # 604180 <alloca_size.3650>
  400c59:	48 8b 05 20 35 20 00 	mov    0x203520(%rip),%rax        # 604180 <alloca_size.3650>
  400c60:	48 8d 50 0f          	lea    0xf(%rax),%rdx
  400c64:	b8 10 00 00 00       	mov    $0x10,%eax
  400c69:	48 83 e8 01          	sub    $0x1,%rax
  400c6d:	48 01 d0             	add    %rdx,%rax
  400c70:	bb 10 00 00 00       	mov    $0x10,%ebx
  400c75:	ba 00 00 00 00       	mov    $0x0,%edx
  400c7a:	48 f7 f3             	div    %rbx
  400c7d:	48 6b c0 10          	imul   $0x10,%rax,%rax
  400c81:	48 29 c4             	sub    %rax,%rsp
  400c84:	48 89 e0             	mov    %rsp,%rax
  400c87:	48 83 c0 0f          	add    $0xf,%rax
  400c8b:	48 c1 e8 04          	shr    $0x4,%rax
  400c8f:	48 c1 e0 04          	shl    $0x4,%rax
  400c93:	48 89 05 ee 34 20 00 	mov    %rax,0x2034ee(%rip)        # 604188 <alloca_region.3649>
  400c9a:	b8 00 00 00 00       	mov    $0x0,%eax
  400c9f:	e8 e1 fe ff ff       	call   400b85 <getrid>
  400ca4:	89 c2                	mov    %eax,%edx
  400ca6:	48 8b 05 d3 34 20 00 	mov    0x2034d3(%rip),%rax        # 604180 <alloca_size.3650>
  400cad:	48 c1 e8 02          	shr    $0x2,%rax
  400cb1:	89 c1                	mov    %eax,%ecx
  400cb3:	48 8b 05 ce 34 20 00 	mov    0x2034ce(%rip),%rax        # 604188 <alloca_region.3649>
  400cba:	89 ce                	mov    %ecx,%esi
  400cbc:	48 89 c7             	mov    %rax,%rdi
  400cbf:	e8 ee fe ff ff       	call   400bb2 <fillregion>
  400cc4:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  400cc8:	48 89 c7             	mov    %rax,%rdi
  400ccb:	e8 42 fd ff ff       	call   400a12 <phase>
  400cd0:	b8 00 00 00 00       	mov    $0x0,%eax
  400cd5:	e8 ab fe ff ff       	call   400b85 <getrid>
  400cda:	89 c2                	mov    %eax,%edx
  400cdc:	48 8b 05 9d 34 20 00 	mov    0x20349d(%rip),%rax        # 604180 <alloca_size.3650>
  400ce3:	48 c1 e8 02          	shr    $0x2,%rax
  400ce7:	89 c1                	mov    %eax,%ecx
  400ce9:	48 8b 05 98 34 20 00 	mov    0x203498(%rip),%rax        # 604188 <alloca_region.3649>
  400cf0:	89 ce                	mov    %ecx,%esi
  400cf2:	48 89 c7             	mov    %rax,%rdi
  400cf5:	e8 f6 fe ff ff       	call   400bf0 <checkregion>
  400cfa:	85 c0                	test   %eax,%eax
  400cfc:	75 0a                	jne    400d08 <exec_phase+0xcc>
  400cfe:	bf c0 10 40 00       	mov    $0x4010c0,%edi
  400d03:	e8 58 fa ff ff       	call   400760 <puts@plt>
  400d08:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  400d0c:	c9                   	leave
  400d0d:	c3                   	ret

0000000000400d0e <main>:
  400d0e:	55                   	push   %rbp
  400d0f:	48 89 e5             	mov    %rsp,%rbp
  400d12:	48 83 ec 20          	sub    $0x20,%rsp
  400d16:	89 7d ec             	mov    %edi,-0x14(%rbp)
  400d19:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400d1d:	b8 00 00 00 00       	mov    $0x0,%eax
  400d22:	e8 5e fe ff ff       	call   400b85 <getrid>
  400d27:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  400d2e:	00 
  400d2f:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
  400d33:	75 0d                	jne    400d42 <main+0x34>
  400d35:	48 8b 05 04 14 20 00 	mov    0x201404(%rip),%rax        # 602140 <stdin@GLIBC_2.2.5>
  400d3c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400d40:	eb 73                	jmp    400db5 <main+0xa7>
  400d42:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
  400d46:	75 4a                	jne    400d92 <main+0x84>
  400d48:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400d4c:	48 83 c0 08          	add    $0x8,%rax
  400d50:	48 8b 00             	mov    (%rax),%rax
  400d53:	be e2 10 40 00       	mov    $0x4010e2,%esi
  400d58:	48 89 c7             	mov    %rax,%rdi
  400d5b:	e8 c0 fa ff ff       	call   400820 <fopen@plt>
  400d60:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400d64:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  400d69:	75 4a                	jne    400db5 <main+0xa7>
  400d6b:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400d6f:	48 83 c0 08          	add    $0x8,%rax
  400d73:	48 8b 00             	mov    (%rax),%rax
  400d76:	48 89 c6             	mov    %rax,%rsi
  400d79:	bf e8 10 40 00       	mov    $0x4010e8,%edi
  400d7e:	b8 00 00 00 00       	mov    $0x0,%eax
  400d83:	e8 38 fa ff ff       	call   4007c0 <printf@plt>
  400d88:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  400d8d:	e9 87 01 00 00       	jmp    400f19 <main+0x20b>
  400d92:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400d96:	48 8b 00             	mov    (%rax),%rax
  400d99:	48 89 c6             	mov    %rax,%rsi
  400d9c:	bf 0c 11 40 00       	mov    $0x40110c,%edi
  400da1:	b8 00 00 00 00       	mov    $0x0,%eax
  400da6:	e8 15 fa ff ff       	call   4007c0 <printf@plt>
  400dab:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  400db0:	e9 64 01 00 00       	jmp    400f19 <main+0x20b>
  400db5:	bf 28 11 40 00       	mov    $0x401128,%edi
  400dba:	e8 a1 f9 ff ff       	call   400760 <puts@plt>
  400dbf:	bf 58 11 40 00       	mov    $0x401158,%edi
  400dc4:	e8 97 f9 ff ff       	call   400760 <puts@plt>
  400dc9:	ba 00 20 00 00       	mov    $0x2000,%edx
  400dce:	be 00 00 00 00       	mov    $0x0,%esi
  400dd3:	bf 80 21 60 00       	mov    $0x602180,%edi
  400dd8:	e8 f3 f9 ff ff       	call   4007d0 <memset@plt>
  400ddd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400de1:	48 89 c1             	mov    %rax,%rcx
  400de4:	ba ff 1f 00 00       	mov    $0x1fff,%edx
  400de9:	be 01 00 00 00       	mov    $0x1,%esi
  400dee:	bf 80 21 60 00       	mov    $0x602180,%edi
  400df3:	e8 88 f9 ff ff       	call   400780 <fread@plt>
  400df8:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  400dfc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400e00:	48 89 c7             	mov    %rax,%rdi
  400e03:	e8 68 f9 ff ff       	call   400770 <ferror@plt>
  400e08:	85 c0                	test   %eax,%eax
  400e0a:	74 0f                	je     400e1b <main+0x10d>
  400e0c:	bf 80 11 40 00       	mov    $0x401180,%edi
  400e11:	e8 4a f9 ff ff       	call   400760 <puts@plt>
  400e16:	e9 e0 00 00 00       	jmp    400efb <main+0x1ed>
  400e1b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400e1f:	48 05 80 21 60 00    	add    $0x602180,%rax
  400e25:	c6 00 00             	movb   $0x0,(%rax)
  400e28:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  400e2e:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  400e34:	b9 32 01 00 00       	mov    $0x132,%ecx
  400e39:	ba 07 00 00 00       	mov    $0x7,%edx
  400e3e:	be 00 40 00 00       	mov    $0x4000,%esi
  400e43:	bf 00 00 00 04       	mov    $0x4000000,%edi
  400e48:	e8 63 f9 ff ff       	call   4007b0 <mmap@plt>
  400e4d:	48 89 05 0c 13 20 00 	mov    %rax,0x20130c(%rip)        # 602160 <buffer_stack_area>
  400e54:	48 8b 05 05 13 20 00 	mov    0x201305(%rip),%rax        # 602160 <buffer_stack_area>
  400e5b:	48 3d 00 00 00 04    	cmp    $0x4000000,%rax
  400e61:	74 28                	je     400e8b <main+0x17d>
  400e63:	48 8b 05 de 12 20 00 	mov    0x2012de(%rip),%rax        # 602148 <stderr@GLIBC_2.2.5>
  400e6a:	48 89 c1             	mov    %rax,%rcx
  400e6d:	ba 53 00 00 00       	mov    $0x53,%edx
  400e72:	be 01 00 00 00       	mov    $0x1,%esi
  400e77:	bf a8 11 40 00       	mov    $0x4011a8,%edi
  400e7c:	e8 af f9 ff ff       	call   400830 <fwrite@plt>
  400e81:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  400e86:	e9 8e 00 00 00       	jmp    400f19 <main+0x20b>
  400e8b:	48 8b 05 ce 12 20 00 	mov    0x2012ce(%rip),%rax        # 602160 <buffer_stack_area>
  400e92:	48 05 f8 3f 00 00    	add    $0x3ff8,%rax
  400e98:	48 89 05 c9 12 20 00 	mov    %rax,0x2012c9(%rip)        # 602168 <buffer_stack_top>
  400e9f:	48 8b 15 c2 12 20 00 	mov    0x2012c2(%rip),%rdx        # 602168 <buffer_stack_top>
  400ea6:	48 89 e0             	mov    %rsp,%rax
  400ea9:	48 89 d4             	mov    %rdx,%rsp
  400eac:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400eb0:	48 89 c2             	mov    %rax,%rdx
  400eb3:	48 89 15 b6 12 20 00 	mov    %rdx,0x2012b6(%rip)        # 602170 <main_stack_top>
  400eba:	bf 80 21 60 00       	mov    $0x602180,%edi
  400ebf:	e8 78 fd ff ff       	call   400c3c <exec_phase>
  400ec4:	48 8b 05 a5 12 20 00 	mov    0x2012a5(%rip),%rax        # 602170 <main_stack_top>
  400ecb:	48 89 c4             	mov    %rax,%rsp
  400ece:	48 8b 05 8b 12 20 00 	mov    0x20128b(%rip),%rax        # 602160 <buffer_stack_area>
  400ed5:	be 00 40 00 00       	mov    $0x4000,%esi
  400eda:	48 89 c7             	mov    %rax,%rdi
  400edd:	e8 2e f9 ff ff       	call   400810 <munmap@plt>
  400ee2:	48 c7 05 7b 12 20 00 	movq   $0x0,0x20127b(%rip)        # 602168 <buffer_stack_top>
  400ee9:	00 00 00 00 
  400eed:	48 8b 05 74 12 20 00 	mov    0x201274(%rip),%rax        # 602168 <buffer_stack_top>
  400ef4:	48 89 05 65 12 20 00 	mov    %rax,0x201265(%rip)        # 602160 <buffer_stack_area>
  400efb:	48 8b 05 3e 12 20 00 	mov    0x20123e(%rip),%rax        # 602140 <stdin@GLIBC_2.2.5>
  400f02:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
  400f06:	74 0c                	je     400f14 <main+0x206>
  400f08:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f0c:	48 89 c7             	mov    %rax,%rdi
  400f0f:	e8 8c f8 ff ff       	call   4007a0 <fclose@plt>
  400f14:	b8 00 00 00 00       	mov    $0x0,%eax
  400f19:	c9                   	leave
  400f1a:	c3                   	ret
  400f1b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000400f20 <__libc_csu_init>:
  400f20:	41 57                	push   %r15
  400f22:	41 89 ff             	mov    %edi,%r15d
  400f25:	41 56                	push   %r14
  400f27:	49 89 f6             	mov    %rsi,%r14
  400f2a:	41 55                	push   %r13
  400f2c:	49 89 d5             	mov    %rdx,%r13
  400f2f:	41 54                	push   %r12
  400f31:	4c 8d 25 d8 0e 20 00 	lea    0x200ed8(%rip),%r12        # 601e10 <__frame_dummy_init_array_entry>
  400f38:	55                   	push   %rbp
  400f39:	48 8d 2d d8 0e 20 00 	lea    0x200ed8(%rip),%rbp        # 601e18 <__do_global_dtors_aux_fini_array_entry>
  400f40:	53                   	push   %rbx
  400f41:	4c 29 e5             	sub    %r12,%rbp
  400f44:	31 db                	xor    %ebx,%ebx
  400f46:	48 c1 fd 03          	sar    $0x3,%rbp
  400f4a:	48 83 ec 08          	sub    $0x8,%rsp
  400f4e:	e8 dd f7 ff ff       	call   400730 <_init>
  400f53:	48 85 ed             	test   %rbp,%rbp
  400f56:	74 1e                	je     400f76 <__libc_csu_init+0x56>
  400f58:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400f5f:	00 
  400f60:	4c 89 ea             	mov    %r13,%rdx
  400f63:	4c 89 f6             	mov    %r14,%rsi
  400f66:	44 89 ff             	mov    %r15d,%edi
  400f69:	41 ff 14 dc          	call   *(%r12,%rbx,8)
  400f6d:	48 83 c3 01          	add    $0x1,%rbx
  400f71:	48 39 eb             	cmp    %rbp,%rbx
  400f74:	75 ea                	jne    400f60 <__libc_csu_init+0x40>
  400f76:	48 83 c4 08          	add    $0x8,%rsp
  400f7a:	5b                   	pop    %rbx
  400f7b:	5d                   	pop    %rbp
  400f7c:	41 5c                	pop    %r12
  400f7e:	41 5d                	pop    %r13
  400f80:	41 5e                	pop    %r14
  400f82:	41 5f                	pop    %r15
  400f84:	c3                   	ret
  400f85:	90                   	nop
  400f86:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  400f8d:	00 00 00 

0000000000400f90 <__libc_csu_fini>:
  400f90:	f3 c3                	repz ret

Disassembly of section .fini:

0000000000400f94 <_fini>:
  400f94:	48 83 ec 08          	sub    $0x8,%rsp
  400f98:	48 83 c4 08          	add    $0x8,%rsp
  400f9c:	c3                   	ret
