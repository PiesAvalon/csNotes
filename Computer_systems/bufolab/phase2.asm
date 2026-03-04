
phase2:     file format elf64-x86-64


Disassembly of section .init:

0000000000400768 <_init>:
  400768:	48 83 ec 08          	sub    $0x8,%rsp
  40076c:	48 8b 05 85 18 20 00 	mov    0x201885(%rip),%rax        # 601ff8 <__gmon_start__>
  400773:	48 85 c0             	test   %rax,%rax
  400776:	74 05                	je     40077d <_init+0x15>
  400778:	e8 d3 00 00 00       	call   400850 <__gmon_start__@plt>
  40077d:	48 83 c4 08          	add    $0x8,%rsp
  400781:	c3                   	ret

Disassembly of section .plt:

0000000000400790 <.plt>:
  400790:	ff 35 72 18 20 00    	push   0x201872(%rip)        # 602008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400796:	ff 25 74 18 20 00    	jmp    *0x201874(%rip)        # 602010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40079c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004007a0 <abort@plt>:
  4007a0:	ff 25 72 18 20 00    	jmp    *0x201872(%rip)        # 602018 <abort@GLIBC_2.2.5>
  4007a6:	68 00 00 00 00       	push   $0x0
  4007ab:	e9 e0 ff ff ff       	jmp    400790 <.plt>

00000000004007b0 <puts@plt>:
  4007b0:	ff 25 6a 18 20 00    	jmp    *0x20186a(%rip)        # 602020 <puts@GLIBC_2.2.5>
  4007b6:	68 01 00 00 00       	push   $0x1
  4007bb:	e9 d0 ff ff ff       	jmp    400790 <.plt>

00000000004007c0 <ferror@plt>:
  4007c0:	ff 25 62 18 20 00    	jmp    *0x201862(%rip)        # 602028 <ferror@GLIBC_2.2.5>
  4007c6:	68 02 00 00 00       	push   $0x2
  4007cb:	e9 c0 ff ff ff       	jmp    400790 <.plt>

00000000004007d0 <fread@plt>:
  4007d0:	ff 25 5a 18 20 00    	jmp    *0x20185a(%rip)        # 602030 <fread@GLIBC_2.2.5>
  4007d6:	68 03 00 00 00       	push   $0x3
  4007db:	e9 b0 ff ff ff       	jmp    400790 <.plt>

00000000004007e0 <getpid@plt>:
  4007e0:	ff 25 52 18 20 00    	jmp    *0x201852(%rip)        # 602038 <getpid@GLIBC_2.2.5>
  4007e6:	68 04 00 00 00       	push   $0x4
  4007eb:	e9 a0 ff ff ff       	jmp    400790 <.plt>

00000000004007f0 <fclose@plt>:
  4007f0:	ff 25 4a 18 20 00    	jmp    *0x20184a(%rip)        # 602040 <fclose@GLIBC_2.2.5>
  4007f6:	68 05 00 00 00       	push   $0x5
  4007fb:	e9 90 ff ff ff       	jmp    400790 <.plt>

0000000000400800 <mmap@plt>:
  400800:	ff 25 42 18 20 00    	jmp    *0x201842(%rip)        # 602048 <mmap@GLIBC_2.2.5>
  400806:	68 06 00 00 00       	push   $0x6
  40080b:	e9 80 ff ff ff       	jmp    400790 <.plt>

0000000000400810 <printf@plt>:
  400810:	ff 25 3a 18 20 00    	jmp    *0x20183a(%rip)        # 602050 <printf@GLIBC_2.2.5>
  400816:	68 07 00 00 00       	push   $0x7
  40081b:	e9 70 ff ff ff       	jmp    400790 <.plt>

0000000000400820 <memset@plt>:
  400820:	ff 25 32 18 20 00    	jmp    *0x201832(%rip)        # 602058 <memset@GLIBC_2.2.5>
  400826:	68 08 00 00 00       	push   $0x8
  40082b:	e9 60 ff ff ff       	jmp    400790 <.plt>

0000000000400830 <__libc_start_main@plt>:
  400830:	ff 25 2a 18 20 00    	jmp    *0x20182a(%rip)        # 602060 <__libc_start_main@GLIBC_2.2.5>
  400836:	68 09 00 00 00       	push   $0x9
  40083b:	e9 50 ff ff ff       	jmp    400790 <.plt>

0000000000400840 <srand@plt>:
  400840:	ff 25 22 18 20 00    	jmp    *0x201822(%rip)        # 602068 <srand@GLIBC_2.2.5>
  400846:	68 0a 00 00 00       	push   $0xa
  40084b:	e9 40 ff ff ff       	jmp    400790 <.plt>

0000000000400850 <__gmon_start__@plt>:
  400850:	ff 25 1a 18 20 00    	jmp    *0x20181a(%rip)        # 602070 <__gmon_start__>
  400856:	68 0b 00 00 00       	push   $0xb
  40085b:	e9 30 ff ff ff       	jmp    400790 <.plt>

