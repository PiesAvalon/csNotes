
phase3:     file format elf64-x86-64


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
  40085f:	49 c7 c0 e0 0f 40 00 	mov    $0x400fe0,%r8
  400866:	48 c7 c1 70 0f 40 00 	mov    $0x400f70,%rcx
  40086d:	48 c7 c7 63 0d 40 00 	mov    $0x400d63,%rdi
  400874:	e8 67 ff ff ff       	call   4007e0 <__libc_start_main@plt>
  400879:	f4                   	hlt
  40087a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400880 <deregister_tm_clones>:
  400880:	b8 47 21 60 00       	mov    $0x602147,%eax
  400885:	55                   	push   %rbp
  400886:	48 2d 40 21 60 00    	sub    $0x602140,%rax
  40088c:	48 83 f8 0e          	cmp    $0xe,%rax
  400890:	48 89 e5             	mov    %rsp,%rbp
  400893:	77 02                	ja     400897 <deregister_tm_clones+0x17>
  400895:	5d                   	pop    %rbp
  400896:	c3                   	ret
  400897:	b8 00 00 00 00       	mov    $0x0,%eax
  40089c:	48 85 c0             	test   %rax,%rax
  40089f:	74 f4                	je     400895 <deregister_tm_clones+0x15>
  4008a1:	5d                   	pop    %rbp
  4008a2:	bf 40 21 60 00       	mov    $0x602140,%edi
  4008a7:	ff e0                	jmp    *%rax
  4008a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000004008b0 <register_tm_clones>:
  4008b0:	b8 40 21 60 00       	mov    $0x602140,%eax
  4008b5:	55                   	push   %rbp
  4008b6:	48 2d 40 21 60 00    	sub    $0x602140,%rax
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
  4008e2:	bf 40 21 60 00       	mov    $0x602140,%edi
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
  40094d:	90                   	nop
  40094e:	90                   	nop
  40094f:	90                   	nop
  400950:	90                   	nop
  400951:	90                   	nop
  400952:	90                   	nop
  400953:	90                   	nop
  400954:	90                   	nop
  400955:	5d                   	pop    %rbp
  400956:	c3                   	ret

0000000000400957 <visit>:
  400957:	55                   	push   %rbp
  400958:	48 89 e5             	mov    %rsp,%rbp
  40095b:	53                   	push   %rbx
  40095c:	48 83 ec 28          	sub    $0x28,%rsp
  400960:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  400964:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  400968:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40096c:	8b 00                	mov    (%rax),%eax
  40096e:	85 c0                	test   %eax,%eax
  400970:	79 07                	jns    400979 <visit+0x22>
  400972:	b8 00 00 00 00       	mov    $0x0,%eax
  400977:	eb 58                	jmp    4009d1 <visit+0x7a>
  400979:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40097d:	8b 00                	mov    (%rax),%eax
  40097f:	48 98                	cltq
  400981:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400988:	00 
  400989:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40098d:	48 01 d0             	add    %rdx,%rax
  400990:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  400994:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400998:	48 8d 55 e8          	lea    -0x18(%rbp),%rdx
  40099c:	48 89 c6             	mov    %rax,%rsi
  40099f:	bf 18 10 40 00       	mov    $0x401018,%edi
  4009a4:	b8 00 00 00 00       	mov    $0x0,%eax
  4009a9:	e8 12 fe ff ff       	call   4007c0 <printf@plt>
  4009ae:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4009b2:	8b 18                	mov    (%rax),%ebx
  4009b4:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4009b8:	48 8d 50 04          	lea    0x4(%rax),%rdx
  4009bc:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4009c0:	48 83 c0 04          	add    $0x4,%rax
  4009c4:	48 89 d6             	mov    %rdx,%rsi
  4009c7:	48 89 c7             	mov    %rax,%rdi
  4009ca:	e8 88 ff ff ff       	call   400957 <visit>
  4009cf:	01 d8                	add    %ebx,%eax
  4009d1:	48 83 c4 28          	add    $0x28,%rsp
  4009d5:	5b                   	pop    %rbx
  4009d6:	5d                   	pop    %rbp
  4009d7:	c3                   	ret

