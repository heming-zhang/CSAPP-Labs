
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400bb0 <_init>:
  400bb0:	48 83 ec 08          	sub    $0x8,%rsp
  400bb4:	48 8b 05 3d 44 20 00 	mov    0x20443d(%rip),%rax        # 604ff8 <__gmon_start__>
  400bbb:	48 85 c0             	test   %rax,%rax
  400bbe:	74 05                	je     400bc5 <_init+0x15>
  400bc0:	e8 2b 02 00 00       	callq  400df0 <.plt.got>
  400bc5:	48 83 c4 08          	add    $0x8,%rsp
  400bc9:	c3                   	retq   

Disassembly of section .plt:

0000000000400bd0 <.plt>:
  400bd0:	ff 35 32 44 20 00    	pushq  0x204432(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400bd6:	ff 25 34 44 20 00    	jmpq   *0x204434(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400bdc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400be0 <strcasecmp@plt>:
  400be0:	ff 25 32 44 20 00    	jmpq   *0x204432(%rip)        # 605018 <strcasecmp@GLIBC_2.2.5>
  400be6:	68 00 00 00 00       	pushq  $0x0
  400beb:	e9 e0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400bf0 <__errno_location@plt>:
  400bf0:	ff 25 2a 44 20 00    	jmpq   *0x20442a(%rip)        # 605020 <__errno_location@GLIBC_2.2.5>
  400bf6:	68 01 00 00 00       	pushq  $0x1
  400bfb:	e9 d0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c00 <srandom@plt>:
  400c00:	ff 25 22 44 20 00    	jmpq   *0x204422(%rip)        # 605028 <srandom@GLIBC_2.2.5>
  400c06:	68 02 00 00 00       	pushq  $0x2
  400c0b:	e9 c0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c10 <strncmp@plt>:
  400c10:	ff 25 1a 44 20 00    	jmpq   *0x20441a(%rip)        # 605030 <strncmp@GLIBC_2.2.5>
  400c16:	68 03 00 00 00       	pushq  $0x3
  400c1b:	e9 b0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c20 <strcpy@plt>:
  400c20:	ff 25 12 44 20 00    	jmpq   *0x204412(%rip)        # 605038 <strcpy@GLIBC_2.2.5>
  400c26:	68 04 00 00 00       	pushq  $0x4
  400c2b:	e9 a0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c30 <puts@plt>:
  400c30:	ff 25 0a 44 20 00    	jmpq   *0x20440a(%rip)        # 605040 <puts@GLIBC_2.2.5>
  400c36:	68 05 00 00 00       	pushq  $0x5
  400c3b:	e9 90 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c40 <write@plt>:
  400c40:	ff 25 02 44 20 00    	jmpq   *0x204402(%rip)        # 605048 <write@GLIBC_2.2.5>
  400c46:	68 06 00 00 00       	pushq  $0x6
  400c4b:	e9 80 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c50 <mmap@plt>:
  400c50:	ff 25 fa 43 20 00    	jmpq   *0x2043fa(%rip)        # 605050 <mmap@GLIBC_2.2.5>
  400c56:	68 07 00 00 00       	pushq  $0x7
  400c5b:	e9 70 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c60 <printf@plt>:
  400c60:	ff 25 f2 43 20 00    	jmpq   *0x2043f2(%rip)        # 605058 <printf@GLIBC_2.2.5>
  400c66:	68 08 00 00 00       	pushq  $0x8
  400c6b:	e9 60 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c70 <memset@plt>:
  400c70:	ff 25 ea 43 20 00    	jmpq   *0x2043ea(%rip)        # 605060 <memset@GLIBC_2.2.5>
  400c76:	68 09 00 00 00       	pushq  $0x9
  400c7b:	e9 50 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c80 <alarm@plt>:
  400c80:	ff 25 e2 43 20 00    	jmpq   *0x2043e2(%rip)        # 605068 <alarm@GLIBC_2.2.5>
  400c86:	68 0a 00 00 00       	pushq  $0xa
  400c8b:	e9 40 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c90 <close@plt>:
  400c90:	ff 25 da 43 20 00    	jmpq   *0x2043da(%rip)        # 605070 <close@GLIBC_2.2.5>
  400c96:	68 0b 00 00 00       	pushq  $0xb
  400c9b:	e9 30 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400ca0 <read@plt>:
  400ca0:	ff 25 d2 43 20 00    	jmpq   *0x2043d2(%rip)        # 605078 <read@GLIBC_2.2.5>
  400ca6:	68 0c 00 00 00       	pushq  $0xc
  400cab:	e9 20 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400cb0 <__libc_start_main@plt>:
  400cb0:	ff 25 ca 43 20 00    	jmpq   *0x2043ca(%rip)        # 605080 <__libc_start_main@GLIBC_2.2.5>
  400cb6:	68 0d 00 00 00       	pushq  $0xd
  400cbb:	e9 10 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400cc0 <signal@plt>:
  400cc0:	ff 25 c2 43 20 00    	jmpq   *0x2043c2(%rip)        # 605088 <signal@GLIBC_2.2.5>
  400cc6:	68 0e 00 00 00       	pushq  $0xe
  400ccb:	e9 00 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400cd0 <gethostbyname@plt>:
  400cd0:	ff 25 ba 43 20 00    	jmpq   *0x2043ba(%rip)        # 605090 <gethostbyname@GLIBC_2.2.5>
  400cd6:	68 0f 00 00 00       	pushq  $0xf
  400cdb:	e9 f0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400ce0 <fprintf@plt>:
  400ce0:	ff 25 b2 43 20 00    	jmpq   *0x2043b2(%rip)        # 605098 <fprintf@GLIBC_2.2.5>
  400ce6:	68 10 00 00 00       	pushq  $0x10
  400ceb:	e9 e0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400cf0 <strtol@plt>:
  400cf0:	ff 25 aa 43 20 00    	jmpq   *0x2043aa(%rip)        # 6050a0 <strtol@GLIBC_2.2.5>
  400cf6:	68 11 00 00 00       	pushq  $0x11
  400cfb:	e9 d0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d00 <memcpy@plt>:
  400d00:	ff 25 a2 43 20 00    	jmpq   *0x2043a2(%rip)        # 6050a8 <memcpy@GLIBC_2.14>
  400d06:	68 12 00 00 00       	pushq  $0x12
  400d0b:	e9 c0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d10 <time@plt>:
  400d10:	ff 25 9a 43 20 00    	jmpq   *0x20439a(%rip)        # 6050b0 <time@GLIBC_2.2.5>
  400d16:	68 13 00 00 00       	pushq  $0x13
  400d1b:	e9 b0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d20 <random@plt>:
  400d20:	ff 25 92 43 20 00    	jmpq   *0x204392(%rip)        # 6050b8 <random@GLIBC_2.2.5>
  400d26:	68 14 00 00 00       	pushq  $0x14
  400d2b:	e9 a0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d30 <_IO_getc@plt>:
  400d30:	ff 25 8a 43 20 00    	jmpq   *0x20438a(%rip)        # 6050c0 <_IO_getc@GLIBC_2.2.5>
  400d36:	68 15 00 00 00       	pushq  $0x15
  400d3b:	e9 90 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d40 <__isoc99_sscanf@plt>:
  400d40:	ff 25 82 43 20 00    	jmpq   *0x204382(%rip)        # 6050c8 <__isoc99_sscanf@GLIBC_2.7>
  400d46:	68 16 00 00 00       	pushq  $0x16
  400d4b:	e9 80 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d50 <munmap@plt>:
  400d50:	ff 25 7a 43 20 00    	jmpq   *0x20437a(%rip)        # 6050d0 <munmap@GLIBC_2.2.5>
  400d56:	68 17 00 00 00       	pushq  $0x17
  400d5b:	e9 70 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d60 <bcopy@plt>:
  400d60:	ff 25 72 43 20 00    	jmpq   *0x204372(%rip)        # 6050d8 <bcopy@GLIBC_2.2.5>
  400d66:	68 18 00 00 00       	pushq  $0x18
  400d6b:	e9 60 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d70 <fopen@plt>:
  400d70:	ff 25 6a 43 20 00    	jmpq   *0x20436a(%rip)        # 6050e0 <fopen@GLIBC_2.2.5>
  400d76:	68 19 00 00 00       	pushq  $0x19
  400d7b:	e9 50 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d80 <getopt@plt>:
  400d80:	ff 25 62 43 20 00    	jmpq   *0x204362(%rip)        # 6050e8 <getopt@GLIBC_2.2.5>
  400d86:	68 1a 00 00 00       	pushq  $0x1a
  400d8b:	e9 40 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d90 <strtoul@plt>:
  400d90:	ff 25 5a 43 20 00    	jmpq   *0x20435a(%rip)        # 6050f0 <strtoul@GLIBC_2.2.5>
  400d96:	68 1b 00 00 00       	pushq  $0x1b
  400d9b:	e9 30 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400da0 <gethostname@plt>:
  400da0:	ff 25 52 43 20 00    	jmpq   *0x204352(%rip)        # 6050f8 <gethostname@GLIBC_2.2.5>
  400da6:	68 1c 00 00 00       	pushq  $0x1c
  400dab:	e9 20 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400db0 <sprintf@plt>:
  400db0:	ff 25 4a 43 20 00    	jmpq   *0x20434a(%rip)        # 605100 <sprintf@GLIBC_2.2.5>
  400db6:	68 1d 00 00 00       	pushq  $0x1d
  400dbb:	e9 10 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400dc0 <exit@plt>:
  400dc0:	ff 25 42 43 20 00    	jmpq   *0x204342(%rip)        # 605108 <exit@GLIBC_2.2.5>
  400dc6:	68 1e 00 00 00       	pushq  $0x1e
  400dcb:	e9 00 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400dd0 <connect@plt>:
  400dd0:	ff 25 3a 43 20 00    	jmpq   *0x20433a(%rip)        # 605110 <connect@GLIBC_2.2.5>
  400dd6:	68 1f 00 00 00       	pushq  $0x1f
  400ddb:	e9 f0 fd ff ff       	jmpq   400bd0 <.plt>

0000000000400de0 <socket@plt>:
  400de0:	ff 25 32 43 20 00    	jmpq   *0x204332(%rip)        # 605118 <socket@GLIBC_2.2.5>
  400de6:	68 20 00 00 00       	pushq  $0x20
  400deb:	e9 e0 fd ff ff       	jmpq   400bd0 <.plt>

Disassembly of section .plt.got:

0000000000400df0 <.plt.got>:
  400df0:	ff 25 02 42 20 00    	jmpq   *0x204202(%rip)        # 604ff8 <__gmon_start__>
  400df6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400e00 <_start>:
  400e00:	31 ed                	xor    %ebp,%ebp
  400e02:	49 89 d1             	mov    %rdx,%r9
  400e05:	5e                   	pop    %rsi
  400e06:	48 89 e2             	mov    %rsp,%rdx
  400e09:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400e0d:	50                   	push   %rax
  400e0e:	54                   	push   %rsp
  400e0f:	49 c7 c0 70 2c 40 00 	mov    $0x402c70,%r8
  400e16:	48 c7 c1 00 2c 40 00 	mov    $0x402c00,%rcx
  400e1d:	48 c7 c7 c0 10 40 00 	mov    $0x4010c0,%rdi
  400e24:	e8 87 fe ff ff       	callq  400cb0 <__libc_start_main@plt>
  400e29:	f4                   	hlt    
  400e2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400e30 <deregister_tm_clones>:
  400e30:	b8 97 54 60 00       	mov    $0x605497,%eax
  400e35:	55                   	push   %rbp
  400e36:	48 2d 90 54 60 00    	sub    $0x605490,%rax
  400e3c:	48 83 f8 0e          	cmp    $0xe,%rax
  400e40:	48 89 e5             	mov    %rsp,%rbp
  400e43:	77 02                	ja     400e47 <deregister_tm_clones+0x17>
  400e45:	5d                   	pop    %rbp
  400e46:	c3                   	retq   
  400e47:	b8 00 00 00 00       	mov    $0x0,%eax
  400e4c:	48 85 c0             	test   %rax,%rax
  400e4f:	74 f4                	je     400e45 <deregister_tm_clones+0x15>
  400e51:	5d                   	pop    %rbp
  400e52:	bf 90 54 60 00       	mov    $0x605490,%edi
  400e57:	ff e0                	jmpq   *%rax
  400e59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400e60 <register_tm_clones>:
  400e60:	b8 90 54 60 00       	mov    $0x605490,%eax
  400e65:	55                   	push   %rbp
  400e66:	48 2d 90 54 60 00    	sub    $0x605490,%rax
  400e6c:	48 c1 f8 03          	sar    $0x3,%rax
  400e70:	48 89 e5             	mov    %rsp,%rbp
  400e73:	48 89 c2             	mov    %rax,%rdx
  400e76:	48 c1 ea 3f          	shr    $0x3f,%rdx
  400e7a:	48 01 d0             	add    %rdx,%rax
  400e7d:	48 d1 f8             	sar    %rax
  400e80:	75 02                	jne    400e84 <register_tm_clones+0x24>
  400e82:	5d                   	pop    %rbp
  400e83:	c3                   	retq   
  400e84:	ba 00 00 00 00       	mov    $0x0,%edx
  400e89:	48 85 d2             	test   %rdx,%rdx
  400e8c:	74 f4                	je     400e82 <register_tm_clones+0x22>
  400e8e:	5d                   	pop    %rbp
  400e8f:	48 89 c6             	mov    %rax,%rsi
  400e92:	bf 90 54 60 00       	mov    $0x605490,%edi
  400e97:	ff e2                	jmpq   *%rdx
  400e99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400ea0 <__do_global_dtors_aux>:
  400ea0:	80 3d 11 46 20 00 00 	cmpb   $0x0,0x204611(%rip)        # 6054b8 <completed.6355>
  400ea7:	75 11                	jne    400eba <__do_global_dtors_aux+0x1a>
  400ea9:	55                   	push   %rbp
  400eaa:	48 89 e5             	mov    %rsp,%rbp
  400ead:	e8 7e ff ff ff       	callq  400e30 <deregister_tm_clones>
  400eb2:	5d                   	pop    %rbp
  400eb3:	c6 05 fe 45 20 00 01 	movb   $0x1,0x2045fe(%rip)        # 6054b8 <completed.6355>
  400eba:	f3 c3                	repz retq 
  400ebc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ec0 <frame_dummy>:
  400ec0:	48 83 3d 58 3f 20 00 	cmpq   $0x0,0x203f58(%rip)        # 604e20 <__JCR_END__>
  400ec7:	00 
  400ec8:	74 1e                	je     400ee8 <frame_dummy+0x28>
  400eca:	b8 00 00 00 00       	mov    $0x0,%eax
  400ecf:	48 85 c0             	test   %rax,%rax
  400ed2:	74 14                	je     400ee8 <frame_dummy+0x28>
  400ed4:	55                   	push   %rbp
  400ed5:	bf 20 4e 60 00       	mov    $0x604e20,%edi
  400eda:	48 89 e5             	mov    %rsp,%rbp
  400edd:	ff d0                	callq  *%rax
  400edf:	5d                   	pop    %rbp
  400ee0:	e9 7b ff ff ff       	jmpq   400e60 <register_tm_clones>
  400ee5:	0f 1f 00             	nopl   (%rax)
  400ee8:	e9 73 ff ff ff       	jmpq   400e60 <register_tm_clones>
  400eed:	0f 1f 00             	nopl   (%rax)

0000000000400ef0 <usage>:
  400ef0:	48 83 ec 08          	sub    $0x8,%rsp
  400ef4:	48 89 fe             	mov    %rdi,%rsi
  400ef7:	83 3d ea 45 20 00 00 	cmpl   $0x0,0x2045ea(%rip)        # 6054e8 <is_checker>
  400efe:	74 39                	je     400f39 <usage+0x49>
  400f00:	bf 90 2c 40 00       	mov    $0x402c90,%edi
  400f05:	b8 00 00 00 00       	mov    $0x0,%eax
  400f0a:	e8 51 fd ff ff       	callq  400c60 <printf@plt>
  400f0f:	bf c8 2c 40 00       	mov    $0x402cc8,%edi
  400f14:	e8 17 fd ff ff       	callq  400c30 <puts@plt>
  400f19:	bf 40 2e 40 00       	mov    $0x402e40,%edi
  400f1e:	e8 0d fd ff ff       	callq  400c30 <puts@plt>
  400f23:	bf f0 2c 40 00       	mov    $0x402cf0,%edi
  400f28:	e8 03 fd ff ff       	callq  400c30 <puts@plt>
  400f2d:	bf 5a 2e 40 00       	mov    $0x402e5a,%edi
  400f32:	e8 f9 fc ff ff       	callq  400c30 <puts@plt>
  400f37:	eb 2d                	jmp    400f66 <usage+0x76>
  400f39:	bf 76 2e 40 00       	mov    $0x402e76,%edi
  400f3e:	b8 00 00 00 00       	mov    $0x0,%eax
  400f43:	e8 18 fd ff ff       	callq  400c60 <printf@plt>
  400f48:	bf 18 2d 40 00       	mov    $0x402d18,%edi
  400f4d:	e8 de fc ff ff       	callq  400c30 <puts@plt>
  400f52:	bf 40 2d 40 00       	mov    $0x402d40,%edi
  400f57:	e8 d4 fc ff ff       	callq  400c30 <puts@plt>
  400f5c:	bf 94 2e 40 00       	mov    $0x402e94,%edi
  400f61:	e8 ca fc ff ff       	callq  400c30 <puts@plt>
  400f66:	bf 00 00 00 00       	mov    $0x0,%edi
  400f6b:	e8 50 fe ff ff       	callq  400dc0 <exit@plt>

0000000000400f70 <initialize_target>:
  400f70:	55                   	push   %rbp
  400f71:	53                   	push   %rbx
  400f72:	48 81 ec 08 21 00 00 	sub    $0x2108,%rsp
  400f79:	89 f5                	mov    %esi,%ebp
  400f7b:	89 3d 57 45 20 00    	mov    %edi,0x204557(%rip)        # 6054d8 <check_level>
  400f81:	8b 3d c1 41 20 00    	mov    0x2041c1(%rip),%edi        # 605148 <target_id>
  400f87:	e8 47 1c 00 00       	callq  402bd3 <gencookie>
  400f8c:	89 05 52 45 20 00    	mov    %eax,0x204552(%rip)        # 6054e4 <cookie>
  400f92:	89 c7                	mov    %eax,%edi
  400f94:	e8 3a 1c 00 00       	callq  402bd3 <gencookie>
  400f99:	89 05 41 45 20 00    	mov    %eax,0x204541(%rip)        # 6054e0 <authkey>
  400f9f:	8b 05 a3 41 20 00    	mov    0x2041a3(%rip),%eax        # 605148 <target_id>
  400fa5:	8d 78 01             	lea    0x1(%rax),%edi
  400fa8:	e8 53 fc ff ff       	callq  400c00 <srandom@plt>
  400fad:	e8 6e fd ff ff       	callq  400d20 <random@plt>
  400fb2:	89 c7                	mov    %eax,%edi
  400fb4:	e8 ca 02 00 00       	callq  401283 <scramble>
  400fb9:	89 c3                	mov    %eax,%ebx
  400fbb:	85 ed                	test   %ebp,%ebp
  400fbd:	74 18                	je     400fd7 <initialize_target+0x67>
  400fbf:	bf 00 00 00 00       	mov    $0x0,%edi
  400fc4:	e8 47 fd ff ff       	callq  400d10 <time@plt>
  400fc9:	89 c7                	mov    %eax,%edi
  400fcb:	e8 30 fc ff ff       	callq  400c00 <srandom@plt>
  400fd0:	e8 4b fd ff ff       	callq  400d20 <random@plt>
  400fd5:	eb 05                	jmp    400fdc <initialize_target+0x6c>
  400fd7:	b8 00 00 00 00       	mov    $0x0,%eax
  400fdc:	01 c3                	add    %eax,%ebx
  400fde:	0f b7 db             	movzwl %bx,%ebx
  400fe1:	8d 04 dd 00 01 00 00 	lea    0x100(,%rbx,8),%eax
  400fe8:	89 c0                	mov    %eax,%eax
  400fea:	48 89 05 8f 44 20 00 	mov    %rax,0x20448f(%rip)        # 605480 <buf_offset>
  400ff1:	c6 05 10 51 20 00 72 	movb   $0x72,0x205110(%rip)        # 606108 <target_prefix>
  400ff8:	83 3d 89 44 20 00 00 	cmpl   $0x0,0x204489(%rip)        # 605488 <notify>
  400fff:	0f 84 b1 00 00 00    	je     4010b6 <initialize_target+0x146>
  401005:	83 3d dc 44 20 00 00 	cmpl   $0x0,0x2044dc(%rip)        # 6054e8 <is_checker>
  40100c:	0f 85 a4 00 00 00    	jne    4010b6 <initialize_target+0x146>
  401012:	be 00 01 00 00       	mov    $0x100,%esi
  401017:	48 89 e7             	mov    %rsp,%rdi
  40101a:	e8 81 fd ff ff       	callq  400da0 <gethostname@plt>
  40101f:	85 c0                	test   %eax,%eax
  401021:	74 25                	je     401048 <initialize_target+0xd8>
  401023:	bf 70 2d 40 00       	mov    $0x402d70,%edi
  401028:	e8 03 fc ff ff       	callq  400c30 <puts@plt>
  40102d:	bf 08 00 00 00       	mov    $0x8,%edi
  401032:	e8 89 fd ff ff       	callq  400dc0 <exit@plt>
  401037:	48 89 e6             	mov    %rsp,%rsi
  40103a:	e8 a1 fb ff ff       	callq  400be0 <strcasecmp@plt>
  40103f:	85 c0                	test   %eax,%eax
  401041:	74 21                	je     401064 <initialize_target+0xf4>
  401043:	83 c3 01             	add    $0x1,%ebx
  401046:	eb 05                	jmp    40104d <initialize_target+0xdd>
  401048:	bb 00 00 00 00       	mov    $0x0,%ebx
  40104d:	48 63 c3             	movslq %ebx,%rax
  401050:	48 8b 3c c5 60 51 60 	mov    0x605160(,%rax,8),%rdi
  401057:	00 
  401058:	48 85 ff             	test   %rdi,%rdi
  40105b:	75 da                	jne    401037 <initialize_target+0xc7>
  40105d:	b8 00 00 00 00       	mov    $0x0,%eax
  401062:	eb 05                	jmp    401069 <initialize_target+0xf9>
  401064:	b8 01 00 00 00       	mov    $0x1,%eax
  401069:	85 c0                	test   %eax,%eax
  40106b:	75 17                	jne    401084 <initialize_target+0x114>
  40106d:	48 89 e6             	mov    %rsp,%rsi
  401070:	bf a8 2d 40 00       	mov    $0x402da8,%edi
  401075:	e8 e6 fb ff ff       	callq  400c60 <printf@plt>
  40107a:	bf 08 00 00 00       	mov    $0x8,%edi
  40107f:	e8 3c fd ff ff       	callq  400dc0 <exit@plt>
  401084:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40108b:	00 
  40108c:	e8 d9 18 00 00       	callq  40296a <init_driver>
  401091:	85 c0                	test   %eax,%eax
  401093:	79 21                	jns    4010b6 <initialize_target+0x146>
  401095:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  40109c:	00 
  40109d:	bf e8 2d 40 00       	mov    $0x402de8,%edi
  4010a2:	b8 00 00 00 00       	mov    $0x0,%eax
  4010a7:	e8 b4 fb ff ff       	callq  400c60 <printf@plt>
  4010ac:	bf 08 00 00 00       	mov    $0x8,%edi
  4010b1:	e8 0a fd ff ff       	callq  400dc0 <exit@plt>
  4010b6:	48 81 c4 08 21 00 00 	add    $0x2108,%rsp
  4010bd:	5b                   	pop    %rbx
  4010be:	5d                   	pop    %rbp
  4010bf:	c3                   	retq   

00000000004010c0 <main>:
  4010c0:	41 56                	push   %r14
  4010c2:	41 55                	push   %r13
  4010c4:	41 54                	push   %r12
  4010c6:	55                   	push   %rbp
  4010c7:	53                   	push   %rbx
  4010c8:	41 89 fc             	mov    %edi,%r12d
  4010cb:	48 89 f3             	mov    %rsi,%rbx
  4010ce:	be 91 1d 40 00       	mov    $0x401d91,%esi
  4010d3:	bf 0b 00 00 00       	mov    $0xb,%edi
  4010d8:	e8 e3 fb ff ff       	callq  400cc0 <signal@plt>
  4010dd:	be 43 1d 40 00       	mov    $0x401d43,%esi
  4010e2:	bf 07 00 00 00       	mov    $0x7,%edi
  4010e7:	e8 d4 fb ff ff       	callq  400cc0 <signal@plt>
  4010ec:	be df 1d 40 00       	mov    $0x401ddf,%esi
  4010f1:	bf 04 00 00 00       	mov    $0x4,%edi
  4010f6:	e8 c5 fb ff ff       	callq  400cc0 <signal@plt>
  4010fb:	83 3d e6 43 20 00 00 	cmpl   $0x0,0x2043e6(%rip)        # 6054e8 <is_checker>
  401102:	74 20                	je     401124 <main+0x64>
  401104:	be 2d 1e 40 00       	mov    $0x401e2d,%esi
  401109:	bf 0e 00 00 00       	mov    $0xe,%edi
  40110e:	e8 ad fb ff ff       	callq  400cc0 <signal@plt>
  401113:	bf 05 00 00 00       	mov    $0x5,%edi
  401118:	e8 63 fb ff ff       	callq  400c80 <alarm@plt>
  40111d:	bd b2 2e 40 00       	mov    $0x402eb2,%ebp
  401122:	eb 05                	jmp    401129 <main+0x69>
  401124:	bd ad 2e 40 00       	mov    $0x402ead,%ebp
  401129:	48 8b 05 70 43 20 00 	mov    0x204370(%rip),%rax        # 6054a0 <stdin@@GLIBC_2.2.5>
  401130:	48 89 05 99 43 20 00 	mov    %rax,0x204399(%rip)        # 6054d0 <infile>
  401137:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  40113d:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401143:	e9 b9 00 00 00       	jmpq   401201 <main+0x141>
  401148:	83 e8 61             	sub    $0x61,%eax
  40114b:	3c 10                	cmp    $0x10,%al
  40114d:	0f 87 93 00 00 00    	ja     4011e6 <main+0x126>
  401153:	0f b6 c0             	movzbl %al,%eax
  401156:	ff 24 c5 f8 2e 40 00 	jmpq   *0x402ef8(,%rax,8)
  40115d:	48 8b 3b             	mov    (%rbx),%rdi
  401160:	e8 8b fd ff ff       	callq  400ef0 <usage>
  401165:	be d5 33 40 00       	mov    $0x4033d5,%esi
  40116a:	48 8b 3d 37 43 20 00 	mov    0x204337(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  401171:	e8 fa fb ff ff       	callq  400d70 <fopen@plt>
  401176:	48 89 05 53 43 20 00 	mov    %rax,0x204353(%rip)        # 6054d0 <infile>
  40117d:	48 85 c0             	test   %rax,%rax
  401180:	75 7f                	jne    401201 <main+0x141>
  401182:	48 8b 15 1f 43 20 00 	mov    0x20431f(%rip),%rdx        # 6054a8 <optarg@@GLIBC_2.2.5>
  401189:	be ba 2e 40 00       	mov    $0x402eba,%esi
  40118e:	48 8b 3d 1b 43 20 00 	mov    0x20431b(%rip),%rdi        # 6054b0 <stderr@@GLIBC_2.2.5>
  401195:	e8 46 fb ff ff       	callq  400ce0 <fprintf@plt>
  40119a:	b8 01 00 00 00       	mov    $0x1,%eax
  40119f:	e9 d6 00 00 00       	jmpq   40127a <main+0x1ba>
  4011a4:	ba 10 00 00 00       	mov    $0x10,%edx
  4011a9:	be 00 00 00 00       	mov    $0x0,%esi
  4011ae:	48 8b 3d f3 42 20 00 	mov    0x2042f3(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  4011b5:	e8 d6 fb ff ff       	callq  400d90 <strtoul@plt>
  4011ba:	41 89 c6             	mov    %eax,%r14d
  4011bd:	eb 42                	jmp    401201 <main+0x141>
  4011bf:	ba 0a 00 00 00       	mov    $0xa,%edx
  4011c4:	be 00 00 00 00       	mov    $0x0,%esi
  4011c9:	48 8b 3d d8 42 20 00 	mov    0x2042d8(%rip),%rdi        # 6054a8 <optarg@@GLIBC_2.2.5>
  4011d0:	e8 1b fb ff ff       	callq  400cf0 <strtol@plt>
  4011d5:	41 89 c5             	mov    %eax,%r13d
  4011d8:	eb 27                	jmp    401201 <main+0x141>
  4011da:	c7 05 a4 42 20 00 00 	movl   $0x0,0x2042a4(%rip)        # 605488 <notify>
  4011e1:	00 00 00 
  4011e4:	eb 1b                	jmp    401201 <main+0x141>
  4011e6:	40 0f be f6          	movsbl %sil,%esi
  4011ea:	bf d7 2e 40 00       	mov    $0x402ed7,%edi
  4011ef:	b8 00 00 00 00       	mov    $0x0,%eax
  4011f4:	e8 67 fa ff ff       	callq  400c60 <printf@plt>
  4011f9:	48 8b 3b             	mov    (%rbx),%rdi
  4011fc:	e8 ef fc ff ff       	callq  400ef0 <usage>
  401201:	48 89 ea             	mov    %rbp,%rdx
  401204:	48 89 de             	mov    %rbx,%rsi
  401207:	44 89 e7             	mov    %r12d,%edi
  40120a:	e8 71 fb ff ff       	callq  400d80 <getopt@plt>
  40120f:	89 c6                	mov    %eax,%esi
  401211:	3c ff                	cmp    $0xff,%al
  401213:	0f 85 2f ff ff ff    	jne    401148 <main+0x88>
  401219:	be 01 00 00 00       	mov    $0x1,%esi
  40121e:	44 89 ef             	mov    %r13d,%edi
  401221:	e8 4a fd ff ff       	callq  400f70 <initialize_target>
  401226:	83 3d bb 42 20 00 00 	cmpl   $0x0,0x2042bb(%rip)        # 6054e8 <is_checker>
  40122d:	74 25                	je     401254 <main+0x194>
  40122f:	44 3b 35 aa 42 20 00 	cmp    0x2042aa(%rip),%r14d        # 6054e0 <authkey>
  401236:	74 1c                	je     401254 <main+0x194>
  401238:	44 89 f6             	mov    %r14d,%esi
  40123b:	bf 10 2e 40 00       	mov    $0x402e10,%edi
  401240:	b8 00 00 00 00       	mov    $0x0,%eax
  401245:	e8 16 fa ff ff       	callq  400c60 <printf@plt>
  40124a:	b8 00 00 00 00       	mov    $0x0,%eax
  40124f:	e8 f7 07 00 00       	callq  401a4b <check_fail>
  401254:	8b 35 8a 42 20 00    	mov    0x20428a(%rip),%esi        # 6054e4 <cookie>
  40125a:	bf ea 2e 40 00       	mov    $0x402eea,%edi
  40125f:	b8 00 00 00 00       	mov    $0x0,%eax
  401264:	e8 f7 f9 ff ff       	callq  400c60 <printf@plt>
  401269:	48 8b 3d 10 42 20 00 	mov    0x204210(%rip),%rdi        # 605480 <buf_offset>
  401270:	e8 06 0c 00 00       	callq  401e7b <launch>
  401275:	b8 00 00 00 00       	mov    $0x0,%eax
  40127a:	5b                   	pop    %rbx
  40127b:	5d                   	pop    %rbp
  40127c:	41 5c                	pop    %r12
  40127e:	41 5d                	pop    %r13
  401280:	41 5e                	pop    %r14
  401282:	c3                   	retq   

0000000000401283 <scramble>:
  401283:	b8 00 00 00 00       	mov    $0x0,%eax
  401288:	eb 11                	jmp    40129b <scramble+0x18>
  40128a:	69 c8 08 21 00 00    	imul   $0x2108,%eax,%ecx
  401290:	01 f9                	add    %edi,%ecx
  401292:	89 c2                	mov    %eax,%edx
  401294:	89 4c 94 d0          	mov    %ecx,-0x30(%rsp,%rdx,4)
  401298:	83 c0 01             	add    $0x1,%eax
  40129b:	83 f8 09             	cmp    $0x9,%eax
  40129e:	76 ea                	jbe    40128a <scramble+0x7>
  4012a0:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4012a4:	69 c0 1c 9c 00 00    	imul   $0x9c1c,%eax,%eax
  4012aa:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4012ae:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4012b2:	69 c0 5c 45 00 00    	imul   $0x455c,%eax,%eax
  4012b8:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4012bc:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4012c0:	69 c0 0a 30 00 00    	imul   $0x300a,%eax,%eax
  4012c6:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4012ca:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4012ce:	69 c0 b1 99 00 00    	imul   $0x99b1,%eax,%eax
  4012d4:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4012d8:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4012dc:	69 c0 78 61 00 00    	imul   $0x6178,%eax,%eax
  4012e2:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4012e6:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4012ea:	69 c0 6c 05 00 00    	imul   $0x56c,%eax,%eax
  4012f0:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4012f4:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4012f8:	69 c0 f6 b6 00 00    	imul   $0xb6f6,%eax,%eax
  4012fe:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401302:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401306:	69 c0 bf 83 00 00    	imul   $0x83bf,%eax,%eax
  40130c:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401310:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401314:	69 c0 fd 4d 00 00    	imul   $0x4dfd,%eax,%eax
  40131a:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40131e:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401322:	69 c0 a0 45 00 00    	imul   $0x45a0,%eax,%eax
  401328:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40132c:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401330:	69 c0 54 55 00 00    	imul   $0x5554,%eax,%eax
  401336:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40133a:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40133e:	69 c0 8c 6e 00 00    	imul   $0x6e8c,%eax,%eax
  401344:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401348:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40134c:	69 c0 fa e3 00 00    	imul   $0xe3fa,%eax,%eax
  401352:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401356:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40135a:	69 c0 4a bf 00 00    	imul   $0xbf4a,%eax,%eax
  401360:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401364:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401368:	69 c0 3f 1d 00 00    	imul   $0x1d3f,%eax,%eax
  40136e:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401372:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401376:	69 c0 19 89 00 00    	imul   $0x8919,%eax,%eax
  40137c:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401380:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401384:	69 c0 72 3d 00 00    	imul   $0x3d72,%eax,%eax
  40138a:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40138e:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401392:	69 c0 26 44 00 00    	imul   $0x4426,%eax,%eax
  401398:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40139c:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4013a0:	69 c0 60 07 00 00    	imul   $0x760,%eax,%eax
  4013a6:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4013aa:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4013ae:	69 c0 aa 70 00 00    	imul   $0x70aa,%eax,%eax
  4013b4:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4013b8:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4013bc:	69 c0 20 22 00 00    	imul   $0x2220,%eax,%eax
  4013c2:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4013c6:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4013ca:	69 c0 c7 b5 00 00    	imul   $0xb5c7,%eax,%eax
  4013d0:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4013d4:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  4013d8:	69 c0 42 26 00 00    	imul   $0x2642,%eax,%eax
  4013de:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  4013e2:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4013e6:	69 c0 9c ba 00 00    	imul   $0xba9c,%eax,%eax
  4013ec:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4013f0:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4013f4:	69 c0 4f cd 00 00    	imul   $0xcd4f,%eax,%eax
  4013fa:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4013fe:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  401402:	69 c0 0e a6 00 00    	imul   $0xa60e,%eax,%eax
  401408:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  40140c:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401410:	69 c0 54 e5 00 00    	imul   $0xe554,%eax,%eax
  401416:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  40141a:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40141e:	69 c0 4c 77 00 00    	imul   $0x774c,%eax,%eax
  401424:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401428:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  40142c:	69 c0 e4 aa 00 00    	imul   $0xaae4,%eax,%eax
  401432:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401436:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40143a:	69 c0 5f 31 00 00    	imul   $0x315f,%eax,%eax
  401440:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401444:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401448:	69 c0 8f 7d 00 00    	imul   $0x7d8f,%eax,%eax
  40144e:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  401452:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  401456:	69 c0 80 81 00 00    	imul   $0x8180,%eax,%eax
  40145c:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  401460:	8b 44 24 f0          	mov    -0x10(%rsp),%eax
  401464:	69 c0 ee 88 00 00    	imul   $0x88ee,%eax,%eax
  40146a:	89 44 24 f0          	mov    %eax,-0x10(%rsp)
  40146e:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401472:	69 c0 7f 28 00 00    	imul   $0x287f,%eax,%eax
  401478:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40147c:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401480:	69 c0 7d a3 00 00    	imul   $0xa37d,%eax,%eax
  401486:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40148a:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  40148e:	69 c0 27 f9 00 00    	imul   $0xf927,%eax,%eax
  401494:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401498:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  40149c:	69 c0 40 0f 00 00    	imul   $0xf40,%eax,%eax
  4014a2:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4014a6:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4014aa:	69 c0 b4 9e 00 00    	imul   $0x9eb4,%eax,%eax
  4014b0:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4014b4:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4014b8:	69 c0 74 e8 00 00    	imul   $0xe874,%eax,%eax
  4014be:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4014c2:	8b 44 24 d8          	mov    -0x28(%rsp),%eax
  4014c6:	69 c0 c1 a9 00 00    	imul   $0xa9c1,%eax,%eax
  4014cc:	89 44 24 d8          	mov    %eax,-0x28(%rsp)
  4014d0:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4014d4:	69 c0 8c 59 00 00    	imul   $0x598c,%eax,%eax
  4014da:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4014de:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4014e2:	69 c0 67 d8 00 00    	imul   $0xd867,%eax,%eax
  4014e8:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4014ec:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4014f0:	69 c0 6a 64 00 00    	imul   $0x646a,%eax,%eax
  4014f6:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4014fa:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4014fe:	69 c0 2e 08 00 00    	imul   $0x82e,%eax,%eax
  401504:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401508:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  40150c:	69 c0 4a 86 00 00    	imul   $0x864a,%eax,%eax
  401512:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401516:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40151a:	69 c0 73 d7 00 00    	imul   $0xd773,%eax,%eax
  401520:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401524:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401528:	69 c0 05 f4 00 00    	imul   $0xf405,%eax,%eax
  40152e:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401532:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401536:	69 c0 dc be 00 00    	imul   $0xbedc,%eax,%eax
  40153c:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  401540:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401544:	69 c0 99 1e 00 00    	imul   $0x1e99,%eax,%eax
  40154a:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40154e:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  401552:	69 c0 42 0d 00 00    	imul   $0xd42,%eax,%eax
  401558:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  40155c:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401560:	69 c0 84 80 00 00    	imul   $0x8084,%eax,%eax
  401566:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40156a:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  40156e:	69 c0 b3 87 00 00    	imul   $0x87b3,%eax,%eax
  401574:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  401578:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40157c:	69 c0 57 b5 00 00    	imul   $0xb557,%eax,%eax
  401582:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401586:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  40158a:	69 c0 46 c5 00 00    	imul   $0xc546,%eax,%eax
  401590:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401594:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401598:	69 c0 b7 7f 00 00    	imul   $0x7fb7,%eax,%eax
  40159e:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4015a2:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4015a6:	69 c0 8f 53 00 00    	imul   $0x538f,%eax,%eax
  4015ac:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4015b0:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4015b4:	69 c0 d7 be 00 00    	imul   $0xbed7,%eax,%eax
  4015ba:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4015be:	8b 44 24 d4          	mov    -0x2c(%rsp),%eax
  4015c2:	69 c0 23 18 00 00    	imul   $0x1823,%eax,%eax
  4015c8:	89 44 24 d4          	mov    %eax,-0x2c(%rsp)
  4015cc:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  4015d0:	69 c0 ab 7b 00 00    	imul   $0x7bab,%eax,%eax
  4015d6:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  4015da:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4015de:	69 c0 90 32 00 00    	imul   $0x3290,%eax,%eax
  4015e4:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4015e8:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  4015ec:	69 c0 de 59 00 00    	imul   $0x59de,%eax,%eax
  4015f2:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  4015f6:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4015fa:	69 c0 cf 05 00 00    	imul   $0x5cf,%eax,%eax
  401600:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401604:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401608:	69 c0 f6 62 00 00    	imul   $0x62f6,%eax,%eax
  40160e:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  401612:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  401616:	69 c0 d7 ca 00 00    	imul   $0xcad7,%eax,%eax
  40161c:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  401620:	8b 44 24 f4          	mov    -0xc(%rsp),%eax
  401624:	69 c0 06 ac 00 00    	imul   $0xac06,%eax,%eax
  40162a:	89 44 24 f4          	mov    %eax,-0xc(%rsp)
  40162e:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401632:	69 c0 a5 43 00 00    	imul   $0x43a5,%eax,%eax
  401638:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40163c:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  401640:	69 c0 82 de 00 00    	imul   $0xde82,%eax,%eax
  401646:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  40164a:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  40164e:	69 c0 4f bc 00 00    	imul   $0xbc4f,%eax,%eax
  401654:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401658:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40165c:	69 c0 c0 f1 00 00    	imul   $0xf1c0,%eax,%eax
  401662:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401666:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  40166a:	69 c0 a5 31 00 00    	imul   $0x31a5,%eax,%eax
  401670:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  401674:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401678:	69 c0 9d f0 00 00    	imul   $0xf09d,%eax,%eax
  40167e:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401682:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  401686:	69 c0 bb 4a 00 00    	imul   $0x4abb,%eax,%eax
  40168c:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  401690:	8b 44 24 dc          	mov    -0x24(%rsp),%eax
  401694:	69 c0 2b b1 00 00    	imul   $0xb12b,%eax,%eax
  40169a:	89 44 24 dc          	mov    %eax,-0x24(%rsp)
  40169e:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4016a2:	69 c0 b6 d2 00 00    	imul   $0xd2b6,%eax,%eax
  4016a8:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4016ac:	8b 44 24 d0          	mov    -0x30(%rsp),%eax
  4016b0:	69 c0 30 83 00 00    	imul   $0x8330,%eax,%eax
  4016b6:	89 44 24 d0          	mov    %eax,-0x30(%rsp)
  4016ba:	8b 44 24 ec          	mov    -0x14(%rsp),%eax
  4016be:	69 c0 cc 2e 00 00    	imul   $0x2ecc,%eax,%eax
  4016c4:	89 44 24 ec          	mov    %eax,-0x14(%rsp)
  4016c8:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4016cc:	69 c0 4a 0f 00 00    	imul   $0xf4a,%eax,%eax
  4016d2:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  4016d6:	8b 44 24 e0          	mov    -0x20(%rsp),%eax
  4016da:	69 c0 f3 2a 00 00    	imul   $0x2af3,%eax,%eax
  4016e0:	89 44 24 e0          	mov    %eax,-0x20(%rsp)
  4016e4:	8b 44 24 e8          	mov    -0x18(%rsp),%eax
  4016e8:	69 c0 47 f9 00 00    	imul   $0xf947,%eax,%eax
  4016ee:	89 44 24 e8          	mov    %eax,-0x18(%rsp)
  4016f2:	8b 44 24 e4          	mov    -0x1c(%rsp),%eax
  4016f6:	69 c0 d0 f3 00 00    	imul   $0xf3d0,%eax,%eax
  4016fc:	89 44 24 e4          	mov    %eax,-0x1c(%rsp)
  401700:	ba 00 00 00 00       	mov    $0x0,%edx
  401705:	b8 00 00 00 00       	mov    $0x0,%eax
  40170a:	eb 0b                	jmp    401717 <scramble+0x494>
  40170c:	89 d1                	mov    %edx,%ecx
  40170e:	8b 4c 8c d0          	mov    -0x30(%rsp,%rcx,4),%ecx
  401712:	01 c8                	add    %ecx,%eax
  401714:	83 c2 01             	add    $0x1,%edx
  401717:	83 fa 09             	cmp    $0x9,%edx
  40171a:	76 f0                	jbe    40170c <scramble+0x489>
  40171c:	f3 c3                	repz retq 

000000000040171e <getbuf>:
  40171e:	48 83 ec 38          	sub    $0x38,%rsp
  401722:	48 89 e7             	mov    %rsp,%rdi
  401725:	e8 50 03 00 00       	callq  401a7a <Gets>
  40172a:	b8 01 00 00 00       	mov    $0x1,%eax
  40172f:	48 83 c4 38          	add    $0x38,%rsp
  401733:	c3                   	retq   

0000000000401734 <touch1>:
  401734:	48 83 ec 08          	sub    $0x8,%rsp
  401738:	c7 05 9a 3d 20 00 01 	movl   $0x1,0x203d9a(%rip)        # 6054dc <vlevel>
  40173f:	00 00 00 
  401742:	bf 29 32 40 00       	mov    $0x403229,%edi
  401747:	e8 e4 f4 ff ff       	callq  400c30 <puts@plt>
  40174c:	bf 01 00 00 00       	mov    $0x1,%edi
  401751:	e8 13 05 00 00       	callq  401c69 <validate>
  401756:	bf 00 00 00 00       	mov    $0x0,%edi
  40175b:	e8 60 f6 ff ff       	callq  400dc0 <exit@plt>

0000000000401760 <touch2>:
  401760:	48 83 ec 08          	sub    $0x8,%rsp
  401764:	89 fe                	mov    %edi,%esi
  401766:	c7 05 6c 3d 20 00 02 	movl   $0x2,0x203d6c(%rip)        # 6054dc <vlevel>
  40176d:	00 00 00 
  401770:	3b 3d 6e 3d 20 00    	cmp    0x203d6e(%rip),%edi        # 6054e4 <cookie>
  401776:	75 1b                	jne    401793 <touch2+0x33>
  401778:	bf 50 32 40 00       	mov    $0x403250,%edi
  40177d:	b8 00 00 00 00       	mov    $0x0,%eax
  401782:	e8 d9 f4 ff ff       	callq  400c60 <printf@plt>
  401787:	bf 02 00 00 00       	mov    $0x2,%edi
  40178c:	e8 d8 04 00 00       	callq  401c69 <validate>
  401791:	eb 19                	jmp    4017ac <touch2+0x4c>
  401793:	bf 78 32 40 00       	mov    $0x403278,%edi
  401798:	b8 00 00 00 00       	mov    $0x0,%eax
  40179d:	e8 be f4 ff ff       	callq  400c60 <printf@plt>
  4017a2:	bf 02 00 00 00       	mov    $0x2,%edi
  4017a7:	e8 6f 05 00 00       	callq  401d1b <fail>
  4017ac:	bf 00 00 00 00       	mov    $0x0,%edi
  4017b1:	e8 0a f6 ff ff       	callq  400dc0 <exit@plt>

00000000004017b6 <hexmatch>:
  4017b6:	41 54                	push   %r12
  4017b8:	55                   	push   %rbp
  4017b9:	53                   	push   %rbx
  4017ba:	48 83 ec 70          	sub    $0x70,%rsp
  4017be:	41 89 fc             	mov    %edi,%r12d
  4017c1:	48 89 f5             	mov    %rsi,%rbp
  4017c4:	e8 57 f5 ff ff       	callq  400d20 <random@plt>
  4017c9:	48 89 c1             	mov    %rax,%rcx
  4017cc:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  4017d3:	0a d7 a3 
  4017d6:	48 f7 ea             	imul   %rdx
  4017d9:	48 8d 04 0a          	lea    (%rdx,%rcx,1),%rax
  4017dd:	48 c1 f8 06          	sar    $0x6,%rax
  4017e1:	48 89 ce             	mov    %rcx,%rsi
  4017e4:	48 c1 fe 3f          	sar    $0x3f,%rsi
  4017e8:	48 29 f0             	sub    %rsi,%rax
  4017eb:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4017ef:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4017f3:	48 c1 e0 02          	shl    $0x2,%rax
  4017f7:	48 29 c1             	sub    %rax,%rcx
  4017fa:	48 8d 1c 0c          	lea    (%rsp,%rcx,1),%rbx
  4017fe:	44 89 e2             	mov    %r12d,%edx
  401801:	be 46 32 40 00       	mov    $0x403246,%esi
  401806:	48 89 df             	mov    %rbx,%rdi
  401809:	b8 00 00 00 00       	mov    $0x0,%eax
  40180e:	e8 9d f5 ff ff       	callq  400db0 <sprintf@plt>
  401813:	ba 09 00 00 00       	mov    $0x9,%edx
  401818:	48 89 de             	mov    %rbx,%rsi
  40181b:	48 89 ef             	mov    %rbp,%rdi
  40181e:	e8 ed f3 ff ff       	callq  400c10 <strncmp@plt>
  401823:	85 c0                	test   %eax,%eax
  401825:	0f 94 c0             	sete   %al
  401828:	0f b6 c0             	movzbl %al,%eax
  40182b:	48 83 c4 70          	add    $0x70,%rsp
  40182f:	5b                   	pop    %rbx
  401830:	5d                   	pop    %rbp
  401831:	41 5c                	pop    %r12
  401833:	c3                   	retq   

0000000000401834 <touch3>:
  401834:	53                   	push   %rbx
  401835:	48 89 fb             	mov    %rdi,%rbx
  401838:	c7 05 9a 3c 20 00 03 	movl   $0x3,0x203c9a(%rip)        # 6054dc <vlevel>
  40183f:	00 00 00 
  401842:	48 89 fe             	mov    %rdi,%rsi
  401845:	8b 3d 99 3c 20 00    	mov    0x203c99(%rip),%edi        # 6054e4 <cookie>
  40184b:	e8 66 ff ff ff       	callq  4017b6 <hexmatch>
  401850:	85 c0                	test   %eax,%eax
  401852:	74 1e                	je     401872 <touch3+0x3e>
  401854:	48 89 de             	mov    %rbx,%rsi
  401857:	bf a0 32 40 00       	mov    $0x4032a0,%edi
  40185c:	b8 00 00 00 00       	mov    $0x0,%eax
  401861:	e8 fa f3 ff ff       	callq  400c60 <printf@plt>
  401866:	bf 03 00 00 00       	mov    $0x3,%edi
  40186b:	e8 f9 03 00 00       	callq  401c69 <validate>
  401870:	eb 1c                	jmp    40188e <touch3+0x5a>
  401872:	48 89 de             	mov    %rbx,%rsi
  401875:	bf c8 32 40 00       	mov    $0x4032c8,%edi
  40187a:	b8 00 00 00 00       	mov    $0x0,%eax
  40187f:	e8 dc f3 ff ff       	callq  400c60 <printf@plt>
  401884:	bf 03 00 00 00       	mov    $0x3,%edi
  401889:	e8 8d 04 00 00       	callq  401d1b <fail>
  40188e:	bf 00 00 00 00       	mov    $0x0,%edi
  401893:	e8 28 f5 ff ff       	callq  400dc0 <exit@plt>

0000000000401898 <test>:
  401898:	48 83 ec 08          	sub    $0x8,%rsp
  40189c:	b8 00 00 00 00       	mov    $0x0,%eax
  4018a1:	e8 78 fe ff ff       	callq  40171e <getbuf>
  4018a6:	89 c6                	mov    %eax,%esi
  4018a8:	bf f0 32 40 00       	mov    $0x4032f0,%edi
  4018ad:	b8 00 00 00 00       	mov    $0x0,%eax
  4018b2:	e8 a9 f3 ff ff       	callq  400c60 <printf@plt>
  4018b7:	48 83 c4 08          	add    $0x8,%rsp
  4018bb:	c3                   	retq   

00000000004018bc <start_farm>:
  4018bc:	b8 01 00 00 00       	mov    $0x1,%eax
  4018c1:	c3                   	retq   

00000000004018c2 <getval_363>:
  4018c2:	b8 48 89 c7 c7       	mov    $0xc7c78948,%eax
  4018c7:	c3                   	retq   

00000000004018c8 <getval_290>:
  4018c8:	b8 c8 58 90 c3       	mov    $0xc39058c8,%eax
  4018cd:	c3                   	retq   

00000000004018ce <setval_492>:
  4018ce:	c7 07 1e 48 a9 c7    	movl   $0xc7a9481e,(%rdi)
  4018d4:	c3                   	retq   

00000000004018d5 <setval_487>:
  4018d5:	c7 07 24 d8 90 90    	movl   $0x9090d824,(%rdi)
  4018db:	c3                   	retq   

00000000004018dc <addval_355>:
  4018dc:	8d 87 58 94 90 90    	lea    -0x6f6f6ba8(%rdi),%eax
  4018e2:	c3                   	retq   

00000000004018e3 <addval_306>:
  4018e3:	8d 87 58 90 90 c3    	lea    -0x3c6f6fa8(%rdi),%eax
  4018e9:	c3                   	retq   

00000000004018ea <addval_445>:
  4018ea:	8d 87 48 89 c7 c3    	lea    -0x3c3876b8(%rdi),%eax
  4018f0:	c3                   	retq   

00000000004018f1 <getval_226>:
  4018f1:	b8 48 89 c7 c3       	mov    $0xc3c78948,%eax
  4018f6:	c3                   	retq   

00000000004018f7 <mid_farm>:
  4018f7:	b8 01 00 00 00       	mov    $0x1,%eax
  4018fc:	c3                   	retq   

00000000004018fd <add_xy>:
  4018fd:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401901:	c3                   	retq   

0000000000401902 <addval_342>:
  401902:	8d 87 48 89 e0 91    	lea    -0x6e1f76b8(%rdi),%eax
  401908:	c3                   	retq   

0000000000401909 <addval_413>:
  401909:	8d 87 c8 89 e0 c3    	lea    -0x3c1f7638(%rdi),%eax
  40190f:	c3                   	retq   

0000000000401910 <addval_449>:
  401910:	8d 87 89 c1 92 90    	lea    -0x6f6d3e77(%rdi),%eax
  401916:	c3                   	retq   

0000000000401917 <setval_229>:
  401917:	c7 07 c8 c9 ca c3    	movl   $0xc3cac9c8,(%rdi)
  40191d:	c3                   	retq   

000000000040191e <getval_224>:
  40191e:	b8 81 d6 84 c0       	mov    $0xc084d681,%eax
  401923:	c3                   	retq   

0000000000401924 <getval_307>:
  401924:	b8 8a 48 89 e0       	mov    $0xe089488a,%eax
  401929:	c3                   	retq   

000000000040192a <setval_427>:
  40192a:	c7 07 89 ca 28 d2    	movl   $0xd228ca89,(%rdi)
  401930:	c3                   	retq   

0000000000401931 <setval_314>:
  401931:	c7 07 89 d6 18 c9    	movl   $0xc918d689,(%rdi)
  401937:	c3                   	retq   

0000000000401938 <addval_356>:
  401938:	8d 87 89 ca 30 c9    	lea    -0x36cf3577(%rdi),%eax
  40193e:	c3                   	retq   

000000000040193f <addval_158>:
  40193f:	8d 87 99 ca 38 d2    	lea    -0x2dc73567(%rdi),%eax
  401945:	c3                   	retq   

0000000000401946 <getval_402>:
  401946:	b8 09 d6 84 d2       	mov    $0xd284d609,%eax
  40194b:	c3                   	retq   

000000000040194c <setval_225>:
  40194c:	c7 07 89 c1 38 c0    	movl   $0xc038c189,(%rdi)
  401952:	c3                   	retq   

0000000000401953 <getval_497>:
  401953:	b8 89 d6 30 c9       	mov    $0xc930d689,%eax
  401958:	c3                   	retq   

0000000000401959 <addval_375>:
  401959:	8d 87 89 c1 c1 fb    	lea    -0x43e3e77(%rdi),%eax
  40195f:	c3                   	retq   

0000000000401960 <setval_168>:
  401960:	c7 07 68 89 e0 c3    	movl   $0xc3e08968,(%rdi)
  401966:	c3                   	retq   

0000000000401967 <setval_333>:
  401967:	c7 07 89 d6 90 c3    	movl   $0xc390d689,(%rdi)
  40196d:	c3                   	retq   

000000000040196e <setval_404>:
  40196e:	c7 07 c9 ca c3 3f    	movl   $0x3fc3cac9,(%rdi)
  401974:	c3                   	retq   

0000000000401975 <addval_496>:
  401975:	8d 87 89 c1 08 c9    	lea    -0x36f73e77(%rdi),%eax
  40197b:	c3                   	retq   

000000000040197c <getval_146>:
  40197c:	b8 48 89 e0 91       	mov    $0x91e08948,%eax
  401981:	c3                   	retq   

0000000000401982 <getval_222>:
  401982:	b8 08 89 e0 c3       	mov    $0xc3e08908,%eax
  401987:	c3                   	retq   

0000000000401988 <setval_389>:
  401988:	c7 07 48 8d e0 90    	movl   $0x90e08d48,(%rdi)
  40198e:	c3                   	retq   

000000000040198f <setval_197>:
  40198f:	c7 07 48 89 e0 90    	movl   $0x90e08948,(%rdi)
  401995:	c3                   	retq   

0000000000401996 <getval_477>:
  401996:	b8 89 ca 90 c3       	mov    $0xc390ca89,%eax
  40199b:	c3                   	retq   

000000000040199c <addval_145>:
  40199c:	8d 87 89 c1 92 90    	lea    -0x6f6d3e77(%rdi),%eax
  4019a2:	c3                   	retq   

00000000004019a3 <addval_396>:
  4019a3:	8d 87 89 d6 c7 bd    	lea    -0x42382977(%rdi),%eax
  4019a9:	c3                   	retq   

00000000004019aa <setval_248>:
  4019aa:	c7 07 bb 89 ca 91    	movl   $0x91ca89bb,(%rdi)
  4019b0:	c3                   	retq   

00000000004019b1 <addval_460>:
  4019b1:	8d 87 89 c1 00 c9    	lea    -0x36ff3e77(%rdi),%eax
  4019b7:	c3                   	retq   

00000000004019b8 <getval_199>:
  4019b8:	b8 8f 0c 89 d6       	mov    $0xd6890c8f,%eax
  4019bd:	c3                   	retq   

00000000004019be <addval_236>:
  4019be:	8d 87 89 d6 48 c9    	lea    -0x36b72977(%rdi),%eax
  4019c4:	c3                   	retq   

00000000004019c5 <getval_269>:
  4019c5:	b8 a5 8d c1 c3       	mov    $0xc3c18da5,%eax
  4019ca:	c3                   	retq   

00000000004019cb <getval_463>:
  4019cb:	b8 8d c1 90 90       	mov    $0x9090c18d,%eax
  4019d0:	c3                   	retq   

00000000004019d1 <addval_186>:
  4019d1:	8d 87 a7 72 89 ca    	lea    -0x35768d59(%rdi),%eax
  4019d7:	c3                   	retq   

00000000004019d8 <end_farm>:
  4019d8:	b8 01 00 00 00       	mov    $0x1,%eax
  4019dd:	c3                   	retq   
  4019de:	66 90                	xchg   %ax,%ax

00000000004019e0 <save_char>:
  4019e0:	8b 05 1e 47 20 00    	mov    0x20471e(%rip),%eax        # 606104 <gets_cnt>
  4019e6:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  4019eb:	7f 49                	jg     401a36 <save_char+0x56>
  4019ed:	8d 14 40             	lea    (%rax,%rax,2),%edx
  4019f0:	89 f9                	mov    %edi,%ecx
  4019f2:	c0 e9 04             	shr    $0x4,%cl
  4019f5:	83 e1 0f             	and    $0xf,%ecx
  4019f8:	0f b6 b1 10 36 40 00 	movzbl 0x403610(%rcx),%esi
  4019ff:	48 63 ca             	movslq %edx,%rcx
  401a02:	40 88 b1 00 55 60 00 	mov    %sil,0x605500(%rcx)
  401a09:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401a0c:	83 e7 0f             	and    $0xf,%edi
  401a0f:	0f b6 b7 10 36 40 00 	movzbl 0x403610(%rdi),%esi
  401a16:	48 63 c9             	movslq %ecx,%rcx
  401a19:	40 88 b1 00 55 60 00 	mov    %sil,0x605500(%rcx)
  401a20:	83 c2 02             	add    $0x2,%edx
  401a23:	48 63 d2             	movslq %edx,%rdx
  401a26:	c6 82 00 55 60 00 20 	movb   $0x20,0x605500(%rdx)
  401a2d:	83 c0 01             	add    $0x1,%eax
  401a30:	89 05 ce 46 20 00    	mov    %eax,0x2046ce(%rip)        # 606104 <gets_cnt>
  401a36:	f3 c3                	repz retq 

0000000000401a38 <save_term>:
  401a38:	8b 05 c6 46 20 00    	mov    0x2046c6(%rip),%eax        # 606104 <gets_cnt>
  401a3e:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401a41:	48 98                	cltq   
  401a43:	c6 80 00 55 60 00 00 	movb   $0x0,0x605500(%rax)
  401a4a:	c3                   	retq   

0000000000401a4b <check_fail>:
  401a4b:	48 83 ec 08          	sub    $0x8,%rsp
  401a4f:	0f be 35 b2 46 20 00 	movsbl 0x2046b2(%rip),%esi        # 606108 <target_prefix>
  401a56:	b9 00 55 60 00       	mov    $0x605500,%ecx
  401a5b:	8b 15 77 3a 20 00    	mov    0x203a77(%rip),%edx        # 6054d8 <check_level>
  401a61:	bf 13 33 40 00       	mov    $0x403313,%edi
  401a66:	b8 00 00 00 00       	mov    $0x0,%eax
  401a6b:	e8 f0 f1 ff ff       	callq  400c60 <printf@plt>
  401a70:	bf 01 00 00 00       	mov    $0x1,%edi
  401a75:	e8 46 f3 ff ff       	callq  400dc0 <exit@plt>

0000000000401a7a <Gets>:
  401a7a:	41 54                	push   %r12
  401a7c:	55                   	push   %rbp
  401a7d:	53                   	push   %rbx
  401a7e:	49 89 fc             	mov    %rdi,%r12
  401a81:	c7 05 79 46 20 00 00 	movl   $0x0,0x204679(%rip)        # 606104 <gets_cnt>
  401a88:	00 00 00 
  401a8b:	48 89 fb             	mov    %rdi,%rbx
  401a8e:	eb 11                	jmp    401aa1 <Gets+0x27>
  401a90:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401a94:	88 03                	mov    %al,(%rbx)
  401a96:	0f b6 f8             	movzbl %al,%edi
  401a99:	e8 42 ff ff ff       	callq  4019e0 <save_char>
  401a9e:	48 89 eb             	mov    %rbp,%rbx
  401aa1:	48 8b 3d 28 3a 20 00 	mov    0x203a28(%rip),%rdi        # 6054d0 <infile>
  401aa8:	e8 83 f2 ff ff       	callq  400d30 <_IO_getc@plt>
  401aad:	83 f8 ff             	cmp    $0xffffffff,%eax
  401ab0:	74 05                	je     401ab7 <Gets+0x3d>
  401ab2:	83 f8 0a             	cmp    $0xa,%eax
  401ab5:	75 d9                	jne    401a90 <Gets+0x16>
  401ab7:	c6 03 00             	movb   $0x0,(%rbx)
  401aba:	b8 00 00 00 00       	mov    $0x0,%eax
  401abf:	e8 74 ff ff ff       	callq  401a38 <save_term>
  401ac4:	4c 89 e0             	mov    %r12,%rax
  401ac7:	5b                   	pop    %rbx
  401ac8:	5d                   	pop    %rbp
  401ac9:	41 5c                	pop    %r12
  401acb:	c3                   	retq   

0000000000401acc <notify_server>:
  401acc:	83 3d 15 3a 20 00 00 	cmpl   $0x0,0x203a15(%rip)        # 6054e8 <is_checker>
  401ad3:	0f 85 8e 01 00 00    	jne    401c67 <notify_server+0x19b>
  401ad9:	53                   	push   %rbx
  401ada:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
  401ae1:	89 fb                	mov    %edi,%ebx
  401ae3:	8b 05 1b 46 20 00    	mov    0x20461b(%rip),%eax        # 606104 <gets_cnt>
  401ae9:	83 c0 64             	add    $0x64,%eax
  401aec:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401af1:	7e 19                	jle    401b0c <notify_server+0x40>
  401af3:	bf 48 34 40 00       	mov    $0x403448,%edi
  401af8:	b8 00 00 00 00       	mov    $0x0,%eax
  401afd:	e8 5e f1 ff ff       	callq  400c60 <printf@plt>
  401b02:	bf 01 00 00 00       	mov    $0x1,%edi
  401b07:	e8 b4 f2 ff ff       	callq  400dc0 <exit@plt>
  401b0c:	44 0f be 0d f4 45 20 	movsbl 0x2045f4(%rip),%r9d        # 606108 <target_prefix>
  401b13:	00 
  401b14:	83 3d 6d 39 20 00 00 	cmpl   $0x0,0x20396d(%rip)        # 605488 <notify>
  401b1b:	74 09                	je     401b26 <notify_server+0x5a>
  401b1d:	44 8b 05 bc 39 20 00 	mov    0x2039bc(%rip),%r8d        # 6054e0 <authkey>
  401b24:	eb 06                	jmp    401b2c <notify_server+0x60>
  401b26:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  401b2c:	85 db                	test   %ebx,%ebx
  401b2e:	74 07                	je     401b37 <notify_server+0x6b>
  401b30:	b9 29 33 40 00       	mov    $0x403329,%ecx
  401b35:	eb 05                	jmp    401b3c <notify_server+0x70>
  401b37:	b9 2e 33 40 00       	mov    $0x40332e,%ecx
  401b3c:	48 c7 44 24 08 00 55 	movq   $0x605500,0x8(%rsp)
  401b43:	60 00 
  401b45:	89 34 24             	mov    %esi,(%rsp)
  401b48:	8b 15 fa 35 20 00    	mov    0x2035fa(%rip),%edx        # 605148 <target_id>
  401b4e:	be 33 33 40 00       	mov    $0x403333,%esi
  401b53:	48 8d bc 24 10 20 00 	lea    0x2010(%rsp),%rdi
  401b5a:	00 
  401b5b:	b8 00 00 00 00       	mov    $0x0,%eax
  401b60:	e8 4b f2 ff ff       	callq  400db0 <sprintf@plt>
  401b65:	83 3d 1c 39 20 00 00 	cmpl   $0x0,0x20391c(%rip)        # 605488 <notify>
  401b6c:	74 78                	je     401be6 <notify_server+0x11a>
  401b6e:	85 db                	test   %ebx,%ebx
  401b70:	74 68                	je     401bda <notify_server+0x10e>
  401b72:	4c 8d 4c 24 10       	lea    0x10(%rsp),%r9
  401b77:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401b7d:	48 8d 8c 24 10 20 00 	lea    0x2010(%rsp),%rcx
  401b84:	00 
  401b85:	48 8b 15 c4 35 20 00 	mov    0x2035c4(%rip),%rdx        # 605150 <lab>
  401b8c:	48 8b 35 c5 35 20 00 	mov    0x2035c5(%rip),%rsi        # 605158 <course>
  401b93:	48 8b 3d a6 35 20 00 	mov    0x2035a6(%rip),%rdi        # 605140 <user_id>
  401b9a:	e8 94 0f 00 00       	callq  402b33 <driver_post>
  401b9f:	85 c0                	test   %eax,%eax
  401ba1:	79 1e                	jns    401bc1 <notify_server+0xf5>
  401ba3:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  401ba8:	bf 4f 33 40 00       	mov    $0x40334f,%edi
  401bad:	b8 00 00 00 00       	mov    $0x0,%eax
  401bb2:	e8 a9 f0 ff ff       	callq  400c60 <printf@plt>
  401bb7:	bf 01 00 00 00       	mov    $0x1,%edi
  401bbc:	e8 ff f1 ff ff       	callq  400dc0 <exit@plt>
  401bc1:	bf 78 34 40 00       	mov    $0x403478,%edi
  401bc6:	e8 65 f0 ff ff       	callq  400c30 <puts@plt>
  401bcb:	bf 5b 33 40 00       	mov    $0x40335b,%edi
  401bd0:	e8 5b f0 ff ff       	callq  400c30 <puts@plt>
  401bd5:	e9 85 00 00 00       	jmpq   401c5f <notify_server+0x193>
  401bda:	bf 65 33 40 00       	mov    $0x403365,%edi
  401bdf:	e8 4c f0 ff ff       	callq  400c30 <puts@plt>
  401be4:	eb 79                	jmp    401c5f <notify_server+0x193>
  401be6:	85 db                	test   %ebx,%ebx
  401be8:	74 08                	je     401bf2 <notify_server+0x126>
  401bea:	be 29 33 40 00       	mov    $0x403329,%esi
  401bef:	90                   	nop
  401bf0:	eb 05                	jmp    401bf7 <notify_server+0x12b>
  401bf2:	be 2e 33 40 00       	mov    $0x40332e,%esi
  401bf7:	bf b0 34 40 00       	mov    $0x4034b0,%edi
  401bfc:	b8 00 00 00 00       	mov    $0x0,%eax
  401c01:	e8 5a f0 ff ff       	callq  400c60 <printf@plt>
  401c06:	48 8b 35 33 35 20 00 	mov    0x203533(%rip),%rsi        # 605140 <user_id>
  401c0d:	bf 6c 33 40 00       	mov    $0x40336c,%edi
  401c12:	b8 00 00 00 00       	mov    $0x0,%eax
  401c17:	e8 44 f0 ff ff       	callq  400c60 <printf@plt>
  401c1c:	48 8b 35 35 35 20 00 	mov    0x203535(%rip),%rsi        # 605158 <course>
  401c23:	bf 79 33 40 00       	mov    $0x403379,%edi
  401c28:	b8 00 00 00 00       	mov    $0x0,%eax
  401c2d:	e8 2e f0 ff ff       	callq  400c60 <printf@plt>
  401c32:	48 8b 35 17 35 20 00 	mov    0x203517(%rip),%rsi        # 605150 <lab>
  401c39:	bf 85 33 40 00       	mov    $0x403385,%edi
  401c3e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c43:	e8 18 f0 ff ff       	callq  400c60 <printf@plt>
  401c48:	48 8d b4 24 10 20 00 	lea    0x2010(%rsp),%rsi
  401c4f:	00 
  401c50:	bf 8e 33 40 00       	mov    $0x40338e,%edi
  401c55:	b8 00 00 00 00       	mov    $0x0,%eax
  401c5a:	e8 01 f0 ff ff       	callq  400c60 <printf@plt>
  401c5f:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
  401c66:	5b                   	pop    %rbx
  401c67:	f3 c3                	repz retq 

0000000000401c69 <validate>:
  401c69:	53                   	push   %rbx
  401c6a:	89 fb                	mov    %edi,%ebx
  401c6c:	83 3d 75 38 20 00 00 	cmpl   $0x0,0x203875(%rip)        # 6054e8 <is_checker>
  401c73:	74 60                	je     401cd5 <validate+0x6c>
  401c75:	39 3d 61 38 20 00    	cmp    %edi,0x203861(%rip)        # 6054dc <vlevel>
  401c7b:	74 14                	je     401c91 <validate+0x28>
  401c7d:	bf 9a 33 40 00       	mov    $0x40339a,%edi
  401c82:	e8 a9 ef ff ff       	callq  400c30 <puts@plt>
  401c87:	b8 00 00 00 00       	mov    $0x0,%eax
  401c8c:	e8 ba fd ff ff       	callq  401a4b <check_fail>
  401c91:	8b 35 41 38 20 00    	mov    0x203841(%rip),%esi        # 6054d8 <check_level>
  401c97:	39 fe                	cmp    %edi,%esi
  401c99:	74 1b                	je     401cb6 <validate+0x4d>
  401c9b:	89 fa                	mov    %edi,%edx
  401c9d:	bf d8 34 40 00       	mov    $0x4034d8,%edi
  401ca2:	b8 00 00 00 00       	mov    $0x0,%eax
  401ca7:	e8 b4 ef ff ff       	callq  400c60 <printf@plt>
  401cac:	b8 00 00 00 00       	mov    $0x0,%eax
  401cb1:	e8 95 fd ff ff       	callq  401a4b <check_fail>
  401cb6:	0f be 35 4b 44 20 00 	movsbl 0x20444b(%rip),%esi        # 606108 <target_prefix>
  401cbd:	b9 00 55 60 00       	mov    $0x605500,%ecx
  401cc2:	89 fa                	mov    %edi,%edx
  401cc4:	bf b8 33 40 00       	mov    $0x4033b8,%edi
  401cc9:	b8 00 00 00 00       	mov    $0x0,%eax
  401cce:	e8 8d ef ff ff       	callq  400c60 <printf@plt>
  401cd3:	eb 44                	jmp    401d19 <validate+0xb0>
  401cd5:	39 3d 01 38 20 00    	cmp    %edi,0x203801(%rip)        # 6054dc <vlevel>
  401cdb:	74 18                	je     401cf5 <validate+0x8c>
  401cdd:	bf 9a 33 40 00       	mov    $0x40339a,%edi
  401ce2:	e8 49 ef ff ff       	callq  400c30 <puts@plt>
  401ce7:	89 de                	mov    %ebx,%esi
  401ce9:	bf 00 00 00 00       	mov    $0x0,%edi
  401cee:	e8 d9 fd ff ff       	callq  401acc <notify_server>
  401cf3:	eb 24                	jmp    401d19 <validate+0xb0>
  401cf5:	0f be 15 0c 44 20 00 	movsbl 0x20440c(%rip),%edx        # 606108 <target_prefix>
  401cfc:	89 fe                	mov    %edi,%esi
  401cfe:	bf 00 35 40 00       	mov    $0x403500,%edi
  401d03:	b8 00 00 00 00       	mov    $0x0,%eax
  401d08:	e8 53 ef ff ff       	callq  400c60 <printf@plt>
  401d0d:	89 de                	mov    %ebx,%esi
  401d0f:	bf 01 00 00 00       	mov    $0x1,%edi
  401d14:	e8 b3 fd ff ff       	callq  401acc <notify_server>
  401d19:	5b                   	pop    %rbx
  401d1a:	c3                   	retq   

0000000000401d1b <fail>:
  401d1b:	48 83 ec 08          	sub    $0x8,%rsp
  401d1f:	83 3d c2 37 20 00 00 	cmpl   $0x0,0x2037c2(%rip)        # 6054e8 <is_checker>
  401d26:	74 0a                	je     401d32 <fail+0x17>
  401d28:	b8 00 00 00 00       	mov    $0x0,%eax
  401d2d:	e8 19 fd ff ff       	callq  401a4b <check_fail>
  401d32:	89 fe                	mov    %edi,%esi
  401d34:	bf 00 00 00 00       	mov    $0x0,%edi
  401d39:	e8 8e fd ff ff       	callq  401acc <notify_server>
  401d3e:	48 83 c4 08          	add    $0x8,%rsp
  401d42:	c3                   	retq   

0000000000401d43 <bushandler>:
  401d43:	48 83 ec 08          	sub    $0x8,%rsp
  401d47:	83 3d 9a 37 20 00 00 	cmpl   $0x0,0x20379a(%rip)        # 6054e8 <is_checker>
  401d4e:	74 14                	je     401d64 <bushandler+0x21>
  401d50:	bf cd 33 40 00       	mov    $0x4033cd,%edi
  401d55:	e8 d6 ee ff ff       	callq  400c30 <puts@plt>
  401d5a:	b8 00 00 00 00       	mov    $0x0,%eax
  401d5f:	e8 e7 fc ff ff       	callq  401a4b <check_fail>
  401d64:	bf 38 35 40 00       	mov    $0x403538,%edi
  401d69:	e8 c2 ee ff ff       	callq  400c30 <puts@plt>
  401d6e:	bf d7 33 40 00       	mov    $0x4033d7,%edi
  401d73:	e8 b8 ee ff ff       	callq  400c30 <puts@plt>
  401d78:	be 00 00 00 00       	mov    $0x0,%esi
  401d7d:	bf 00 00 00 00       	mov    $0x0,%edi
  401d82:	e8 45 fd ff ff       	callq  401acc <notify_server>
  401d87:	bf 01 00 00 00       	mov    $0x1,%edi
  401d8c:	e8 2f f0 ff ff       	callq  400dc0 <exit@plt>

0000000000401d91 <seghandler>:
  401d91:	48 83 ec 08          	sub    $0x8,%rsp
  401d95:	83 3d 4c 37 20 00 00 	cmpl   $0x0,0x20374c(%rip)        # 6054e8 <is_checker>
  401d9c:	74 14                	je     401db2 <seghandler+0x21>
  401d9e:	bf ed 33 40 00       	mov    $0x4033ed,%edi
  401da3:	e8 88 ee ff ff       	callq  400c30 <puts@plt>
  401da8:	b8 00 00 00 00       	mov    $0x0,%eax
  401dad:	e8 99 fc ff ff       	callq  401a4b <check_fail>
  401db2:	bf 58 35 40 00       	mov    $0x403558,%edi
  401db7:	e8 74 ee ff ff       	callq  400c30 <puts@plt>
  401dbc:	bf d7 33 40 00       	mov    $0x4033d7,%edi
  401dc1:	e8 6a ee ff ff       	callq  400c30 <puts@plt>
  401dc6:	be 00 00 00 00       	mov    $0x0,%esi
  401dcb:	bf 00 00 00 00       	mov    $0x0,%edi
  401dd0:	e8 f7 fc ff ff       	callq  401acc <notify_server>
  401dd5:	bf 01 00 00 00       	mov    $0x1,%edi
  401dda:	e8 e1 ef ff ff       	callq  400dc0 <exit@plt>

0000000000401ddf <illegalhandler>:
  401ddf:	48 83 ec 08          	sub    $0x8,%rsp
  401de3:	83 3d fe 36 20 00 00 	cmpl   $0x0,0x2036fe(%rip)        # 6054e8 <is_checker>
  401dea:	74 14                	je     401e00 <illegalhandler+0x21>
  401dec:	bf 00 34 40 00       	mov    $0x403400,%edi
  401df1:	e8 3a ee ff ff       	callq  400c30 <puts@plt>
  401df6:	b8 00 00 00 00       	mov    $0x0,%eax
  401dfb:	e8 4b fc ff ff       	callq  401a4b <check_fail>
  401e00:	bf 80 35 40 00       	mov    $0x403580,%edi
  401e05:	e8 26 ee ff ff       	callq  400c30 <puts@plt>
  401e0a:	bf d7 33 40 00       	mov    $0x4033d7,%edi
  401e0f:	e8 1c ee ff ff       	callq  400c30 <puts@plt>
  401e14:	be 00 00 00 00       	mov    $0x0,%esi
  401e19:	bf 00 00 00 00       	mov    $0x0,%edi
  401e1e:	e8 a9 fc ff ff       	callq  401acc <notify_server>
  401e23:	bf 01 00 00 00       	mov    $0x1,%edi
  401e28:	e8 93 ef ff ff       	callq  400dc0 <exit@plt>

0000000000401e2d <sigalrmhandler>:
  401e2d:	48 83 ec 08          	sub    $0x8,%rsp
  401e31:	83 3d b0 36 20 00 00 	cmpl   $0x0,0x2036b0(%rip)        # 6054e8 <is_checker>
  401e38:	74 14                	je     401e4e <sigalrmhandler+0x21>
  401e3a:	bf 14 34 40 00       	mov    $0x403414,%edi
  401e3f:	e8 ec ed ff ff       	callq  400c30 <puts@plt>
  401e44:	b8 00 00 00 00       	mov    $0x0,%eax
  401e49:	e8 fd fb ff ff       	callq  401a4b <check_fail>
  401e4e:	be 05 00 00 00       	mov    $0x5,%esi
  401e53:	bf b0 35 40 00       	mov    $0x4035b0,%edi
  401e58:	b8 00 00 00 00       	mov    $0x0,%eax
  401e5d:	e8 fe ed ff ff       	callq  400c60 <printf@plt>
  401e62:	be 00 00 00 00       	mov    $0x0,%esi
  401e67:	bf 00 00 00 00       	mov    $0x0,%edi
  401e6c:	e8 5b fc ff ff       	callq  401acc <notify_server>
  401e71:	bf 01 00 00 00       	mov    $0x1,%edi
  401e76:	e8 45 ef ff ff       	callq  400dc0 <exit@plt>

0000000000401e7b <launch>:
  401e7b:	55                   	push   %rbp
  401e7c:	48 89 e5             	mov    %rsp,%rbp
  401e7f:	48 89 fa             	mov    %rdi,%rdx
  401e82:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  401e86:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401e8a:	48 29 c4             	sub    %rax,%rsp
  401e8d:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401e92:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401e96:	be f4 00 00 00       	mov    $0xf4,%esi
  401e9b:	e8 d0 ed ff ff       	callq  400c70 <memset@plt>
  401ea0:	48 8b 05 f9 35 20 00 	mov    0x2035f9(%rip),%rax        # 6054a0 <stdin@@GLIBC_2.2.5>
  401ea7:	48 39 05 22 36 20 00 	cmp    %rax,0x203622(%rip)        # 6054d0 <infile>
  401eae:	75 0f                	jne    401ebf <launch+0x44>
  401eb0:	bf 1c 34 40 00       	mov    $0x40341c,%edi
  401eb5:	b8 00 00 00 00       	mov    $0x0,%eax
  401eba:	e8 a1 ed ff ff       	callq  400c60 <printf@plt>
  401ebf:	c7 05 13 36 20 00 00 	movl   $0x0,0x203613(%rip)        # 6054dc <vlevel>
  401ec6:	00 00 00 
  401ec9:	b8 00 00 00 00       	mov    $0x0,%eax
  401ece:	e8 c5 f9 ff ff       	callq  401898 <test>
  401ed3:	83 3d 0e 36 20 00 00 	cmpl   $0x0,0x20360e(%rip)        # 6054e8 <is_checker>
  401eda:	74 14                	je     401ef0 <launch+0x75>
  401edc:	bf 29 34 40 00       	mov    $0x403429,%edi
  401ee1:	e8 4a ed ff ff       	callq  400c30 <puts@plt>
  401ee6:	b8 00 00 00 00       	mov    $0x0,%eax
  401eeb:	e8 5b fb ff ff       	callq  401a4b <check_fail>
  401ef0:	bf 34 34 40 00       	mov    $0x403434,%edi
  401ef5:	e8 36 ed ff ff       	callq  400c30 <puts@plt>
  401efa:	c9                   	leaveq 
  401efb:	c3                   	retq   

0000000000401efc <stable_launch>:
  401efc:	53                   	push   %rbx
  401efd:	48 89 3d c4 35 20 00 	mov    %rdi,0x2035c4(%rip)        # 6054c8 <global_offset>
  401f04:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  401f0a:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401f10:	b9 32 01 00 00       	mov    $0x132,%ecx
  401f15:	ba 07 00 00 00       	mov    $0x7,%edx
  401f1a:	be 00 00 10 00       	mov    $0x100000,%esi
  401f1f:	bf 00 60 58 55       	mov    $0x55586000,%edi
  401f24:	e8 27 ed ff ff       	callq  400c50 <mmap@plt>
  401f29:	48 89 c3             	mov    %rax,%rbx
  401f2c:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  401f32:	74 32                	je     401f66 <stable_launch+0x6a>
  401f34:	be 00 00 10 00       	mov    $0x100000,%esi
  401f39:	48 89 c7             	mov    %rax,%rdi
  401f3c:	e8 0f ee ff ff       	callq  400d50 <munmap@plt>
  401f41:	ba 00 60 58 55       	mov    $0x55586000,%edx
  401f46:	be e8 35 40 00       	mov    $0x4035e8,%esi
  401f4b:	48 8b 3d 5e 35 20 00 	mov    0x20355e(%rip),%rdi        # 6054b0 <stderr@@GLIBC_2.2.5>
  401f52:	b8 00 00 00 00       	mov    $0x0,%eax
  401f57:	e8 84 ed ff ff       	callq  400ce0 <fprintf@plt>
  401f5c:	bf 01 00 00 00       	mov    $0x1,%edi
  401f61:	e8 5a ee ff ff       	callq  400dc0 <exit@plt>
  401f66:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  401f6d:	48 89 15 9c 41 20 00 	mov    %rdx,0x20419c(%rip)        # 606110 <stack_top>
  401f74:	48 89 e0             	mov    %rsp,%rax
  401f77:	48 89 d4             	mov    %rdx,%rsp
  401f7a:	48 89 c2             	mov    %rax,%rdx
  401f7d:	48 89 15 3c 35 20 00 	mov    %rdx,0x20353c(%rip)        # 6054c0 <global_save_stack>
  401f84:	48 8b 3d 3d 35 20 00 	mov    0x20353d(%rip),%rdi        # 6054c8 <global_offset>
  401f8b:	e8 eb fe ff ff       	callq  401e7b <launch>
  401f90:	48 8b 05 29 35 20 00 	mov    0x203529(%rip),%rax        # 6054c0 <global_save_stack>
  401f97:	48 89 c4             	mov    %rax,%rsp
  401f9a:	be 00 00 10 00       	mov    $0x100000,%esi
  401f9f:	48 89 df             	mov    %rbx,%rdi
  401fa2:	e8 a9 ed ff ff       	callq  400d50 <munmap@plt>
  401fa7:	5b                   	pop    %rbx
  401fa8:	c3                   	retq   
  401fa9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401fb0 <rio_readinitb>:
  401fb0:	89 37                	mov    %esi,(%rdi)
  401fb2:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  401fb9:	48 8d 47 10          	lea    0x10(%rdi),%rax
  401fbd:	48 89 47 08          	mov    %rax,0x8(%rdi)
  401fc1:	c3                   	retq   

0000000000401fc2 <sigalrm_handler>:
  401fc2:	48 83 ec 08          	sub    $0x8,%rsp
  401fc6:	ba 00 00 00 00       	mov    $0x0,%edx
  401fcb:	be 20 36 40 00       	mov    $0x403620,%esi
  401fd0:	48 8b 3d d9 34 20 00 	mov    0x2034d9(%rip),%rdi        # 6054b0 <stderr@@GLIBC_2.2.5>
  401fd7:	b8 00 00 00 00       	mov    $0x0,%eax
  401fdc:	e8 ff ec ff ff       	callq  400ce0 <fprintf@plt>
  401fe1:	bf 01 00 00 00       	mov    $0x1,%edi
  401fe6:	e8 d5 ed ff ff       	callq  400dc0 <exit@plt>

0000000000401feb <urlencode>:
  401feb:	41 54                	push   %r12
  401fed:	55                   	push   %rbp
  401fee:	53                   	push   %rbx
  401fef:	48 83 ec 10          	sub    $0x10,%rsp
  401ff3:	48 89 fb             	mov    %rdi,%rbx
  401ff6:	48 89 f5             	mov    %rsi,%rbp
  401ff9:	b8 00 00 00 00       	mov    $0x0,%eax
  401ffe:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402005:	f2 ae                	repnz scas %es:(%rdi),%al
  402007:	48 f7 d1             	not    %rcx
  40200a:	8d 41 ff             	lea    -0x1(%rcx),%eax
  40200d:	e9 93 00 00 00       	jmpq   4020a5 <urlencode+0xba>
  402012:	0f b6 13             	movzbl (%rbx),%edx
  402015:	80 fa 2a             	cmp    $0x2a,%dl
  402018:	0f 94 c1             	sete   %cl
  40201b:	80 fa 2d             	cmp    $0x2d,%dl
  40201e:	0f 94 c0             	sete   %al
  402021:	08 c1                	or     %al,%cl
  402023:	75 1f                	jne    402044 <urlencode+0x59>
  402025:	80 fa 2e             	cmp    $0x2e,%dl
  402028:	74 1a                	je     402044 <urlencode+0x59>
  40202a:	80 fa 5f             	cmp    $0x5f,%dl
  40202d:	74 15                	je     402044 <urlencode+0x59>
  40202f:	8d 42 d0             	lea    -0x30(%rdx),%eax
  402032:	3c 09                	cmp    $0x9,%al
  402034:	76 0e                	jbe    402044 <urlencode+0x59>
  402036:	8d 42 bf             	lea    -0x41(%rdx),%eax
  402039:	3c 19                	cmp    $0x19,%al
  40203b:	76 07                	jbe    402044 <urlencode+0x59>
  40203d:	8d 42 9f             	lea    -0x61(%rdx),%eax
  402040:	3c 19                	cmp    $0x19,%al
  402042:	77 09                	ja     40204d <urlencode+0x62>
  402044:	88 55 00             	mov    %dl,0x0(%rbp)
  402047:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40204b:	eb 51                	jmp    40209e <urlencode+0xb3>
  40204d:	80 fa 20             	cmp    $0x20,%dl
  402050:	75 0a                	jne    40205c <urlencode+0x71>
  402052:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  402056:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40205a:	eb 42                	jmp    40209e <urlencode+0xb3>
  40205c:	8d 42 e0             	lea    -0x20(%rdx),%eax
  40205f:	3c 5f                	cmp    $0x5f,%al
  402061:	0f 96 c1             	setbe  %cl
  402064:	80 fa 09             	cmp    $0x9,%dl
  402067:	0f 94 c0             	sete   %al
  40206a:	08 c1                	or     %al,%cl
  40206c:	74 45                	je     4020b3 <urlencode+0xc8>
  40206e:	0f b6 d2             	movzbl %dl,%edx
  402071:	be b8 36 40 00       	mov    $0x4036b8,%esi
  402076:	48 89 e7             	mov    %rsp,%rdi
  402079:	b8 00 00 00 00       	mov    $0x0,%eax
  40207e:	e8 2d ed ff ff       	callq  400db0 <sprintf@plt>
  402083:	0f b6 04 24          	movzbl (%rsp),%eax
  402087:	88 45 00             	mov    %al,0x0(%rbp)
  40208a:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  40208f:	88 45 01             	mov    %al,0x1(%rbp)
  402092:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402097:	88 45 02             	mov    %al,0x2(%rbp)
  40209a:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40209e:	48 83 c3 01          	add    $0x1,%rbx
  4020a2:	44 89 e0             	mov    %r12d,%eax
  4020a5:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  4020a9:	85 c0                	test   %eax,%eax
  4020ab:	0f 85 61 ff ff ff    	jne    402012 <urlencode+0x27>
  4020b1:	eb 05                	jmp    4020b8 <urlencode+0xcd>
  4020b3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4020b8:	48 83 c4 10          	add    $0x10,%rsp
  4020bc:	5b                   	pop    %rbx
  4020bd:	5d                   	pop    %rbp
  4020be:	41 5c                	pop    %r12
  4020c0:	c3                   	retq   

00000000004020c1 <rio_writen>:
  4020c1:	41 55                	push   %r13
  4020c3:	41 54                	push   %r12
  4020c5:	55                   	push   %rbp
  4020c6:	53                   	push   %rbx
  4020c7:	48 83 ec 08          	sub    $0x8,%rsp
  4020cb:	41 89 fc             	mov    %edi,%r12d
  4020ce:	48 89 f5             	mov    %rsi,%rbp
  4020d1:	49 89 d5             	mov    %rdx,%r13
  4020d4:	48 89 d3             	mov    %rdx,%rbx
  4020d7:	eb 28                	jmp    402101 <rio_writen+0x40>
  4020d9:	48 89 da             	mov    %rbx,%rdx
  4020dc:	48 89 ee             	mov    %rbp,%rsi
  4020df:	44 89 e7             	mov    %r12d,%edi
  4020e2:	e8 59 eb ff ff       	callq  400c40 <write@plt>
  4020e7:	48 85 c0             	test   %rax,%rax
  4020ea:	7f 0f                	jg     4020fb <rio_writen+0x3a>
  4020ec:	e8 ff ea ff ff       	callq  400bf0 <__errno_location@plt>
  4020f1:	83 38 04             	cmpl   $0x4,(%rax)
  4020f4:	75 15                	jne    40210b <rio_writen+0x4a>
  4020f6:	b8 00 00 00 00       	mov    $0x0,%eax
  4020fb:	48 29 c3             	sub    %rax,%rbx
  4020fe:	48 01 c5             	add    %rax,%rbp
  402101:	48 85 db             	test   %rbx,%rbx
  402104:	75 d3                	jne    4020d9 <rio_writen+0x18>
  402106:	4c 89 e8             	mov    %r13,%rax
  402109:	eb 07                	jmp    402112 <rio_writen+0x51>
  40210b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402112:	48 83 c4 08          	add    $0x8,%rsp
  402116:	5b                   	pop    %rbx
  402117:	5d                   	pop    %rbp
  402118:	41 5c                	pop    %r12
  40211a:	41 5d                	pop    %r13
  40211c:	c3                   	retq   

000000000040211d <rio_read>:
  40211d:	41 56                	push   %r14
  40211f:	41 55                	push   %r13
  402121:	41 54                	push   %r12
  402123:	55                   	push   %rbp
  402124:	53                   	push   %rbx
  402125:	48 89 fb             	mov    %rdi,%rbx
  402128:	49 89 f6             	mov    %rsi,%r14
  40212b:	49 89 d5             	mov    %rdx,%r13
  40212e:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  402132:	eb 2a                	jmp    40215e <rio_read+0x41>
  402134:	ba 00 20 00 00       	mov    $0x2000,%edx
  402139:	4c 89 e6             	mov    %r12,%rsi
  40213c:	8b 3b                	mov    (%rbx),%edi
  40213e:	e8 5d eb ff ff       	callq  400ca0 <read@plt>
  402143:	89 43 04             	mov    %eax,0x4(%rbx)
  402146:	85 c0                	test   %eax,%eax
  402148:	79 0c                	jns    402156 <rio_read+0x39>
  40214a:	e8 a1 ea ff ff       	callq  400bf0 <__errno_location@plt>
  40214f:	83 38 04             	cmpl   $0x4,(%rax)
  402152:	74 0a                	je     40215e <rio_read+0x41>
  402154:	eb 37                	jmp    40218d <rio_read+0x70>
  402156:	85 c0                	test   %eax,%eax
  402158:	74 3c                	je     402196 <rio_read+0x79>
  40215a:	4c 89 63 08          	mov    %r12,0x8(%rbx)
  40215e:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402161:	85 ed                	test   %ebp,%ebp
  402163:	7e cf                	jle    402134 <rio_read+0x17>
  402165:	89 e8                	mov    %ebp,%eax
  402167:	4c 39 e8             	cmp    %r13,%rax
  40216a:	72 03                	jb     40216f <rio_read+0x52>
  40216c:	44 89 ed             	mov    %r13d,%ebp
  40216f:	4c 63 e5             	movslq %ebp,%r12
  402172:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402176:	4c 89 e2             	mov    %r12,%rdx
  402179:	4c 89 f7             	mov    %r14,%rdi
  40217c:	e8 7f eb ff ff       	callq  400d00 <memcpy@plt>
  402181:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402185:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402188:	4c 89 e0             	mov    %r12,%rax
  40218b:	eb 0e                	jmp    40219b <rio_read+0x7e>
  40218d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402194:	eb 05                	jmp    40219b <rio_read+0x7e>
  402196:	b8 00 00 00 00       	mov    $0x0,%eax
  40219b:	5b                   	pop    %rbx
  40219c:	5d                   	pop    %rbp
  40219d:	41 5c                	pop    %r12
  40219f:	41 5d                	pop    %r13
  4021a1:	41 5e                	pop    %r14
  4021a3:	c3                   	retq   

00000000004021a4 <rio_readlineb>:
  4021a4:	41 55                	push   %r13
  4021a6:	41 54                	push   %r12
  4021a8:	55                   	push   %rbp
  4021a9:	53                   	push   %rbx
  4021aa:	48 83 ec 18          	sub    $0x18,%rsp
  4021ae:	49 89 fd             	mov    %rdi,%r13
  4021b1:	48 89 f5             	mov    %rsi,%rbp
  4021b4:	49 89 d4             	mov    %rdx,%r12
  4021b7:	bb 01 00 00 00       	mov    $0x1,%ebx
  4021bc:	eb 3d                	jmp    4021fb <rio_readlineb+0x57>
  4021be:	ba 01 00 00 00       	mov    $0x1,%edx
  4021c3:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  4021c8:	4c 89 ef             	mov    %r13,%rdi
  4021cb:	e8 4d ff ff ff       	callq  40211d <rio_read>
  4021d0:	83 f8 01             	cmp    $0x1,%eax
  4021d3:	75 12                	jne    4021e7 <rio_readlineb+0x43>
  4021d5:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  4021d9:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  4021de:	88 45 00             	mov    %al,0x0(%rbp)
  4021e1:	3c 0a                	cmp    $0xa,%al
  4021e3:	75 0f                	jne    4021f4 <rio_readlineb+0x50>
  4021e5:	eb 1b                	jmp    402202 <rio_readlineb+0x5e>
  4021e7:	85 c0                	test   %eax,%eax
  4021e9:	75 23                	jne    40220e <rio_readlineb+0x6a>
  4021eb:	48 83 fb 01          	cmp    $0x1,%rbx
  4021ef:	90                   	nop
  4021f0:	75 13                	jne    402205 <rio_readlineb+0x61>
  4021f2:	eb 23                	jmp    402217 <rio_readlineb+0x73>
  4021f4:	48 83 c3 01          	add    $0x1,%rbx
  4021f8:	48 89 d5             	mov    %rdx,%rbp
  4021fb:	4c 39 e3             	cmp    %r12,%rbx
  4021fe:	72 be                	jb     4021be <rio_readlineb+0x1a>
  402200:	eb 03                	jmp    402205 <rio_readlineb+0x61>
  402202:	48 89 d5             	mov    %rdx,%rbp
  402205:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402209:	48 89 d8             	mov    %rbx,%rax
  40220c:	eb 0e                	jmp    40221c <rio_readlineb+0x78>
  40220e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402215:	eb 05                	jmp    40221c <rio_readlineb+0x78>
  402217:	b8 00 00 00 00       	mov    $0x0,%eax
  40221c:	48 83 c4 18          	add    $0x18,%rsp
  402220:	5b                   	pop    %rbx
  402221:	5d                   	pop    %rbp
  402222:	41 5c                	pop    %r12
  402224:	41 5d                	pop    %r13
  402226:	c3                   	retq   

0000000000402227 <submitr>:
  402227:	41 57                	push   %r15
  402229:	41 56                	push   %r14
  40222b:	41 55                	push   %r13
  40222d:	41 54                	push   %r12
  40222f:	55                   	push   %rbp
  402230:	53                   	push   %rbx
  402231:	48 81 ec 48 a0 00 00 	sub    $0xa048,%rsp
  402238:	49 89 fc             	mov    %rdi,%r12
  40223b:	89 74 24 04          	mov    %esi,0x4(%rsp)
  40223f:	49 89 d7             	mov    %rdx,%r15
  402242:	49 89 ce             	mov    %rcx,%r14
  402245:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  40224a:	4d 89 cd             	mov    %r9,%r13
  40224d:	48 8b 9c 24 80 a0 00 	mov    0xa080(%rsp),%rbx
  402254:	00 
  402255:	c7 84 24 1c 20 00 00 	movl   $0x0,0x201c(%rsp)
  40225c:	00 00 00 00 
  402260:	ba 00 00 00 00       	mov    $0x0,%edx
  402265:	be 01 00 00 00       	mov    $0x1,%esi
  40226a:	bf 02 00 00 00       	mov    $0x2,%edi
  40226f:	e8 6c eb ff ff       	callq  400de0 <socket@plt>
  402274:	89 c5                	mov    %eax,%ebp
  402276:	85 c0                	test   %eax,%eax
  402278:	79 4e                	jns    4022c8 <submitr+0xa1>
  40227a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402281:	3a 20 43 
  402284:	48 89 03             	mov    %rax,(%rbx)
  402287:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40228e:	20 75 6e 
  402291:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402295:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40229c:	74 6f 20 
  40229f:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4022a3:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  4022aa:	65 20 73 
  4022ad:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4022b1:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  4022b8:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  4022be:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022c3:	e9 68 06 00 00       	jmpq   402930 <submitr+0x709>
  4022c8:	4c 89 e7             	mov    %r12,%rdi
  4022cb:	e8 00 ea ff ff       	callq  400cd0 <gethostbyname@plt>
  4022d0:	48 85 c0             	test   %rax,%rax
  4022d3:	75 67                	jne    40233c <submitr+0x115>
  4022d5:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4022dc:	3a 20 44 
  4022df:	48 89 03             	mov    %rax,(%rbx)
  4022e2:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  4022e9:	20 75 6e 
  4022ec:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4022f0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4022f7:	74 6f 20 
  4022fa:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4022fe:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402305:	76 65 20 
  402308:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40230c:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402313:	72 20 61 
  402316:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40231a:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  402321:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  402327:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  40232b:	89 ef                	mov    %ebp,%edi
  40232d:	e8 5e e9 ff ff       	callq  400c90 <close@plt>
  402332:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402337:	e9 f4 05 00 00       	jmpq   402930 <submitr+0x709>
  40233c:	48 c7 84 24 30 a0 00 	movq   $0x0,0xa030(%rsp)
  402343:	00 00 00 00 00 
  402348:	48 c7 84 24 38 a0 00 	movq   $0x0,0xa038(%rsp)
  40234f:	00 00 00 00 00 
  402354:	66 c7 84 24 30 a0 00 	movw   $0x2,0xa030(%rsp)
  40235b:	00 02 00 
  40235e:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402362:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402366:	48 8d b4 24 34 a0 00 	lea    0xa034(%rsp),%rsi
  40236d:	00 
  40236e:	48 8b 39             	mov    (%rcx),%rdi
  402371:	e8 ea e9 ff ff       	callq  400d60 <bcopy@plt>
  402376:	0f b7 44 24 04       	movzwl 0x4(%rsp),%eax
  40237b:	66 c1 c8 08          	ror    $0x8,%ax
  40237f:	66 89 84 24 32 a0 00 	mov    %ax,0xa032(%rsp)
  402386:	00 
  402387:	ba 10 00 00 00       	mov    $0x10,%edx
  40238c:	48 8d b4 24 30 a0 00 	lea    0xa030(%rsp),%rsi
  402393:	00 
  402394:	89 ef                	mov    %ebp,%edi
  402396:	e8 35 ea ff ff       	callq  400dd0 <connect@plt>
  40239b:	85 c0                	test   %eax,%eax
  40239d:	79 59                	jns    4023f8 <submitr+0x1d1>
  40239f:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4023a6:	3a 20 55 
  4023a9:	48 89 03             	mov    %rax,(%rbx)
  4023ac:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  4023b3:	20 74 6f 
  4023b6:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4023ba:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4023c1:	65 63 74 
  4023c4:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4023c8:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  4023cf:	68 65 20 
  4023d2:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4023d6:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  4023dd:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  4023e3:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  4023e7:	89 ef                	mov    %ebp,%edi
  4023e9:	e8 a2 e8 ff ff       	callq  400c90 <close@plt>
  4023ee:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4023f3:	e9 38 05 00 00       	jmpq   402930 <submitr+0x709>
  4023f8:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4023ff:	4c 89 ef             	mov    %r13,%rdi
  402402:	b8 00 00 00 00       	mov    $0x0,%eax
  402407:	48 89 d1             	mov    %rdx,%rcx
  40240a:	f2 ae                	repnz scas %es:(%rdi),%al
  40240c:	48 f7 d1             	not    %rcx
  40240f:	48 89 ce             	mov    %rcx,%rsi
  402412:	4c 89 ff             	mov    %r15,%rdi
  402415:	48 89 d1             	mov    %rdx,%rcx
  402418:	f2 ae                	repnz scas %es:(%rdi),%al
  40241a:	48 f7 d1             	not    %rcx
  40241d:	49 89 c8             	mov    %rcx,%r8
  402420:	4c 89 f7             	mov    %r14,%rdi
  402423:	48 89 d1             	mov    %rdx,%rcx
  402426:	f2 ae                	repnz scas %es:(%rdi),%al
  402428:	49 29 c8             	sub    %rcx,%r8
  40242b:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402430:	48 89 d1             	mov    %rdx,%rcx
  402433:	f2 ae                	repnz scas %es:(%rdi),%al
  402435:	49 29 c8             	sub    %rcx,%r8
  402438:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  40243d:	49 8d 44 00 7b       	lea    0x7b(%r8,%rax,1),%rax
  402442:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402448:	76 72                	jbe    4024bc <submitr+0x295>
  40244a:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402451:	3a 20 52 
  402454:	48 89 03             	mov    %rax,(%rbx)
  402457:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  40245e:	20 73 74 
  402461:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402465:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  40246c:	74 6f 6f 
  40246f:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402473:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  40247a:	65 2e 20 
  40247d:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402481:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402488:	61 73 65 
  40248b:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40248f:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  402496:	49 54 52 
  402499:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40249d:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  4024a4:	55 46 00 
  4024a7:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4024ab:	89 ef                	mov    %ebp,%edi
  4024ad:	e8 de e7 ff ff       	callq  400c90 <close@plt>
  4024b2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4024b7:	e9 74 04 00 00       	jmpq   402930 <submitr+0x709>
  4024bc:	48 8d b4 24 20 40 00 	lea    0x4020(%rsp),%rsi
  4024c3:	00 
  4024c4:	b9 00 04 00 00       	mov    $0x400,%ecx
  4024c9:	b8 00 00 00 00       	mov    $0x0,%eax
  4024ce:	48 89 f7             	mov    %rsi,%rdi
  4024d1:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4024d4:	4c 89 ef             	mov    %r13,%rdi
  4024d7:	e8 0f fb ff ff       	callq  401feb <urlencode>
  4024dc:	85 c0                	test   %eax,%eax
  4024de:	0f 89 8a 00 00 00    	jns    40256e <submitr+0x347>
  4024e4:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4024eb:	3a 20 52 
  4024ee:	48 89 03             	mov    %rax,(%rbx)
  4024f1:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4024f8:	20 73 74 
  4024fb:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4024ff:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402506:	63 6f 6e 
  402509:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40250d:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  402514:	20 61 6e 
  402517:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40251b:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402522:	67 61 6c 
  402525:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402529:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  402530:	6e 70 72 
  402533:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402537:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  40253e:	6c 65 20 
  402541:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402545:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  40254c:	63 74 65 
  40254f:	48 89 43 38          	mov    %rax,0x38(%rbx)
  402553:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  402559:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  40255d:	89 ef                	mov    %ebp,%edi
  40255f:	e8 2c e7 ff ff       	callq  400c90 <close@plt>
  402564:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402569:	e9 c2 03 00 00       	jmpq   402930 <submitr+0x709>
  40256e:	4d 89 e1             	mov    %r12,%r9
  402571:	4c 8d 84 24 20 40 00 	lea    0x4020(%rsp),%r8
  402578:	00 
  402579:	4c 89 f9             	mov    %r15,%rcx
  40257c:	4c 89 f2             	mov    %r14,%rdx
  40257f:	be 48 36 40 00       	mov    $0x403648,%esi
  402584:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  40258b:	00 
  40258c:	b8 00 00 00 00       	mov    $0x0,%eax
  402591:	e8 1a e8 ff ff       	callq  400db0 <sprintf@plt>
  402596:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  40259d:	00 
  40259e:	b8 00 00 00 00       	mov    $0x0,%eax
  4025a3:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4025aa:	f2 ae                	repnz scas %es:(%rdi),%al
  4025ac:	48 f7 d1             	not    %rcx
  4025af:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  4025b3:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  4025ba:	00 
  4025bb:	89 ef                	mov    %ebp,%edi
  4025bd:	e8 ff fa ff ff       	callq  4020c1 <rio_writen>
  4025c2:	48 85 c0             	test   %rax,%rax
  4025c5:	79 6e                	jns    402635 <submitr+0x40e>
  4025c7:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4025ce:	3a 20 43 
  4025d1:	48 89 03             	mov    %rax,(%rbx)
  4025d4:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4025db:	20 75 6e 
  4025de:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4025e2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4025e9:	74 6f 20 
  4025ec:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4025f0:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  4025f7:	20 74 6f 
  4025fa:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4025fe:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  402605:	72 65 73 
  402608:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40260c:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  402613:	65 72 76 
  402616:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40261a:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  402620:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  402624:	89 ef                	mov    %ebp,%edi
  402626:	e8 65 e6 ff ff       	callq  400c90 <close@plt>
  40262b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402630:	e9 fb 02 00 00       	jmpq   402930 <submitr+0x709>
  402635:	89 ee                	mov    %ebp,%esi
  402637:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  40263e:	00 
  40263f:	e8 6c f9 ff ff       	callq  401fb0 <rio_readinitb>
  402644:	ba 00 20 00 00       	mov    $0x2000,%edx
  402649:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  402650:	00 
  402651:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  402658:	00 
  402659:	e8 46 fb ff ff       	callq  4021a4 <rio_readlineb>
  40265e:	48 85 c0             	test   %rax,%rax
  402661:	7f 7d                	jg     4026e0 <submitr+0x4b9>
  402663:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40266a:	3a 20 43 
  40266d:	48 89 03             	mov    %rax,(%rbx)
  402670:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402677:	20 75 6e 
  40267a:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40267e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402685:	74 6f 20 
  402688:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40268c:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  402693:	66 69 72 
  402696:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40269a:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  4026a1:	61 64 65 
  4026a4:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4026a8:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  4026af:	6d 20 72 
  4026b2:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4026b6:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  4026bd:	20 73 65 
  4026c0:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4026c4:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  4026cb:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  4026cf:	89 ef                	mov    %ebp,%edi
  4026d1:	e8 ba e5 ff ff       	callq  400c90 <close@plt>
  4026d6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4026db:	e9 50 02 00 00       	jmpq   402930 <submitr+0x709>
  4026e0:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  4026e5:	48 8d 8c 24 1c 20 00 	lea    0x201c(%rsp),%rcx
  4026ec:	00 
  4026ed:	48 8d 94 24 20 20 00 	lea    0x2020(%rsp),%rdx
  4026f4:	00 
  4026f5:	be bf 36 40 00       	mov    $0x4036bf,%esi
  4026fa:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  402701:	00 
  402702:	b8 00 00 00 00       	mov    $0x0,%eax
  402707:	e8 34 e6 ff ff       	callq  400d40 <__isoc99_sscanf@plt>
  40270c:	e9 98 00 00 00       	jmpq   4027a9 <submitr+0x582>
  402711:	ba 00 20 00 00       	mov    $0x2000,%edx
  402716:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  40271d:	00 
  40271e:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  402725:	00 
  402726:	e8 79 fa ff ff       	callq  4021a4 <rio_readlineb>
  40272b:	48 85 c0             	test   %rax,%rax
  40272e:	7f 79                	jg     4027a9 <submitr+0x582>
  402730:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402737:	3a 20 43 
  40273a:	48 89 03             	mov    %rax,(%rbx)
  40273d:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402744:	20 75 6e 
  402747:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40274b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402752:	74 6f 20 
  402755:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402759:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  402760:	68 65 61 
  402763:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402767:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  40276e:	66 72 6f 
  402771:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402775:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  40277c:	20 72 65 
  40277f:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402783:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  40278a:	73 65 72 
  40278d:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402791:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  402798:	89 ef                	mov    %ebp,%edi
  40279a:	e8 f1 e4 ff ff       	callq  400c90 <close@plt>
  40279f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027a4:	e9 87 01 00 00       	jmpq   402930 <submitr+0x709>
  4027a9:	0f b6 84 24 20 60 00 	movzbl 0x6020(%rsp),%eax
  4027b0:	00 
  4027b1:	83 e8 0d             	sub    $0xd,%eax
  4027b4:	75 15                	jne    4027cb <submitr+0x5a4>
  4027b6:	0f b6 84 24 21 60 00 	movzbl 0x6021(%rsp),%eax
  4027bd:	00 
  4027be:	83 e8 0a             	sub    $0xa,%eax
  4027c1:	75 08                	jne    4027cb <submitr+0x5a4>
  4027c3:	0f b6 84 24 22 60 00 	movzbl 0x6022(%rsp),%eax
  4027ca:	00 
  4027cb:	85 c0                	test   %eax,%eax
  4027cd:	0f 85 3e ff ff ff    	jne    402711 <submitr+0x4ea>
  4027d3:	ba 00 20 00 00       	mov    $0x2000,%edx
  4027d8:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  4027df:	00 
  4027e0:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  4027e7:	00 
  4027e8:	e8 b7 f9 ff ff       	callq  4021a4 <rio_readlineb>
  4027ed:	48 85 c0             	test   %rax,%rax
  4027f0:	0f 8f 83 00 00 00    	jg     402879 <submitr+0x652>
  4027f6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4027fd:	3a 20 43 
  402800:	48 89 03             	mov    %rax,(%rbx)
  402803:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40280a:	20 75 6e 
  40280d:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402811:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402818:	74 6f 20 
  40281b:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40281f:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402826:	73 74 61 
  402829:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40282d:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402834:	65 73 73 
  402837:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40283b:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402842:	72 6f 6d 
  402845:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402849:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402850:	6c 74 20 
  402853:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402857:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  40285e:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  402864:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  402868:	89 ef                	mov    %ebp,%edi
  40286a:	e8 21 e4 ff ff       	callq  400c90 <close@plt>
  40286f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402874:	e9 b7 00 00 00       	jmpq   402930 <submitr+0x709>
  402879:	8b 94 24 1c 20 00 00 	mov    0x201c(%rsp),%edx
  402880:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  402886:	74 28                	je     4028b0 <submitr+0x689>
  402888:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
  40288d:	be 88 36 40 00       	mov    $0x403688,%esi
  402892:	48 89 df             	mov    %rbx,%rdi
  402895:	b8 00 00 00 00       	mov    $0x0,%eax
  40289a:	e8 11 e5 ff ff       	callq  400db0 <sprintf@plt>
  40289f:	89 ef                	mov    %ebp,%edi
  4028a1:	e8 ea e3 ff ff       	callq  400c90 <close@plt>
  4028a6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028ab:	e9 80 00 00 00       	jmpq   402930 <submitr+0x709>
  4028b0:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  4028b7:	00 
  4028b8:	48 89 df             	mov    %rbx,%rdi
  4028bb:	e8 60 e3 ff ff       	callq  400c20 <strcpy@plt>
  4028c0:	89 ef                	mov    %ebp,%edi
  4028c2:	e8 c9 e3 ff ff       	callq  400c90 <close@plt>
  4028c7:	0f b6 03             	movzbl (%rbx),%eax
  4028ca:	83 e8 4f             	sub    $0x4f,%eax
  4028cd:	75 18                	jne    4028e7 <submitr+0x6c0>
  4028cf:	0f b6 53 01          	movzbl 0x1(%rbx),%edx
  4028d3:	83 ea 4b             	sub    $0x4b,%edx
  4028d6:	75 11                	jne    4028e9 <submitr+0x6c2>
  4028d8:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  4028dc:	83 ea 0a             	sub    $0xa,%edx
  4028df:	75 08                	jne    4028e9 <submitr+0x6c2>
  4028e1:	0f b6 53 03          	movzbl 0x3(%rbx),%edx
  4028e5:	eb 02                	jmp    4028e9 <submitr+0x6c2>
  4028e7:	89 c2                	mov    %eax,%edx
  4028e9:	85 d2                	test   %edx,%edx
  4028eb:	74 30                	je     40291d <submitr+0x6f6>
  4028ed:	bf d0 36 40 00       	mov    $0x4036d0,%edi
  4028f2:	b9 05 00 00 00       	mov    $0x5,%ecx
  4028f7:	48 89 de             	mov    %rbx,%rsi
  4028fa:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4028fc:	0f 97 c1             	seta   %cl
  4028ff:	0f 92 c2             	setb   %dl
  402902:	38 d1                	cmp    %dl,%cl
  402904:	74 1e                	je     402924 <submitr+0x6fd>
  402906:	85 c0                	test   %eax,%eax
  402908:	75 0d                	jne    402917 <submitr+0x6f0>
  40290a:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  40290e:	83 e8 4b             	sub    $0x4b,%eax
  402911:	75 04                	jne    402917 <submitr+0x6f0>
  402913:	0f b6 43 02          	movzbl 0x2(%rbx),%eax
  402917:	85 c0                	test   %eax,%eax
  402919:	75 10                	jne    40292b <submitr+0x704>
  40291b:	eb 13                	jmp    402930 <submitr+0x709>
  40291d:	b8 00 00 00 00       	mov    $0x0,%eax
  402922:	eb 0c                	jmp    402930 <submitr+0x709>
  402924:	b8 00 00 00 00       	mov    $0x0,%eax
  402929:	eb 05                	jmp    402930 <submitr+0x709>
  40292b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402930:	48 81 c4 48 a0 00 00 	add    $0xa048,%rsp
  402937:	5b                   	pop    %rbx
  402938:	5d                   	pop    %rbp
  402939:	41 5c                	pop    %r12
  40293b:	41 5d                	pop    %r13
  40293d:	41 5e                	pop    %r14
  40293f:	41 5f                	pop    %r15
  402941:	c3                   	retq   

0000000000402942 <init_timeout>:
  402942:	53                   	push   %rbx
  402943:	89 fb                	mov    %edi,%ebx
  402945:	85 ff                	test   %edi,%edi
  402947:	74 1f                	je     402968 <init_timeout+0x26>
  402949:	85 ff                	test   %edi,%edi
  40294b:	79 05                	jns    402952 <init_timeout+0x10>
  40294d:	bb 00 00 00 00       	mov    $0x0,%ebx
  402952:	be c2 1f 40 00       	mov    $0x401fc2,%esi
  402957:	bf 0e 00 00 00       	mov    $0xe,%edi
  40295c:	e8 5f e3 ff ff       	callq  400cc0 <signal@plt>
  402961:	89 df                	mov    %ebx,%edi
  402963:	e8 18 e3 ff ff       	callq  400c80 <alarm@plt>
  402968:	5b                   	pop    %rbx
  402969:	c3                   	retq   

000000000040296a <init_driver>:
  40296a:	55                   	push   %rbp
  40296b:	53                   	push   %rbx
  40296c:	48 83 ec 18          	sub    $0x18,%rsp
  402970:	48 89 fd             	mov    %rdi,%rbp
  402973:	be 01 00 00 00       	mov    $0x1,%esi
  402978:	bf 0d 00 00 00       	mov    $0xd,%edi
  40297d:	e8 3e e3 ff ff       	callq  400cc0 <signal@plt>
  402982:	be 01 00 00 00       	mov    $0x1,%esi
  402987:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40298c:	e8 2f e3 ff ff       	callq  400cc0 <signal@plt>
  402991:	be 01 00 00 00       	mov    $0x1,%esi
  402996:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40299b:	e8 20 e3 ff ff       	callq  400cc0 <signal@plt>
  4029a0:	ba 00 00 00 00       	mov    $0x0,%edx
  4029a5:	be 01 00 00 00       	mov    $0x1,%esi
  4029aa:	bf 02 00 00 00       	mov    $0x2,%edi
  4029af:	e8 2c e4 ff ff       	callq  400de0 <socket@plt>
  4029b4:	89 c3                	mov    %eax,%ebx
  4029b6:	85 c0                	test   %eax,%eax
  4029b8:	79 4f                	jns    402a09 <init_driver+0x9f>
  4029ba:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4029c1:	3a 20 43 
  4029c4:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4029c8:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4029cf:	20 75 6e 
  4029d2:	48 89 45 08          	mov    %rax,0x8(%rbp)
  4029d6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029dd:	74 6f 20 
  4029e0:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4029e4:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  4029eb:	65 20 73 
  4029ee:	48 89 45 18          	mov    %rax,0x18(%rbp)
  4029f2:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4029f9:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4029ff:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a04:	e9 23 01 00 00       	jmpq   402b2c <init_driver+0x1c2>
  402a09:	bf d5 36 40 00       	mov    $0x4036d5,%edi
  402a0e:	e8 bd e2 ff ff       	callq  400cd0 <gethostbyname@plt>
  402a13:	48 85 c0             	test   %rax,%rax
  402a16:	75 68                	jne    402a80 <init_driver+0x116>
  402a18:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402a1f:	3a 20 44 
  402a22:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402a26:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402a2d:	20 75 6e 
  402a30:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402a34:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a3b:	74 6f 20 
  402a3e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402a42:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402a49:	76 65 20 
  402a4c:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402a50:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402a57:	72 20 61 
  402a5a:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402a5e:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402a65:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402a6b:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402a6f:	89 df                	mov    %ebx,%edi
  402a71:	e8 1a e2 ff ff       	callq  400c90 <close@plt>
  402a76:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a7b:	e9 ac 00 00 00       	jmpq   402b2c <init_driver+0x1c2>
  402a80:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402a87:	00 
  402a88:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402a8f:	00 00 
  402a91:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402a97:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402a9b:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402a9f:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  402aa4:	48 8b 39             	mov    (%rcx),%rdi
  402aa7:	e8 b4 e2 ff ff       	callq  400d60 <bcopy@plt>
  402aac:	66 c7 44 24 02 47 26 	movw   $0x2647,0x2(%rsp)
  402ab3:	ba 10 00 00 00       	mov    $0x10,%edx
  402ab8:	48 89 e6             	mov    %rsp,%rsi
  402abb:	89 df                	mov    %ebx,%edi
  402abd:	e8 0e e3 ff ff       	callq  400dd0 <connect@plt>
  402ac2:	85 c0                	test   %eax,%eax
  402ac4:	79 50                	jns    402b16 <init_driver+0x1ac>
  402ac6:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402acd:	3a 20 55 
  402ad0:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ad4:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402adb:	20 74 6f 
  402ade:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402ae2:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402ae9:	65 63 74 
  402aec:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402af0:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402af7:	65 72 76 
  402afa:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402afe:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402b04:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402b08:	89 df                	mov    %ebx,%edi
  402b0a:	e8 81 e1 ff ff       	callq  400c90 <close@plt>
  402b0f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b14:	eb 16                	jmp    402b2c <init_driver+0x1c2>
  402b16:	89 df                	mov    %ebx,%edi
  402b18:	e8 73 e1 ff ff       	callq  400c90 <close@plt>
  402b1d:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402b23:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402b27:	b8 00 00 00 00       	mov    $0x0,%eax
  402b2c:	48 83 c4 18          	add    $0x18,%rsp
  402b30:	5b                   	pop    %rbx
  402b31:	5d                   	pop    %rbp
  402b32:	c3                   	retq   

0000000000402b33 <driver_post>:
  402b33:	53                   	push   %rbx
  402b34:	48 83 ec 10          	sub    $0x10,%rsp
  402b38:	4c 89 cb             	mov    %r9,%rbx
  402b3b:	45 85 c0             	test   %r8d,%r8d
  402b3e:	74 22                	je     402b62 <driver_post+0x2f>
  402b40:	48 89 ce             	mov    %rcx,%rsi
  402b43:	bf e9 36 40 00       	mov    $0x4036e9,%edi
  402b48:	b8 00 00 00 00       	mov    $0x0,%eax
  402b4d:	e8 0e e1 ff ff       	callq  400c60 <printf@plt>
  402b52:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402b57:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402b5b:	b8 00 00 00 00       	mov    $0x0,%eax
  402b60:	eb 39                	jmp    402b9b <driver_post+0x68>
  402b62:	48 85 ff             	test   %rdi,%rdi
  402b65:	74 26                	je     402b8d <driver_post+0x5a>
  402b67:	80 3f 00             	cmpb   $0x0,(%rdi)
  402b6a:	74 21                	je     402b8d <driver_post+0x5a>
  402b6c:	4c 89 0c 24          	mov    %r9,(%rsp)
  402b70:	49 89 c9             	mov    %rcx,%r9
  402b73:	49 89 d0             	mov    %rdx,%r8
  402b76:	48 89 f9             	mov    %rdi,%rcx
  402b79:	48 89 f2             	mov    %rsi,%rdx
  402b7c:	be 26 47 00 00       	mov    $0x4726,%esi
  402b81:	bf d5 36 40 00       	mov    $0x4036d5,%edi
  402b86:	e8 9c f6 ff ff       	callq  402227 <submitr>
  402b8b:	eb 0e                	jmp    402b9b <driver_post+0x68>
  402b8d:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402b92:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402b96:	b8 00 00 00 00       	mov    $0x0,%eax
  402b9b:	48 83 c4 10          	add    $0x10,%rsp
  402b9f:	5b                   	pop    %rbx
  402ba0:	c3                   	retq   

0000000000402ba1 <check>:
  402ba1:	89 f8                	mov    %edi,%eax
  402ba3:	c1 e8 1c             	shr    $0x1c,%eax
  402ba6:	85 c0                	test   %eax,%eax
  402ba8:	74 1d                	je     402bc7 <check+0x26>
  402baa:	b9 00 00 00 00       	mov    $0x0,%ecx
  402baf:	eb 0b                	jmp    402bbc <check+0x1b>
  402bb1:	89 f8                	mov    %edi,%eax
  402bb3:	d3 e8                	shr    %cl,%eax
  402bb5:	3c 0a                	cmp    $0xa,%al
  402bb7:	74 14                	je     402bcd <check+0x2c>
  402bb9:	83 c1 08             	add    $0x8,%ecx
  402bbc:	83 f9 1f             	cmp    $0x1f,%ecx
  402bbf:	7e f0                	jle    402bb1 <check+0x10>
  402bc1:	b8 01 00 00 00       	mov    $0x1,%eax
  402bc6:	c3                   	retq   
  402bc7:	b8 00 00 00 00       	mov    $0x0,%eax
  402bcc:	c3                   	retq   
  402bcd:	b8 00 00 00 00       	mov    $0x0,%eax
  402bd2:	c3                   	retq   

0000000000402bd3 <gencookie>:
  402bd3:	53                   	push   %rbx
  402bd4:	83 c7 01             	add    $0x1,%edi
  402bd7:	e8 24 e0 ff ff       	callq  400c00 <srandom@plt>
  402bdc:	e8 3f e1 ff ff       	callq  400d20 <random@plt>
  402be1:	89 c3                	mov    %eax,%ebx
  402be3:	89 c7                	mov    %eax,%edi
  402be5:	e8 b7 ff ff ff       	callq  402ba1 <check>
  402bea:	85 c0                	test   %eax,%eax
  402bec:	74 ee                	je     402bdc <gencookie+0x9>
  402bee:	89 d8                	mov    %ebx,%eax
  402bf0:	5b                   	pop    %rbx
  402bf1:	c3                   	retq   
  402bf2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402bf9:	00 00 00 
  402bfc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402c00 <__libc_csu_init>:
  402c00:	41 57                	push   %r15
  402c02:	41 89 ff             	mov    %edi,%r15d
  402c05:	41 56                	push   %r14
  402c07:	49 89 f6             	mov    %rsi,%r14
  402c0a:	41 55                	push   %r13
  402c0c:	49 89 d5             	mov    %rdx,%r13
  402c0f:	41 54                	push   %r12
  402c11:	4c 8d 25 f8 21 20 00 	lea    0x2021f8(%rip),%r12        # 604e10 <__frame_dummy_init_array_entry>
  402c18:	55                   	push   %rbp
  402c19:	48 8d 2d f8 21 20 00 	lea    0x2021f8(%rip),%rbp        # 604e18 <__init_array_end>
  402c20:	53                   	push   %rbx
  402c21:	4c 29 e5             	sub    %r12,%rbp
  402c24:	31 db                	xor    %ebx,%ebx
  402c26:	48 c1 fd 03          	sar    $0x3,%rbp
  402c2a:	48 83 ec 08          	sub    $0x8,%rsp
  402c2e:	e8 7d df ff ff       	callq  400bb0 <_init>
  402c33:	48 85 ed             	test   %rbp,%rbp
  402c36:	74 1e                	je     402c56 <__libc_csu_init+0x56>
  402c38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402c3f:	00 
  402c40:	4c 89 ea             	mov    %r13,%rdx
  402c43:	4c 89 f6             	mov    %r14,%rsi
  402c46:	44 89 ff             	mov    %r15d,%edi
  402c49:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402c4d:	48 83 c3 01          	add    $0x1,%rbx
  402c51:	48 39 eb             	cmp    %rbp,%rbx
  402c54:	75 ea                	jne    402c40 <__libc_csu_init+0x40>
  402c56:	48 83 c4 08          	add    $0x8,%rsp
  402c5a:	5b                   	pop    %rbx
  402c5b:	5d                   	pop    %rbp
  402c5c:	41 5c                	pop    %r12
  402c5e:	41 5d                	pop    %r13
  402c60:	41 5e                	pop    %r14
  402c62:	41 5f                	pop    %r15
  402c64:	c3                   	retq   
  402c65:	90                   	nop
  402c66:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402c6d:	00 00 00 

0000000000402c70 <__libc_csu_fini>:
  402c70:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402c74 <_fini>:
  402c74:	48 83 ec 08          	sub    $0x8,%rsp
  402c78:	48 83 c4 08          	add    $0x8,%rsp
  402c7c:	c3                   	retq   