0000000000400860 <munmap@plt>:
  400860:	ff 25 12 18 20 00    	jmp    *0x201812(%rip)        # 602078 <munmap@GLIBC_2.2.5>
  400866:	68 0c 00 00 00       	push   $0xc
  40086b:	e9 20 ff ff ff       	jmp    400790 <.plt>

0000000000400870 <fopen@plt>:
  400870:	ff 25 0a 18 20 00    	jmp    *0x20180a(%rip)        # 602080 <fopen@GLIBC_2.2.5>
  400876:	68 0d 00 00 00       	push   $0xd
  40087b:	e9 10 ff ff ff       	jmp    400790 <.plt>

0000000000400880 <fwrite@plt>:
  400880:	ff 25 02 18 20 00    	jmp    *0x201802(%rip)        # 602088 <fwrite@GLIBC_2.2.5>
  400886:	68 0e 00 00 00       	push   $0xe
  40088b:	e9 00 ff ff ff       	jmp    400790 <.plt>

0000000000400890 <rand@plt>:
  400890:	ff 25 fa 17 20 00    	jmp    *0x2017fa(%rip)        # 602090 <rand@GLIBC_2.2.5>
  400896:	68 0f 00 00 00       	push   $0xf
  40089b:	e9 f0 fe ff ff       	jmp    400790 <.plt>

Disassembly of section .text:

00000000004008a0 <_start>:
  4008a0:	31 ed                	xor    %ebp,%ebp
  4008a2:	49 89 d1             	mov    %rdx,%r9
  4008a5:	5e                   	pop    %rsi
  4008a6:	48 89 e2             	mov    %rsp,%rdx
  4008a9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4008ad:	50                   	push   %rax
  4008ae:	54                   	push   %rsp
  4008af:	49 c7 c0 b0 0f 40 00 	mov    $0x400fb0,%r8
  4008b6:	48 c7 c1 40 0f 40 00 	mov    $0x400f40,%rcx
  4008bd:	48 c7 c7 1a 0d 40 00 	mov    $0x400d1a,%rdi
  4008c4:	e8 67 ff ff ff       	call   400830 <__libc_start_main@plt>
  4008c9:	f4                   	hlt
  4008ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004008d0 <deregister_tm_clones>:
  4008d0:	b8 77 21 60 00       	mov    $0x602177,%eax
  4008d5:	55                   	push   %rbp
  4008d6:	48 2d 70 21 60 00    	sub    $0x602170,%rax
  4008dc:	48 83 f8 0e          	cmp    $0xe,%rax
  4008e0:	48 89 e5             	mov    %rsp,%rbp
  4008e3:	77 02                	ja     4008e7 <deregister_tm_clones+0x17>
  4008e5:	5d                   	pop    %rbp
  4008e6:	c3                   	ret
  4008e7:	b8 00 00 00 00       	mov    $0x0,%eax
  4008ec:	48 85 c0             	test   %rax,%rax
  4008ef:	74 f4                	je     4008e5 <deregister_tm_clones+0x15>
  4008f1:	5d                   	pop    %rbp
  4008f2:	bf 70 21 60 00       	mov    $0x602170,%edi
  4008f7:	ff e0                	jmp    *%rax
  4008f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400900 <register_tm_clones>:
  400900:	b8 70 21 60 00       	mov    $0x602170,%eax
  400905:	55                   	push   %rbp
  400906:	48 2d 70 21 60 00    	sub    $0x602170,%rax
  40090c:	48 c1 f8 03          	sar    $0x3,%rax
  400910:	48 89 e5             	mov    %rsp,%rbp
  400913:	48 89 c2             	mov    %rax,%rdx
  400916:	48 c1 ea 3f          	shr    $0x3f,%rdx
  40091a:	48 01 d0             	add    %rdx,%rax
  40091d:	48 d1 f8             	sar    $1,%rax
  400920:	75 02                	jne    400924 <register_tm_clones+0x24>
  400922:	5d                   	pop    %rbp
  400923:	c3                   	ret
  400924:	ba 00 00 00 00       	mov    $0x0,%edx
  400929:	48 85 d2             	test   %rdx,%rdx
  40092c:	74 f4                	je     400922 <register_tm_clones+0x22>
  40092e:	5d                   	pop    %rbp
  40092f:	48 89 c6             	mov    %rax,%rsi
  400932:	bf 70 21 60 00       	mov    $0x602170,%edi
  400937:	ff e2                	jmp    *%rdx
  400939:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400940 <__do_global_dtors_aux>:
  400940:	80 3d 49 18 20 00 00 	cmpb   $0x0,0x201849(%rip)        # 602190 <completed.6355>
  400947:	75 11                	jne    40095a <__do_global_dtors_aux+0x1a>
  400949:	55                   	push   %rbp
  40094a:	48 89 e5             	mov    %rsp,%rbp
  40094d:	e8 7e ff ff ff       	call   4008d0 <deregister_tm_clones>
  400952:	5d                   	pop    %rbp
  400953:	c6 05 36 18 20 00 01 	movb   $0x1,0x201836(%rip)        # 602190 <completed.6355>
  40095a:	f3 c3                	repz ret
  40095c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400960 <frame_dummy>:
  400960:	48 83 3d b8 14 20 00 	cmpq   $0x0,0x2014b8(%rip)        # 601e20 <__JCR_END__>
  400967:	00 
  400968:	74 1e                	je     400988 <frame_dummy+0x28>
  40096a:	b8 00 00 00 00       	mov    $0x0,%eax
  40096f:	48 85 c0             	test   %rax,%rax
  400972:	74 14                	je     400988 <frame_dummy+0x28>
  400974:	55                   	push   %rbp
  400975:	bf 20 1e 60 00       	mov    $0x601e20,%edi
  40097a:	48 89 e5             	mov    %rsp,%rbp
  40097d:	ff d0                	call   *%rax
  40097f:	5d                   	pop    %rbp
  400980:	e9 7b ff ff ff       	jmp    400900 <register_tm_clones>
  400985:	0f 1f 00             	nopl   (%rax)
  400988:	e9 73 ff ff ff       	jmp    400900 <register_tm_clones>