00000000004009d8 <target>:
  4009d8:	55                   	push   %rbp
  4009d9:	48 89 e5             	mov    %rsp,%rbp
  4009dc:	53                   	push   %rbx
  4009dd:	48 83 ec 58          	sub    $0x58,%rsp
  4009e1:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
  4009e5:	c7 45 b0 08 00 00 00 	movl   $0x8,-0x50(%rbp)
  4009ec:	c7 45 b4 14 00 00 00 	movl   $0x14,-0x4c(%rbp)
  4009f3:	c7 45 b8 0b 00 00 00 	movl   $0xb,-0x48(%rbp)
  4009fa:	c7 45 bc 0c 00 00 00 	movl   $0xc,-0x44(%rbp)
  400a01:	c7 45 c0 28 00 00 00 	movl   $0x28,-0x40(%rbp)
  400a08:	c7 45 c4 2e 00 00 00 	movl   $0x2e,-0x3c(%rbp)
  400a0f:	c7 45 c8 37 00 00 00 	movl   $0x37,-0x38(%rbp)
  400a16:	c7 45 cc 09 00 00 00 	movl   $0x9,-0x34(%rbp)
  400a1d:	c7 45 d0 0f 00 00 00 	movl   $0xf,-0x30(%rbp)
  400a24:	c7 45 d4 12 00 00 00 	movl   $0x12,-0x2c(%rbp)
  400a2b:	c7 45 d8 17 00 00 00 	movl   $0x17,-0x28(%rbp)
  400a32:	c7 45 dc 29 00 00 00 	movl   $0x29,-0x24(%rbp)
  400a39:	c7 45 e0 15 00 00 00 	movl   $0x15,-0x20(%rbp)
  400a40:	c7 45 e4 11 00 00 00 	movl   $0x11,-0x1c(%rbp)
  400a47:	c7 45 e8 20 00 00 00 	movl   $0x20,-0x18(%rbp)
  400a4e:	c7 45 ec 19 00 00 00 	movl   $0x19,-0x14(%rbp)
  400a55:	48 8b 55 a8          	mov    -0x58(%rbp),%rdx
  400a59:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  400a5d:	48 89 d6             	mov    %rdx,%rsi
  400a60:	48 89 c7             	mov    %rax,%rdi
  400a63:	e8 ef fe ff ff       	call   400957 <visit>
  400a68:	89 c3                	mov    %eax,%ebx
  400a6a:	83 fb 64             	cmp    $0x64,%ebx
  400a6d:	75 1e                	jne    400a8d <target+0xb5>
  400a6f:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  400a73:	8b 10                	mov    (%rax),%edx
  400a75:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  400a79:	48 89 c6             	mov    %rax,%rsi
  400a7c:	bf 28 10 40 00       	mov    $0x401028,%edi
  400a81:	b8 00 00 00 00       	mov    $0x0,%eax
  400a86:	e8 35 fd ff ff       	call   4007c0 <printf@plt>
  400a8b:	eb 0a                	jmp    400a97 <target+0xbf>
  400a8d:	bf 7b 10 40 00       	mov    $0x40107b,%edi
  400a92:	e8 c9 fc ff ff       	call   400760 <puts@plt>
  400a97:	89 d8                	mov    %ebx,%eax
  400a99:	48 83 c4 58          	add    $0x58,%rsp
  400a9d:	5b                   	pop    %rbx
  400a9e:	5d                   	pop    %rbp
  400a9f:	c3                   	ret

0000000000400aa0 <do_phase>:
  400aa0:	55                   	push   %rbp
  400aa1:	48 89 e5             	mov    %rsp,%rbp
  400aa4:	48 83 ec 60          	sub    $0x60,%rsp
  400aa8:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
  400aac:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
  400ab0:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  400ab4:	48 89 d6             	mov    %rdx,%rsi
  400ab7:	48 89 c7             	mov    %rax,%rdi
  400aba:	e8 41 00 00 00       	call   400b00 <digit2hex>
  400abf:	b8 00 00 00 00       	mov    $0x0,%eax
  400ac4:	c9                   	leave
  400ac5:	c3                   	ret