000000000040098d <_r_func_>:
  40098d:	90                   	nop
  40098e:	90                   	nop
  40098f:	90                   	nop
  400990:	90                   	nop
  400991:	90                   	nop
  400992:	90                   	nop
  400993:	90                   	nop
  400994:	90                   	nop
  400995:	90                   	nop
  400996:	90                   	nop
  400997:	90                   	nop
  400998:	90                   	nop
  400999:	c3                   	ret

000000000040099a <do_phase>:
  40099a:	48 83 ec 48          	sub    $0x48,%rsp
  40099e:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
  4009a3:	48 8d 44 24 10       	lea    0x10(%rsp),%rax
  4009a8:	48 83 c0 1e          	add    $0x1e,%rax
  4009ac:	8b 15 b2 17 20 00    	mov    0x2017b2(%rip),%edx        # 602164 <secret_number>
  4009b2:	89 10                	mov    %edx,(%rax)
  4009b4:	48 8d 54 24 10       	lea    0x10(%rsp),%rdx
  4009b9:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4009be:	48 89 d6             	mov    %rdx,%rsi
  4009c1:	48 89 c7             	mov    %rax,%rdi
  4009c4:	e8 cf 00 00 00       	call   400a98 <digit2hex>
  4009c9:	48 8d 44 24 10       	lea    0x10(%rsp),%rax
  4009ce:	48 83 c0 1e          	add    $0x1e,%rax
  4009d2:	8b 10                	mov    (%rax),%edx
  4009d4:	8b 05 8a 17 20 00    	mov    0x20178a(%rip),%eax        # 602164 <secret_number>
  4009da:	39 c2                	cmp    %eax,%edx
  4009dc:	74 0f                	je     4009ed <do_phase+0x53>
  4009de:	c7 05 ac 17 20 00 01 	movl   $0x1,0x2017ac(%rip)        # 602194 <buffer_overflowed>
  4009e5:	00 00 00 
  4009e8:	e8 b3 fd ff ff       	call   4007a0 <abort@plt>
  4009ed:	b8 00 00 00 00       	mov    $0x0,%eax
  4009f2:	48 83 c4 48          	add    $0x48,%rsp
  4009f6:	c3                   	ret

00000000004009f7 <message>:
  4009f7:	48 83 ec 38          	sub    $0x38,%rsp
  4009fb:	89 7c 24 0c          	mov    %edi,0xc(%rsp)
  4009ff:	48 b8 54 61 73 6b 20 	movabs $0x637573206b736154,%rax
  400a06:	73 75 63 
  400a09:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
  400a0e:	48 b8 63 65 65 64 65 	movabs $0x2e646564656563,%rax
  400a15:	64 2e 00 
  400a18:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  400a1d:	48 b8 54 61 73 6b 20 	movabs $0x696166206b736154,%rax
  400a24:	66 61 69 
  400a27:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  400a2c:	c7 44 24 18 6c 65 64 	movl   $0x2e64656c,0x18(%rsp)
  400a33:	2e 
  400a34:	c6 44 24 1c 00       	movb   $0x0,0x1c(%rsp)
  400a39:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
  400a3e:	74 19                	je     400a59 <message+0x62>
  400a40:	8b 05 4e 17 20 00    	mov    0x20174e(%rip),%eax        # 602194 <buffer_overflowed>
  400a46:	85 c0                	test   %eax,%eax
  400a48:	74 0f                	je     400a59 <message+0x62>
  400a4a:	48 8d 44 24 20       	lea    0x20(%rsp),%rax
  400a4f:	48 89 c7             	mov    %rax,%rdi
  400a52:	e8 59 fd ff ff       	call   4007b0 <puts@plt>
  400a57:	eb 0d                	jmp    400a66 <message+0x6f>
  400a59:	48 8d 44 24 10       	lea    0x10(%rsp),%rax
  400a5e:	48 89 c7             	mov    %rax,%rdi
  400a61:	e8 4a fd ff ff       	call   4007b0 <puts@plt>
  400a66:	48 83 c4 38          	add    $0x38,%rsp
  400a6a:	c3                   	ret

0000000000400a6b <phase>:
  400a6b:	53                   	push   %rbx
  400a6c:	48 83 ec 10          	sub    $0x10,%rsp
  400a70:	48 89 7c 24 08       	mov    %rdi,0x8(%rsp)
  400a75:	bb 00 00 00 00       	mov    $0x0,%ebx
  400a7a:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  400a7f:	48 89 c7             	mov    %rax,%rdi
  400a82:	e8 13 ff ff ff       	call   40099a <do_phase>
  400a87:	89 c3                	mov    %eax,%ebx
  400a89:	89 df                	mov    %ebx,%edi
  400a8b:	e8 67 ff ff ff       	call   4009f7 <message>
  400a90:	89 d8                	mov    %ebx,%eax
  400a92:	48 83 c4 10          	add    $0x10,%rsp
  400a96:	5b                   	pop    %rbx
  400a97:	c3                   	ret

0000000000400a98 <digit2hex>:
  400a98:	48 89 7c 24 e8       	mov    %rdi,-0x18(%rsp)
  400a9d:	48 89 74 24 e0       	mov    %rsi,-0x20(%rsp)
  400aa2:	48 c7 44 24 f8 00 00 	movq   $0x0,-0x8(%rsp)
  400aa9:	00 00 
  400aab:	c7 44 24 f4 00 00 00 	movl   $0x0,-0xc(%rsp)
  400ab2:	00 
  400ab3:	e9 b6 00 00 00       	jmp    400b6e <digit2hex+0xd6>
  400ab8:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
  400abd:	0f b6 00             	movzbl (%rax),%eax
  400ac0:	3c 23                	cmp    $0x23,%al
  400ac2:	75 14                	jne    400ad8 <digit2hex+0x40>
  400ac4:	83 7c 24 f4 00       	cmpl   $0x0,-0xc(%rsp)
  400ac9:	0f 94 c0             	sete   %al
  400acc:	0f b6 c0             	movzbl %al,%eax
  400acf:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  400ad3:	e9 90 00 00 00       	jmp    400b68 <digit2hex+0xd0>
  400ad8:	83 7c 24 f4 00       	cmpl   $0x0,-0xc(%rsp)
  400add:	74 05                	je     400ae4 <digit2hex+0x4c>
  400adf:	e9 84 00 00 00       	jmp    400b68 <digit2hex+0xd0>
  400ae4:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
  400ae9:	0f b6 00             	movzbl (%rax),%eax
  400aec:	0f be c0             	movsbl %al,%eax
  400aef:	83 e0 7f             	and    $0x7f,%eax
  400af2:	48 98                	cltq
  400af4:	0f b6 80 e0 0f 40 00 	movzbl 0x400fe0(%rax),%eax
  400afb:	3c ff                	cmp    $0xff,%al
  400afd:	75 02                	jne    400b01 <digit2hex+0x69>
  400aff:	eb 67                	jmp    400b68 <digit2hex+0xd0>
  400b01:	48 83 7c 24 f8 00    	cmpq   $0x0,-0x8(%rsp)
  400b07:	74 55                	je     400b5e <digit2hex+0xc6>
  400b09:	48 8b 44 24 f8       	mov    -0x8(%rsp),%rax
  400b0e:	0f b6 00             	movzbl (%rax),%eax
  400b11:	0f be c0             	movsbl %al,%eax
  400b14:	83 e0 7f             	and    $0x7f,%eax
  400b17:	48 98                	cltq
  400b19:	0f b6 80 e0 0f 40 00 	movzbl 0x400fe0(%rax),%eax
  400b20:	0f b6 c0             	movzbl %al,%eax
  400b23:	c1 e0 04             	shl    $0x4,%eax
  400b26:	89 c2                	mov    %eax,%edx
  400b28:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
  400b2d:	0f b6 00             	movzbl (%rax),%eax
  400b30:	0f be c0             	movsbl %al,%eax
  400b33:	83 e0 7f             	and    $0x7f,%eax
  400b36:	48 98                	cltq
  400b38:	0f b6 80 e0 0f 40 00 	movzbl 0x400fe0(%rax),%eax
  400b3f:	83 e0 0f             	and    $0xf,%eax
  400b42:	09 d0                	or     %edx,%eax
  400b44:	89 c2                	mov    %eax,%edx
  400b46:	48 8b 44 24 e0       	mov    -0x20(%rsp),%rax
  400b4b:	88 10                	mov    %dl,(%rax)
  400b4d:	48 83 44 24 e0 01    	addq   $0x1,-0x20(%rsp)
  400b53:	48 c7 44 24 f8 00 00 	movq   $0x0,-0x8(%rsp)
  400b5a:	00 00 
  400b5c:	eb 0a                	jmp    400b68 <digit2hex+0xd0>
  400b5e:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
  400b63:	48 89 44 24 f8       	mov    %rax,-0x8(%rsp)
  400b68:	48 83 44 24 e8 01    	addq   $0x1,-0x18(%rsp)
  400b6e:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
  400b73:	0f b6 00             	movzbl (%rax),%eax
  400b76:	84 c0                	test   %al,%al
  400b78:	0f 85 3a ff ff ff    	jne    400ab8 <digit2hex+0x20>
  400b7e:	48 8b 44 24 e0       	mov    -0x20(%rsp),%rax
  400b83:	c3                   	ret