0000000000400ac6 <phase>:
  400ac6:	55                   	push   %rbp
  400ac7:	48 89 e5             	mov    %rsp,%rbp
  400aca:	53                   	push   %rbx
  400acb:	48 83 ec 18          	sub    $0x18,%rsp
  400acf:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400ad3:	bb 00 00 00 00       	mov    $0x0,%ebx
  400ad8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400adc:	48 89 c7             	mov    %rax,%rdi
  400adf:	e8 bc ff ff ff       	call   400aa0 <do_phase>
  400ae4:	89 c3                	mov    %eax,%ebx
  400ae6:	89 de                	mov    %ebx,%esi
  400ae8:	bf 98 10 40 00       	mov    $0x401098,%edi
  400aed:	b8 00 00 00 00       	mov    $0x0,%eax
  400af2:	e8 c9 fc ff ff       	call   4007c0 <printf@plt>
  400af7:	89 d8                	mov    %ebx,%eax
  400af9:	48 83 c4 18          	add    $0x18,%rsp
  400afd:	5b                   	pop    %rbx
  400afe:	5d                   	pop    %rbp
  400aff:	c3                   	ret

0000000000400b00 <digit2hex>:
  400b00:	55                   	push   %rbp
  400b01:	48 89 e5             	mov    %rsp,%rbp
  400b04:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400b08:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400b0c:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  400b13:	00 
  400b14:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  400b1b:	e9 a5 00 00 00       	jmp    400bc5 <digit2hex+0xc5>
  400b20:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400b24:	0f b6 00             	movzbl (%rax),%eax
  400b27:	3c 23                	cmp    $0x23,%al
  400b29:	75 12                	jne    400b3d <digit2hex+0x3d>
  400b2b:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  400b2f:	0f 94 c0             	sete   %al
  400b32:	0f b6 c0             	movzbl %al,%eax
  400b35:	89 45 f4             	mov    %eax,-0xc(%rbp)
  400b38:	e9 83 00 00 00       	jmp    400bc0 <digit2hex+0xc0>
  400b3d:	83 7d f4 00          	cmpl   $0x0,-0xc(%rbp)
  400b41:	74 02                	je     400b45 <digit2hex+0x45>
  400b43:	eb 7b                	jmp    400bc0 <digit2hex+0xc0>
  400b45:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400b49:	0f b6 00             	movzbl (%rax),%eax
  400b4c:	0f be c0             	movsbl %al,%eax
  400b4f:	83 e0 7f             	and    $0x7f,%eax
  400b52:	48 98                	cltq
  400b54:	0f b6 80 c0 10 40 00 	movzbl 0x4010c0(%rax),%eax
  400b5b:	3c ff                	cmp    $0xff,%al
  400b5d:	75 02                	jne    400b61 <digit2hex+0x61>
  400b5f:	eb 5f                	jmp    400bc0 <digit2hex+0xc0>
  400b61:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  400b66:	74 50                	je     400bb8 <digit2hex+0xb8>
  400b68:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400b6c:	0f b6 00             	movzbl (%rax),%eax
  400b6f:	0f be c0             	movsbl %al,%eax
  400b72:	83 e0 7f             	and    $0x7f,%eax
  400b75:	48 98                	cltq
  400b77:	0f b6 80 c0 10 40 00 	movzbl 0x4010c0(%rax),%eax
  400b7e:	0f b6 c0             	movzbl %al,%eax
  400b81:	c1 e0 04             	shl    $0x4,%eax
  400b84:	89 c2                	mov    %eax,%edx
  400b86:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400b8a:	0f b6 00             	movzbl (%rax),%eax
  400b8d:	0f be c0             	movsbl %al,%eax
  400b90:	83 e0 7f             	and    $0x7f,%eax
  400b93:	48 98                	cltq
  400b95:	0f b6 80 c0 10 40 00 	movzbl 0x4010c0(%rax),%eax
  400b9c:	83 e0 0f             	and    $0xf,%eax
  400b9f:	09 d0                	or     %edx,%eax
  400ba1:	89 c2                	mov    %eax,%edx
  400ba3:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400ba7:	88 10                	mov    %dl,(%rax)
  400ba9:	48 83 45 e0 01       	addq   $0x1,-0x20(%rbp)
  400bae:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  400bb5:	00 
  400bb6:	eb 08                	jmp    400bc0 <digit2hex+0xc0>
  400bb8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400bbc:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400bc0:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
  400bc5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400bc9:	0f b6 00             	movzbl (%rax),%eax
  400bcc:	84 c0                	test   %al,%al
  400bce:	0f 85 4c ff ff ff    	jne    400b20 <digit2hex+0x20>
  400bd4:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400bd8:	5d                   	pop    %rbp
  400bd9:	c3                   	ret