0000000000400b84 <getrid>:
  400b84:	48 83 ec 08          	sub    $0x8,%rsp
  400b88:	8b 05 da 15 20 00    	mov    0x2015da(%rip),%eax        # 602168 <run_id.3623>
  400b8e:	85 c0                	test   %eax,%eax
  400b90:	79 17                	jns    400ba9 <getrid+0x25>
  400b92:	e8 49 fc ff ff       	call   4007e0 <getpid@plt>
  400b97:	89 c7                	mov    %eax,%edi
  400b99:	e8 a2 fc ff ff       	call   400840 <srand@plt>
  400b9e:	e8 ed fc ff ff       	call   400890 <rand@plt>
  400ba3:	89 05 bf 15 20 00    	mov    %eax,0x2015bf(%rip)        # 602168 <run_id.3623>
  400ba9:	8b 05 b9 15 20 00    	mov    0x2015b9(%rip),%eax        # 602168 <run_id.3623>
  400baf:	48 83 c4 08          	add    $0x8,%rsp
  400bb3:	c3                   	ret

0000000000400bb4 <fillregion>:
  400bb4:	48 89 7c 24 e8       	mov    %rdi,-0x18(%rsp)
  400bb9:	89 74 24 e4          	mov    %esi,-0x1c(%rsp)
  400bbd:	89 54 24 e0          	mov    %edx,-0x20(%rsp)
  400bc1:	c7 44 24 fc 00 00 00 	movl   $0x0,-0x4(%rsp)
  400bc8:	00 
  400bc9:	eb 21                	jmp    400bec <fillregion+0x38>
  400bcb:	8b 44 24 fc          	mov    -0x4(%rsp),%eax
  400bcf:	48 98                	cltq
  400bd1:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400bd8:	00 
  400bd9:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
  400bde:	48 01 c2             	add    %rax,%rdx
  400be1:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  400be5:	89 02                	mov    %eax,(%rdx)
  400be7:	83 44 24 fc 01       	addl   $0x1,-0x4(%rsp)
  400bec:	8b 44 24 fc          	mov    -0x4(%rsp),%eax
  400bf0:	3b 44 24 e4          	cmp    -0x1c(%rsp),%eax
  400bf4:	7c d5                	jl     400bcb <fillregion+0x17>
  400bf6:	c3                   	ret

0000000000400bf7 <checkregion>:
  400bf7:	48 89 7c 24 e8       	mov    %rdi,-0x18(%rsp)
  400bfc:	89 74 24 e4          	mov    %esi,-0x1c(%rsp)
  400c00:	89 54 24 e0          	mov    %edx,-0x20(%rsp)
  400c04:	c7 44 24 fc 00 00 00 	movl   $0x0,-0x4(%rsp)
  400c0b:	00 
  400c0c:	eb 2a                	jmp    400c38 <checkregion+0x41>
  400c0e:	8b 44 24 fc          	mov    -0x4(%rsp),%eax
  400c12:	48 98                	cltq
  400c14:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  400c1b:	00 
  400c1c:	48 8b 44 24 e8       	mov    -0x18(%rsp),%rax
  400c21:	48 01 d0             	add    %rdx,%rax
  400c24:	8b 00                	mov    (%rax),%eax
  400c26:	3b 44 24 e0          	cmp    -0x20(%rsp),%eax
  400c2a:	74 07                	je     400c33 <checkregion+0x3c>
  400c2c:	b8 00 00 00 00       	mov    $0x0,%eax
  400c31:	eb 14                	jmp    400c47 <checkregion+0x50>
  400c33:	83 44 24 fc 01       	addl   $0x1,-0x4(%rsp)
  400c38:	8b 44 24 fc          	mov    -0x4(%rsp),%eax
  400c3c:	3b 44 24 e4          	cmp    -0x1c(%rsp),%eax
  400c40:	7c cc                	jl     400c0e <checkregion+0x17>
  400c42:	b8 01 00 00 00       	mov    $0x1,%eax
  400c47:	c3                   	ret

0000000000400c48 <exec_phase>:
  400c48:	55                   	push   %rbp
  400c49:	48 89 e5             	mov    %rsp,%rbp
  400c4c:	53                   	push   %rbx
  400c4d:	48 83 ec 58          	sub    $0x58,%rsp
  400c51:	48 89 7d a8          	mov    %rdi,-0x58(%rbp)
  400c55:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
  400c59:	25 f0 3f 00 00       	and    $0x3ff0,%eax
  400c5e:	48 89 05 5b 35 20 00 	mov    %rax,0x20355b(%rip)        # 6041c0 <alloca_size.3650>
  400c65:	48 8b 05 54 35 20 00 	mov    0x203554(%rip),%rax        # 6041c0 <alloca_size.3650>
  400c6c:	48 8d 50 0f          	lea    0xf(%rax),%rdx
  400c70:	b8 10 00 00 00       	mov    $0x10,%eax
  400c75:	48 83 e8 01          	sub    $0x1,%rax
  400c79:	48 01 d0             	add    %rdx,%rax
  400c7c:	bb 10 00 00 00       	mov    $0x10,%ebx
  400c81:	ba 00 00 00 00       	mov    $0x0,%edx
  400c86:	48 f7 f3             	div    %rbx
  400c89:	48 6b c0 10          	imul   $0x10,%rax,%rax
  400c8d:	48 29 c4             	sub    %rax,%rsp
  400c90:	48 89 e0             	mov    %rsp,%rax
  400c93:	48 83 c0 0f          	add    $0xf,%rax
  400c97:	48 c1 e8 04          	shr    $0x4,%rax
  400c9b:	48 c1 e0 04          	shl    $0x4,%rax
  400c9f:	48 89 05 22 35 20 00 	mov    %rax,0x203522(%rip)        # 6041c8 <alloca_region.3649>
  400ca6:	b8 00 00 00 00       	mov    $0x0,%eax
  400cab:	e8 d4 fe ff ff       	call   400b84 <getrid>
  400cb0:	89 c2                	mov    %eax,%edx
  400cb2:	48 8b 05 07 35 20 00 	mov    0x203507(%rip),%rax        # 6041c0 <alloca_size.3650>
  400cb9:	48 c1 e8 02          	shr    $0x2,%rax
  400cbd:	89 c1                	mov    %eax,%ecx
  400cbf:	48 8b 05 02 35 20 00 	mov    0x203502(%rip),%rax        # 6041c8 <alloca_region.3649>
  400cc6:	89 ce                	mov    %ecx,%esi
  400cc8:	48 89 c7             	mov    %rax,%rdi
  400ccb:	e8 e4 fe ff ff       	call   400bb4 <fillregion>
  400cd0:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
  400cd4:	48 89 c7             	mov    %rax,%rdi
  400cd7:	e8 8f fd ff ff       	call   400a6b <phase>
  400cdc:	b8 00 00 00 00       	mov    $0x0,%eax
  400ce1:	e8 9e fe ff ff       	call   400b84 <getrid>
  400ce6:	89 c2                	mov    %eax,%edx
  400ce8:	48 8b 05 d1 34 20 00 	mov    0x2034d1(%rip),%rax        # 6041c0 <alloca_size.3650>
  400cef:	48 c1 e8 02          	shr    $0x2,%rax
  400cf3:	89 c1                	mov    %eax,%ecx
  400cf5:	48 8b 05 cc 34 20 00 	mov    0x2034cc(%rip),%rax        # 6041c8 <alloca_region.3649>
  400cfc:	89 ce                	mov    %ecx,%esi
  400cfe:	48 89 c7             	mov    %rax,%rdi
  400d01:	e8 f1 fe ff ff       	call   400bf7 <checkregion>
  400d06:	85 c0                	test   %eax,%eax
  400d08:	75 0a                	jne    400d14 <exec_phase+0xcc>
  400d0a:	bf 60 10 40 00       	mov    $0x401060,%edi
  400d0f:	e8 9c fa ff ff       	call   4007b0 <puts@plt>
  400d14:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
  400d18:	c9                   	leave
  400d19:	c3                   	ret