0000000000400bda <getrid>:
  400bda:	55                   	push   %rbp
  400bdb:	48 89 e5             	mov    %rsp,%rbp
  400bde:	8b 05 54 15 20 00    	mov    0x201554(%rip),%eax        # 602138 <run_id.3623>
  400be4:	85 c0                	test   %eax,%eax
  400be6:	79 17                	jns    400bff <getrid+0x25>
  400be8:	e8 a3 fb ff ff       	call   400790 <getpid@plt>
  400bed:	89 c7                	mov    %eax,%edi
  400bef:	e8 fc fb ff ff       	call   4007f0 <srand@plt>
  400bf4:	e8 47 fc ff ff       	call   400840 <rand@plt>
  400bf9:	89 05 39 15 20 00    	mov    %eax,0x201539(%rip)        # 602138 <run_id.3623>
  400bff:	8b 05 33 15 20 00    	mov    0x201533(%rip),%eax        # 602138 <run_id.3623>
  400c05:	5d                   	pop    %rbp
  400c06:	c3                   	ret

0000000000400c07 <fillregion>:
  400c07:	55                   	push   %rbp
  400c08:	48 89 e5             	mov    %rsp,%rbp
  400c0b:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400c0f:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  400c12:	89 55 e0             	mov    %edx,-0x20(%rbp)
  400c15:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400c1c:	eb 1d                	jmp    400c3b <fillregion+0x34>
  400c1e:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400c21:	48 98                	cltq
  400c23:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400c2a:	00 
  400c2b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400c2f:	48 01 c2             	add    %rax,%rdx
  400c32:	8b 45 e0             	mov    -0x20(%rbp),%eax
  400c35:	89 02                	mov    %eax,(%rdx)
  400c37:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  400c3b:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400c3e:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
  400c41:	7c db                	jl     400c1e <fillregion+0x17>
  400c43:	5d                   	pop    %rbp
  400c44:	c3                   	ret

0000000000400c45 <checkregion>:
  400c45:	55                   	push   %rbp
  400c46:	48 89 e5             	mov    %rsp,%rbp
  400c49:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  400c4d:	89 75 e4             	mov    %esi,-0x1c(%rbp)
  400c50:	89 55 e0             	mov    %edx,-0x20(%rbp)
  400c53:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400c5a:	eb 26                	jmp    400c82 <checkregion+0x3d>
  400c5c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400c5f:	48 98                	cltq
  400c61:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400c68:	00 
  400c69:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  400c6d:	48 01 d0             	add    %rdx,%rax
  400c70:	8b 00                	mov    (%rax),%eax
  400c72:	3b 45 e0             	cmp    -0x20(%rbp),%eax
  400c75:	74 07                	je     400c7e <checkregion+0x39>
  400c77:	b8 00 00 00 00       	mov    $0x0,%eax
  400c7c:	eb 11                	jmp    400c8f <checkregion+0x4a>
  400c7e:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  400c82:	8b 45 fc             	mov    -0x4(%rbp),%eax
  400c85:	3b 45 e4             	cmp    -0x1c(%rbp),%eax
  400c88:	7c d2                	jl     400c5c <checkregion+0x17>
  400c8a:	b8 01 00 00 00       	mov    $0x1,%eax
  400c8f:	5d                   	pop    %rbp
  400c90:	c3                   	ret