0000000000400d1a <main>:
  400d1a:	48 83 ec 28          	sub    $0x28,%rsp
  400d1e:	89 7c 24 0c          	mov    %edi,0xc(%rsp)
  400d22:	48 89 34 24          	mov    %rsi,(%rsp)
  400d26:	b8 00 00 00 00       	mov    $0x0,%eax
  400d2b:	e8 54 fe ff ff       	call   400b84 <getrid>
  400d30:	48 c7 44 24 18 00 00 	movq   $0x0,0x18(%rsp)
  400d37:	00 00 
  400d39:	83 7c 24 0c 01       	cmpl   $0x1,0xc(%rsp)
  400d3e:	75 0e                	jne    400d4e <main+0x34>
  400d40:	48 8b 05 39 14 20 00 	mov    0x201439(%rip),%rax        # 602180 <stdin@GLIBC_2.2.5>
  400d47:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  400d4c:	eb 76                	jmp    400dc4 <main+0xaa>
  400d4e:	83 7c 24 0c 02       	cmpl   $0x2,0xc(%rsp)
  400d53:	75 4c                	jne    400da1 <main+0x87>
  400d55:	48 8b 04 24          	mov    (%rsp),%rax
  400d59:	48 83 c0 08          	add    $0x8,%rax
  400d5d:	48 8b 00             	mov    (%rax),%rax
  400d60:	be 82 10 40 00       	mov    $0x401082,%esi
  400d65:	48 89 c7             	mov    %rax,%rdi
  400d68:	e8 03 fb ff ff       	call   400870 <fopen@plt>
  400d6d:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  400d72:	48 83 7c 24 18 00    	cmpq   $0x0,0x18(%rsp)
  400d78:	75 4a                	jne    400dc4 <main+0xaa>
  400d7a:	48 8b 04 24          	mov    (%rsp),%rax
  400d7e:	48 83 c0 08          	add    $0x8,%rax
  400d82:	48 8b 00             	mov    (%rax),%rax
  400d85:	48 89 c6             	mov    %rax,%rsi
  400d88:	bf 88 10 40 00       	mov    $0x401088,%edi
  400d8d:	b8 00 00 00 00       	mov    $0x0,%eax
  400d92:	e8 79 fa ff ff       	call   400810 <printf@plt>
  400d97:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  400d9c:	e9 8d 01 00 00       	jmp    400f2e <main+0x214>
  400da1:	48 8b 04 24          	mov    (%rsp),%rax
  400da5:	48 8b 00             	mov    (%rax),%rax
  400da8:	48 89 c6             	mov    %rax,%rsi
  400dab:	bf ac 10 40 00       	mov    $0x4010ac,%edi
  400db0:	b8 00 00 00 00       	mov    $0x0,%eax
  400db5:	e8 56 fa ff ff       	call   400810 <printf@plt>
  400dba:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  400dbf:	e9 6a 01 00 00       	jmp    400f2e <main+0x214>
  400dc4:	bf c8 10 40 00       	mov    $0x4010c8,%edi
  400dc9:	e8 e2 f9 ff ff       	call   4007b0 <puts@plt>
  400dce:	bf f8 10 40 00       	mov    $0x4010f8,%edi
  400dd3:	e8 d8 f9 ff ff       	call   4007b0 <puts@plt>
  400dd8:	ba 00 20 00 00       	mov    $0x2000,%edx
  400ddd:	be 00 00 00 00       	mov    $0x0,%esi
  400de2:	bf c0 21 60 00       	mov    $0x6021c0,%edi
  400de7:	e8 34 fa ff ff       	call   400820 <memset@plt>
  400dec:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  400df1:	48 89 c1             	mov    %rax,%rcx
  400df4:	ba ff 1f 00 00       	mov    $0x1fff,%edx
  400df9:	be 01 00 00 00       	mov    $0x1,%esi
  400dfe:	bf c0 21 60 00       	mov    $0x6021c0,%edi
  400e03:	e8 c8 f9 ff ff       	call   4007d0 <fread@plt>
  400e08:	48 89 44 24 10       	mov    %rax,0x10(%rsp)
  400e0d:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  400e12:	48 89 c7             	mov    %rax,%rdi
  400e15:	e8 a6 f9 ff ff       	call   4007c0 <ferror@plt>
  400e1a:	85 c0                	test   %eax,%eax
  400e1c:	74 0f                	je     400e2d <main+0x113>
  400e1e:	bf 20 11 40 00       	mov    $0x401120,%edi
  400e23:	e8 88 f9 ff ff       	call   4007b0 <puts@plt>
  400e28:	e9 e1 00 00 00       	jmp    400f0e <main+0x1f4>
  400e2d:	48 8b 44 24 10       	mov    0x10(%rsp),%rax
  400e32:	48 05 c0 21 60 00    	add    $0x6021c0,%rax
  400e38:	c6 00 00             	movb   $0x0,(%rax)
  400e3b:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  400e41:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  400e47:	b9 32 01 00 00       	mov    $0x132,%ecx
  400e4c:	ba 07 00 00 00       	mov    $0x7,%edx
  400e51:	be 00 40 00 00       	mov    $0x4000,%esi
  400e56:	bf 00 00 00 04       	mov    $0x4000000,%edi
  400e5b:	e8 a0 f9 ff ff       	call   400800 <mmap@plt>
  400e60:	48 89 05 39 13 20 00 	mov    %rax,0x201339(%rip)        # 6021a0 <buffer_stack_area>
  400e67:	48 8b 05 32 13 20 00 	mov    0x201332(%rip),%rax        # 6021a0 <buffer_stack_area>
  400e6e:	48 3d 00 00 00 04    	cmp    $0x4000000,%rax
  400e74:	74 28                	je     400e9e <main+0x184>
  400e76:	48 8b 05 0b 13 20 00 	mov    0x20130b(%rip),%rax        # 602188 <stderr@GLIBC_2.2.5>
  400e7d:	48 89 c1             	mov    %rax,%rcx
  400e80:	ba 53 00 00 00       	mov    $0x53,%edx
  400e85:	be 01 00 00 00       	mov    $0x1,%esi
  400e8a:	bf 48 11 40 00       	mov    $0x401148,%edi
  400e8f:	e8 ec f9 ff ff       	call   400880 <fwrite@plt>
  400e94:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  400e99:	e9 90 00 00 00       	jmp    400f2e <main+0x214>
  400e9e:	48 8b 05 fb 12 20 00 	mov    0x2012fb(%rip),%rax        # 6021a0 <buffer_stack_area>
  400ea5:	48 05 f8 3f 00 00    	add    $0x3ff8,%rax
  400eab:	48 89 05 f6 12 20 00 	mov    %rax,0x2012f6(%rip)        # 6021a8 <buffer_stack_top>
  400eb2:	48 8b 15 ef 12 20 00 	mov    0x2012ef(%rip),%rdx        # 6021a8 <buffer_stack_top>
  400eb9:	48 89 e0             	mov    %rsp,%rax
  400ebc:	48 89 d4             	mov    %rdx,%rsp
  400ebf:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400ec3:	48 89 c2             	mov    %rax,%rdx
  400ec6:	48 89 15 e3 12 20 00 	mov    %rdx,0x2012e3(%rip)        # 6021b0 <main_stack_top>
  400ecd:	bf c0 21 60 00       	mov    $0x6021c0,%edi
  400ed2:	e8 71 fd ff ff       	call   400c48 <exec_phase>
  400ed7:	48 8b 05 d2 12 20 00 	mov    0x2012d2(%rip),%rax        # 6021b0 <main_stack_top>
  400ede:	48 89 c4             	mov    %rax,%rsp
  400ee1:	48 8b 05 b8 12 20 00 	mov    0x2012b8(%rip),%rax        # 6021a0 <buffer_stack_area>
  400ee8:	be 00 40 00 00       	mov    $0x4000,%esi
  400eed:	48 89 c7             	mov    %rax,%rdi
  400ef0:	e8 6b f9 ff ff       	call   400860 <munmap@plt>
  400ef5:	48 c7 05 a8 12 20 00 	movq   $0x0,0x2012a8(%rip)        # 6021a8 <buffer_stack_top>
  400efc:	00 00 00 00 
  400f00:	48 8b 05 a1 12 20 00 	mov    0x2012a1(%rip),%rax        # 6021a8 <buffer_stack_top>
  400f07:	48 89 05 92 12 20 00 	mov    %rax,0x201292(%rip)        # 6021a0 <buffer_stack_area>
  400f0e:	48 8b 05 6b 12 20 00 	mov    0x20126b(%rip),%rax        # 602180 <stdin@GLIBC_2.2.5>
  400f15:	48 39 44 24 18       	cmp    %rax,0x18(%rsp)
  400f1a:	74 0d                	je     400f29 <main+0x20f>
  400f1c:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  400f21:	48 89 c7             	mov    %rax,%rdi
  400f24:	e8 c7 f8 ff ff       	call   4007f0 <fclose@plt>
  400f29:	b8 00 00 00 00       	mov    $0x0,%eax
  400f2e:	48 83 c4 28          	add    $0x28,%rsp
  400f32:	c3                   	ret
  400f33:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  400f3a:	00 00 00 
  400f3d:	0f 1f 00             	nopl   (%rax)