0000000000400c91 <exec_phase>:
  400c91:	55                   	push   %rbp
  400c92:	48 89 e5             	mov    %rsp,%rbp
  400c95:	53                   	push   %rbx
  400c96:	48 83 ec 58          	sub    $0x58,%rsp
  400c9a:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
  400c9e:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  400ca2:	25 f0 3f 00 00       	and    $0x3ff0,%eax
  400ca7:	48 89 05 d2 34 20 00 	mov    %rax,0x2034d2(%rip)        # 604180 <alloca_size.3650>
  400cae:	48 8b 05 cb 34 20 00 	mov    0x2034cb(%rip),%rax        # 604180 <alloca_size.3650>
  400cb5:	48 8d 50 0f          	lea    0xf(%rax),%rdx
  400cb9:	b8 10 00 00 00       	mov    $0x10,%eax
  400cbe:	48 83 e8 01          	sub    $0x1,%rax
  400cc2:	48 01 d0             	add    %rdx,%rax
  400cc5:	bb 10 00 00 00       	mov    $0x10,%ebx
  400cca:	ba 00 00 00 00       	mov    $0x0,%edx
  400ccf:	48 f7 f3             	div    %rbx
  400cd2:	48 6b c0 10          	imul   $0x10,%rax,%rax
  400cd6:	48 29 c4             	sub    %rax,%rsp
  400cd9:	48 89 e0             	mov    %rsp,%rax
  400cdc:	48 83 c0 0f          	add    $0xf,%rax
  400ce0:	48 c1 e8 04          	shr    $0x4,%rax
  400ce4:	48 c1 e0 04          	shl    $0x4,%rax
  400ce8:	48 89 05 99 34 20 00 	mov    %rax,0x203499(%rip)        # 604188 <alloca_region.3649>
  400cef:	b8 00 00 00 00       	mov    $0x0,%eax
  400cf4:	e8 e1 fe ff ff       	call   400bda <getrid>
  400cf9:	89 c2                	mov    %eax,%edx
  400cfb:	48 8b 05 7e 34 20 00 	mov    0x20347e(%rip),%rax        # 604180 <alloca_size.3650>
  400d02:	48 c1 e8 02          	shr    $0x2,%rax
  400d06:	89 c1                	mov    %eax,%ecx
  400d08:	48 8b 05 79 34 20 00 	mov    0x203479(%rip),%rax        # 604188 <alloca_region.3649>
  400d0f:	89 ce                	mov    %ecx,%esi
  400d11:	48 89 c7             	mov    %rax,%rdi
  400d14:	e8 ee fe ff ff       	call   400c07 <fillregion>
  400d19:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  400d1d:	48 89 c7             	mov    %rax,%rdi
  400d20:	e8 a1 fd ff ff       	call   400ac6 <phase>
  400d25:	b8 00 00 00 00       	mov    $0x0,%eax
  400d2a:	e8 ab fe ff ff       	call   400bda <getrid>
  400d2f:	89 c2                	mov    %eax,%edx
  400d31:	48 8b 05 48 34 20 00 	mov    0x203448(%rip),%rax        # 604180 <alloca_size.3650>
  400d38:	48 c1 e8 02          	shr    $0x2,%rax
  400d3c:	89 c1                	mov    %eax,%ecx
  400d3e:	48 8b 05 43 34 20 00 	mov    0x203443(%rip),%rax        # 604188 <alloca_region.3649>
  400d45:	89 ce                	mov    %ecx,%esi
  400d47:	48 89 c7             	mov    %rax,%rdi
  400d4a:	e8 f6 fe ff ff       	call   400c45 <checkregion>
  400d4f:	85 c0                	test   %eax,%eax
  400d51:	75 0a                	jne    400d5d <exec_phase+0xcc>
  400d53:	bf 40 11 40 00       	mov    $0x401140,%edi
  400d58:	e8 03 fa ff ff       	call   400760 <puts@plt>
  400d5d:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  400d61:	c9                   	leave
  400d62:	c3                   	ret

0000000000400d63 <main>:
  400d63:	55                   	push   %rbp
  400d64:	48 89 e5             	mov    %rsp,%rbp
  400d67:	48 83 ec 20          	sub    $0x20,%rsp
  400d6b:	89 7d ec             	mov    %edi,-0x14(%rbp)
  400d6e:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400d72:	b8 00 00 00 00       	mov    $0x0,%eax
  400d77:	e8 5e fe ff ff       	call   400bda <getrid>
  400d7c:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
  400d83:	00 
  400d84:	83 7d ec 01          	cmpl   $0x1,-0x14(%rbp)
  400d88:	75 0d                	jne    400d97 <main+0x34>
  400d8a:	48 8b 05 af 13 20 00 	mov    0x2013af(%rip),%rax        # 602140 <stdin@GLIBC_2.2.5>
  400d91:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400d95:	eb 73                	jmp    400e0a <main+0xa7>
  400d97:	83 7d ec 02          	cmpl   $0x2,-0x14(%rbp)
  400d9b:	75 4a                	jne    400de7 <main+0x84>
  400d9d:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400da1:	48 83 c0 08          	add    $0x8,%rax
  400da5:	48 8b 00             	mov    (%rax),%rax
  400da8:	be 62 11 40 00       	mov    $0x401162,%esi
  400dad:	48 89 c7             	mov    %rax,%rdi
  400db0:	e8 6b fa ff ff       	call   400820 <fopen@plt>
  400db5:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400db9:	48 83 7d f8 00       	cmpq   $0x0,-0x8(%rbp)
  400dbe:	75 4a                	jne    400e0a <main+0xa7>
  400dc0:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400dc4:	48 83 c0 08          	add    $0x8,%rax
  400dc8:	48 8b 00             	mov    (%rax),%rax
  400dcb:	48 89 c6             	mov    %rax,%rsi
  400dce:	bf 68 11 40 00       	mov    $0x401168,%edi
  400dd3:	b8 00 00 00 00       	mov    $0x0,%eax
  400dd8:	e8 e3 f9 ff ff       	call   4007c0 <printf@plt>
  400ddd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  400de2:	e9 87 01 00 00       	jmp    400f6e <main+0x20b>
  400de7:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400deb:	48 8b 00             	mov    (%rax),%rax
  400dee:	48 89 c6             	mov    %rax,%rsi
  400df1:	bf 8c 11 40 00       	mov    $0x40118c,%edi
  400df6:	b8 00 00 00 00       	mov    $0x0,%eax
  400dfb:	e8 c0 f9 ff ff       	call   4007c0 <printf@plt>
  400e00:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  400e05:	e9 64 01 00 00       	jmp    400f6e <main+0x20b>
  400e0a:	bf a8 11 40 00       	mov    $0x4011a8,%edi
  400e0f:	e8 4c f9 ff ff       	call   400760 <puts@plt>
  400e14:	bf d8 11 40 00       	mov    $0x4011d8,%edi
  400e19:	e8 42 f9 ff ff       	call   400760 <puts@plt>
  400e1e:	ba 00 20 00 00       	mov    $0x2000,%edx
  400e23:	be 00 00 00 00       	mov    $0x0,%esi
  400e28:	bf 80 21 60 00       	mov    $0x602180,%edi
  400e2d:	e8 9e f9 ff ff       	call   4007d0 <memset@plt>
  400e32:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400e36:	48 89 c1             	mov    %rax,%rcx
  400e39:	ba ff 1f 00 00       	mov    $0x1fff,%edx
  400e3e:	be 01 00 00 00       	mov    $0x1,%esi
  400e43:	bf 80 21 60 00       	mov    $0x602180,%edi
  400e48:	e8 33 f9 ff ff       	call   400780 <fread@plt>
  400e4d:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  400e51:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400e55:	48 89 c7             	mov    %rax,%rdi
  400e58:	e8 13 f9 ff ff       	call   400770 <ferror@plt>
  400e5d:	85 c0                	test   %eax,%eax
  400e5f:	74 0f                	je     400e70 <main+0x10d>
  400e61:	bf 00 12 40 00       	mov    $0x401200,%edi
  400e66:	e8 f5 f8 ff ff       	call   400760 <puts@plt>
  400e6b:	e9 e0 00 00 00       	jmp    400f50 <main+0x1ed>
  400e70:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  400e74:	48 05 80 21 60 00    	add    $0x602180,%rax
  400e7a:	c6 00 00             	movb   $0x0,(%rax)
  400e7d:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  400e83:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  400e89:	b9 32 01 00 00       	mov    $0x132,%ecx
  400e8e:	ba 07 00 00 00       	mov    $0x7,%edx
  400e93:	be 00 40 00 00       	mov    $0x4000,%esi
  400e98:	bf 00 00 00 04       	mov    $0x4000000,%edi
  400e9d:	e8 0e f9 ff ff       	call   4007b0 <mmap@plt>
  400ea2:	48 89 05 b7 12 20 00 	mov    %rax,0x2012b7(%rip)        # 602160 <buffer_stack_area>
  400ea9:	48 8b 05 b0 12 20 00 	mov    0x2012b0(%rip),%rax        # 602160 <buffer_stack_area>
  400eb0:	48 3d 00 00 00 04    	cmp    $0x4000000,%rax
  400eb6:	74 28                	je     400ee0 <main+0x17d>
  400eb8:	48 8b 05 89 12 20 00 	mov    0x201289(%rip),%rax        # 602148 <stderr@GLIBC_2.2.5>
  400ebf:	48 89 c1             	mov    %rax,%rcx
  400ec2:	ba 53 00 00 00       	mov    $0x53,%edx
  400ec7:	be 01 00 00 00       	mov    $0x1,%esi
  400ecc:	bf 28 12 40 00       	mov    $0x401228,%edi
  400ed1:	e8 5a f9 ff ff       	call   400830 <fwrite@plt>
  400ed6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  400edb:	e9 8e 00 00 00       	jmp    400f6e <main+0x20b>
  400ee0:	48 8b 05 79 12 20 00 	mov    0x201279(%rip),%rax        # 602160 <buffer_stack_area>
  400ee7:	48 05 f8 3f 00 00    	add    $0x3ff8,%rax
  400eed:	48 89 05 74 12 20 00 	mov    %rax,0x201274(%rip)        # 602168 <buffer_stack_top>
  400ef4:	48 8b 15 6d 12 20 00 	mov    0x20126d(%rip),%rdx        # 602168 <buffer_stack_top>
  400efb:	48 89 e0             	mov    %rsp,%rax
  400efe:	48 89 d4             	mov    %rdx,%rsp
  400f01:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400f05:	48 89 c2             	mov    %rax,%rdx
  400f08:	48 89 15 61 12 20 00 	mov    %rdx,0x201261(%rip)        # 602170 <main_stack_top>
  400f0f:	bf 80 21 60 00       	mov    $0x602180,%edi
  400f14:	e8 78 fd ff ff       	call   400c91 <exec_phase>
  400f19:	48 8b 05 50 12 20 00 	mov    0x201250(%rip),%rax        # 602170 <main_stack_top>
  400f20:	48 89 c4             	mov    %rax,%rsp
  400f23:	48 8b 05 36 12 20 00 	mov    0x201236(%rip),%rax        # 602160 <buffer_stack_area>
  400f2a:	be 00 40 00 00       	mov    $0x4000,%esi
  400f2f:	48 89 c7             	mov    %rax,%rdi
  400f32:	e8 d9 f8 ff ff       	call   400810 <munmap@plt>
  400f37:	48 c7 05 26 12 20 00 	movq   $0x0,0x201226(%rip)        # 602168 <buffer_stack_top>
  400f3e:	00 00 00 00 
  400f42:	48 8b 05 1f 12 20 00 	mov    0x20121f(%rip),%rax        # 602168 <buffer_stack_top>
  400f49:	48 89 05 10 12 20 00 	mov    %rax,0x201210(%rip)        # 602160 <buffer_stack_area>
  400f50:	48 8b 05 e9 11 20 00 	mov    0x2011e9(%rip),%rax        # 602140 <stdin@GLIBC_2.2.5>
  400f57:	48 39 45 f8          	cmp    %rax,-0x8(%rbp)
  400f5b:	74 0c                	je     400f69 <main+0x206>
  400f5d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400f61:	48 89 c7             	mov    %rax,%rdi
  400f64:	e8 37 f8 ff ff       	call   4007a0 <fclose@plt>
  400f69:	b8 00 00 00 00       	mov    $0x0,%eax
  400f6e:	c9                   	leave
  400f6f:	c3                   	ret