0000000000400f40 <__libc_csu_init>:
  400f40:	41 57                	push   %r15
  400f42:	41 89 ff             	mov    %edi,%r15d
  400f45:	41 56                	push   %r14
  400f47:	49 89 f6             	mov    %rsi,%r14
  400f4a:	41 55                	push   %r13
  400f4c:	49 89 d5             	mov    %rdx,%r13
  400f4f:	41 54                	push   %r12
  400f51:	4c 8d 25 b8 0e 20 00 	lea    0x200eb8(%rip),%r12        # 601e10 <__frame_dummy_init_array_entry>
  400f58:	55                   	push   %rbp
  400f59:	48 8d 2d b8 0e 20 00 	lea    0x200eb8(%rip),%rbp        # 601e18 <__do_global_dtors_aux_fini_array_entry>
  400f60:	53                   	push   %rbx
  400f61:	4c 29 e5             	sub    %r12,%rbp
  400f64:	31 db                	xor    %ebx,%ebx
  400f66:	48 c1 fd 03          	sar    $0x3,%rbp
  400f6a:	48 83 ec 08          	sub    $0x8,%rsp
  400f6e:	e8 f5 f7 ff ff       	call   400768 <_init>
  400f73:	48 85 ed             	test   %rbp,%rbp
  400f76:	74 1e                	je     400f96 <__libc_csu_init+0x56>
  400f78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400f7f:	00 
  400f80:	4c 89 ea             	mov    %r13,%rdx
  400f83:	4c 89 f6             	mov    %r14,%rsi
  400f86:	44 89 ff             	mov    %r15d,%edi
  400f89:	41 ff 14 dc          	call   *(%r12,%rbx,8)
  400f8d:	48 83 c3 01          	add    $0x1,%rbx
  400f91:	48 39 eb             	cmp    %rbp,%rbx
  400f94:	75 ea                	jne    400f80 <__libc_csu_init+0x40>
  400f96:	48 83 c4 08          	add    $0x8,%rsp
  400f9a:	5b                   	pop    %rbx
  400f9b:	5d                   	pop    %rbp
  400f9c:	41 5c                	pop    %r12
  400f9e:	41 5d                	pop    %r13
  400fa0:	41 5e                	pop    %r14
  400fa2:	41 5f                	pop    %r15
  400fa4:	c3                   	ret
  400fa5:	90                   	nop
  400fa6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
  400fad:	00 00 00 

0000000000400fb0 <__libc_csu_fini>:
  400fb0:	f3 c3                	repz ret

Disassembly of section .fini:

0000000000400fb4 <_fini>:
  400fb4:	48 83 ec 08          	sub    $0x8,%rsp
  400fb8:	48 83 c4 08          	add    $0x8,%rsp
  400fbc:	c3                   	ret