0000000000400f70 <__libc_csu_init>:
  400f70:	41 57                	push   %r15
  400f72:	41 89 ff             	mov    %edi,%r15d
  400f75:	41 56                	push   %r14
  400f77:	49 89 f6             	mov    %rsi,%r14
  400f7a:	41 55                	push   %r13
  400f7c:	49 89 d5             	mov    %rdx,%r13
  400f7f:	41 54                	push   %r12
  400f81:	4c 8d 25 88 0e 20 00 	lea    0x200e88(%rip),%r12        # 601e10 <__frame_dummy_init_array_entry>
  400f88:	55                   	push   %rbp
  400f89:	48 8d 2d 88 0e 20 00 	lea    0x200e88(%rip),%rbp        # 601e18 <__do_global_dtors_aux_fini_array_entry>
  400f90:	53                   	push   %rbx
  400f91:	4c 29 e5             	sub    %r12,%rbp
  400f94:	31 db                	xor    %ebx,%ebx
  400f96:	48 c1 fd 03          	sar    $0x3,%rbp
  400f9a:	48 83 ec 08          	sub    $0x8,%rsp
  400f9e:	e8 8d f7 ff ff       	call   400730 <_init>
  400fa3:	48 85 ed             	test   %rbp,%rbp
  400fa6:	74 1e                	je     400fc6 <__libc_csu_init+0x56>
  400fa8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400faf:	00 
  400fb0:	4c 89 ea             	mov    %r13,%rdx
  400fb3:	4c 89 f6             	mov    %r14,%rsi
  400fb6:	44 89 ff             	mov    %r15d,%edi
  400fb9:	41 ff 14 dc          	call   *(%r12,%rbx,8)
  400fbd:	48 83 c3 01          	add    $0x1,%rbx
  400fc1:	48 39 eb             	cmp    %rbp,%rbx
  400fc4:	75 ea                	jne    400fb0 <__libc_csu_init+0x40>
  400fc6:	48 83 c4 08          	add    $0x8,%rsp
  400fca:	5b                   	pop    %rbx
  400fcb:	5d                   	pop    %rbp
  400fcc:	41 5c                	pop    %r12
  400fce:	41 5d                	pop    %r13
  400fd0:	41 5e                	pop    %r14
  400fd2:	41 5f                	pop    %r15
  400fd4:	c3                   	ret
  400fd5:	90                   	nop
  400fd6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  400fdd:	00 00 00 

0000000000400fe0 <__libc_csu_fini>:
  400fe0:	f3 c3                	repz ret

Disassembly of section .fini:

0000000000400fe4 <_fini>:
  400fe4:	48 83 ec 08          	sub    $0x8,%rsp
  400fe8:	48 83 c4 08          	add    $0x8,%rsp
  400fec:	c3                   	ret
