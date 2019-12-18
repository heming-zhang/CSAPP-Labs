
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400bb0 <_init>:
  400bb0:	48 83 ec 08          	sub    $0x8,%rsp
  400bb4:	48 8b 05 3d 34 20 00 	mov    0x20343d(%rip),%rax        # 603ff8 <__gmon_start__>
  400bbb:	48 85 c0             	test   %rax,%rax
  400bbe:	74 05                	je     400bc5 <_init+0x15>
  400bc0:	e8 2b 02 00 00       	callq  400df0 <.plt.got>
  400bc5:	48 83 c4 08          	add    $0x8,%rsp
  400bc9:	c3                   	retq   

Disassembly of section .plt:

0000000000400bd0 <.plt>:
  400bd0:	ff 35 32 34 20 00    	pushq  0x203432(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400bd6:	ff 25 34 34 20 00    	jmpq   *0x203434(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400bdc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400be0 <strcasecmp@plt>:
  400be0:	ff 25 32 34 20 00    	jmpq   *0x203432(%rip)        # 604018 <strcasecmp@GLIBC_2.2.5>
  400be6:	68 00 00 00 00       	pushq  $0x0
  400beb:	e9 e0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400bf0 <__errno_location@plt>:
  400bf0:	ff 25 2a 34 20 00    	jmpq   *0x20342a(%rip)        # 604020 <__errno_location@GLIBC_2.2.5>
  400bf6:	68 01 00 00 00       	pushq  $0x1
  400bfb:	e9 d0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c00 <srandom@plt>:
  400c00:	ff 25 22 34 20 00    	jmpq   *0x203422(%rip)        # 604028 <srandom@GLIBC_2.2.5>
  400c06:	68 02 00 00 00       	pushq  $0x2
  400c0b:	e9 c0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c10 <strncmp@plt>:
  400c10:	ff 25 1a 34 20 00    	jmpq   *0x20341a(%rip)        # 604030 <strncmp@GLIBC_2.2.5>
  400c16:	68 03 00 00 00       	pushq  $0x3
  400c1b:	e9 b0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c20 <strcpy@plt>:
  400c20:	ff 25 12 34 20 00    	jmpq   *0x203412(%rip)        # 604038 <strcpy@GLIBC_2.2.5>
  400c26:	68 04 00 00 00       	pushq  $0x4
  400c2b:	e9 a0 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c30 <puts@plt>:
  400c30:	ff 25 0a 34 20 00    	jmpq   *0x20340a(%rip)        # 604040 <puts@GLIBC_2.2.5>
  400c36:	68 05 00 00 00       	pushq  $0x5
  400c3b:	e9 90 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c40 <write@plt>:
  400c40:	ff 25 02 34 20 00    	jmpq   *0x203402(%rip)        # 604048 <write@GLIBC_2.2.5>
  400c46:	68 06 00 00 00       	pushq  $0x6
  400c4b:	e9 80 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c50 <mmap@plt>:
  400c50:	ff 25 fa 33 20 00    	jmpq   *0x2033fa(%rip)        # 604050 <mmap@GLIBC_2.2.5>
  400c56:	68 07 00 00 00       	pushq  $0x7
  400c5b:	e9 70 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c60 <printf@plt>:
  400c60:	ff 25 f2 33 20 00    	jmpq   *0x2033f2(%rip)        # 604058 <printf@GLIBC_2.2.5>
  400c66:	68 08 00 00 00       	pushq  $0x8
  400c6b:	e9 60 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c70 <memset@plt>:
  400c70:	ff 25 ea 33 20 00    	jmpq   *0x2033ea(%rip)        # 604060 <memset@GLIBC_2.2.5>
  400c76:	68 09 00 00 00       	pushq  $0x9
  400c7b:	e9 50 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c80 <alarm@plt>:
  400c80:	ff 25 e2 33 20 00    	jmpq   *0x2033e2(%rip)        # 604068 <alarm@GLIBC_2.2.5>
  400c86:	68 0a 00 00 00       	pushq  $0xa
  400c8b:	e9 40 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400c90 <close@plt>:
  400c90:	ff 25 da 33 20 00    	jmpq   *0x2033da(%rip)        # 604070 <close@GLIBC_2.2.5>
  400c96:	68 0b 00 00 00       	pushq  $0xb
  400c9b:	e9 30 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400ca0 <read@plt>:
  400ca0:	ff 25 d2 33 20 00    	jmpq   *0x2033d2(%rip)        # 604078 <read@GLIBC_2.2.5>
  400ca6:	68 0c 00 00 00       	pushq  $0xc
  400cab:	e9 20 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400cb0 <__libc_start_main@plt>:
  400cb0:	ff 25 ca 33 20 00    	jmpq   *0x2033ca(%rip)        # 604080 <__libc_start_main@GLIBC_2.2.5>
  400cb6:	68 0d 00 00 00       	pushq  $0xd
  400cbb:	e9 10 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400cc0 <signal@plt>:
  400cc0:	ff 25 c2 33 20 00    	jmpq   *0x2033c2(%rip)        # 604088 <signal@GLIBC_2.2.5>
  400cc6:	68 0e 00 00 00       	pushq  $0xe
  400ccb:	e9 00 ff ff ff       	jmpq   400bd0 <.plt>

0000000000400cd0 <gethostbyname@plt>:
  400cd0:	ff 25 ba 33 20 00    	jmpq   *0x2033ba(%rip)        # 604090 <gethostbyname@GLIBC_2.2.5>
  400cd6:	68 0f 00 00 00       	pushq  $0xf
  400cdb:	e9 f0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400ce0 <fprintf@plt>:
  400ce0:	ff 25 b2 33 20 00    	jmpq   *0x2033b2(%rip)        # 604098 <fprintf@GLIBC_2.2.5>
  400ce6:	68 10 00 00 00       	pushq  $0x10
  400ceb:	e9 e0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400cf0 <strtol@plt>:
  400cf0:	ff 25 aa 33 20 00    	jmpq   *0x2033aa(%rip)        # 6040a0 <strtol@GLIBC_2.2.5>
  400cf6:	68 11 00 00 00       	pushq  $0x11
  400cfb:	e9 d0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d00 <memcpy@plt>:
  400d00:	ff 25 a2 33 20 00    	jmpq   *0x2033a2(%rip)        # 6040a8 <memcpy@GLIBC_2.14>
  400d06:	68 12 00 00 00       	pushq  $0x12
  400d0b:	e9 c0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d10 <time@plt>:
  400d10:	ff 25 9a 33 20 00    	jmpq   *0x20339a(%rip)        # 6040b0 <time@GLIBC_2.2.5>
  400d16:	68 13 00 00 00       	pushq  $0x13
  400d1b:	e9 b0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d20 <random@plt>:
  400d20:	ff 25 92 33 20 00    	jmpq   *0x203392(%rip)        # 6040b8 <random@GLIBC_2.2.5>
  400d26:	68 14 00 00 00       	pushq  $0x14
  400d2b:	e9 a0 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d30 <_IO_getc@plt>:
  400d30:	ff 25 8a 33 20 00    	jmpq   *0x20338a(%rip)        # 6040c0 <_IO_getc@GLIBC_2.2.5>
  400d36:	68 15 00 00 00       	pushq  $0x15
  400d3b:	e9 90 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d40 <__isoc99_sscanf@plt>:
  400d40:	ff 25 82 33 20 00    	jmpq   *0x203382(%rip)        # 6040c8 <__isoc99_sscanf@GLIBC_2.7>
  400d46:	68 16 00 00 00       	pushq  $0x16
  400d4b:	e9 80 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d50 <munmap@plt>:
  400d50:	ff 25 7a 33 20 00    	jmpq   *0x20337a(%rip)        # 6040d0 <munmap@GLIBC_2.2.5>
  400d56:	68 17 00 00 00       	pushq  $0x17
  400d5b:	e9 70 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d60 <bcopy@plt>:
  400d60:	ff 25 72 33 20 00    	jmpq   *0x203372(%rip)        # 6040d8 <bcopy@GLIBC_2.2.5>
  400d66:	68 18 00 00 00       	pushq  $0x18
  400d6b:	e9 60 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d70 <fopen@plt>:
  400d70:	ff 25 6a 33 20 00    	jmpq   *0x20336a(%rip)        # 6040e0 <fopen@GLIBC_2.2.5>
  400d76:	68 19 00 00 00       	pushq  $0x19
  400d7b:	e9 50 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d80 <getopt@plt>:
  400d80:	ff 25 62 33 20 00    	jmpq   *0x203362(%rip)        # 6040e8 <getopt@GLIBC_2.2.5>
  400d86:	68 1a 00 00 00       	pushq  $0x1a
  400d8b:	e9 40 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400d90 <strtoul@plt>:
  400d90:	ff 25 5a 33 20 00    	jmpq   *0x20335a(%rip)        # 6040f0 <strtoul@GLIBC_2.2.5>
  400d96:	68 1b 00 00 00       	pushq  $0x1b
  400d9b:	e9 30 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400da0 <gethostname@plt>:
  400da0:	ff 25 52 33 20 00    	jmpq   *0x203352(%rip)        # 6040f8 <gethostname@GLIBC_2.2.5>
  400da6:	68 1c 00 00 00       	pushq  $0x1c
  400dab:	e9 20 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400db0 <sprintf@plt>:
  400db0:	ff 25 4a 33 20 00    	jmpq   *0x20334a(%rip)        # 604100 <sprintf@GLIBC_2.2.5>
  400db6:	68 1d 00 00 00       	pushq  $0x1d
  400dbb:	e9 10 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400dc0 <exit@plt>:
  400dc0:	ff 25 42 33 20 00    	jmpq   *0x203342(%rip)        # 604108 <exit@GLIBC_2.2.5>
  400dc6:	68 1e 00 00 00       	pushq  $0x1e
  400dcb:	e9 00 fe ff ff       	jmpq   400bd0 <.plt>

0000000000400dd0 <connect@plt>:
  400dd0:	ff 25 3a 33 20 00    	jmpq   *0x20333a(%rip)        # 604110 <connect@GLIBC_2.2.5>
  400dd6:	68 1f 00 00 00       	pushq  $0x1f
  400ddb:	e9 f0 fd ff ff       	jmpq   400bd0 <.plt>

0000000000400de0 <socket@plt>:
  400de0:	ff 25 32 33 20 00    	jmpq   *0x203332(%rip)        # 604118 <socket@GLIBC_2.2.5>
  400de6:	68 20 00 00 00       	pushq  $0x20
  400deb:	e9 e0 fd ff ff       	jmpq   400bd0 <.plt>

Disassembly of section .plt.got:

0000000000400df0 <.plt.got>:
  400df0:	ff 25 02 32 20 00    	jmpq   *0x203202(%rip)        # 603ff8 <__gmon_start__>
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
  400e0f:	49 c7 c0 50 2b 40 00 	mov    $0x402b50,%r8
  400e16:	48 c7 c1 e0 2a 40 00 	mov    $0x402ae0,%rcx
  400e1d:	48 c7 c7 c0 10 40 00 	mov    $0x4010c0,%rdi
  400e24:	e8 87 fe ff ff       	callq  400cb0 <__libc_start_main@plt>
  400e29:	f4                   	hlt    
  400e2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400e30 <deregister_tm_clones>:
  400e30:	b8 97 44 60 00       	mov    $0x604497,%eax
  400e35:	55                   	push   %rbp
  400e36:	48 2d 90 44 60 00    	sub    $0x604490,%rax
  400e3c:	48 83 f8 0e          	cmp    $0xe,%rax
  400e40:	48 89 e5             	mov    %rsp,%rbp
  400e43:	77 02                	ja     400e47 <deregister_tm_clones+0x17>
  400e45:	5d                   	pop    %rbp
  400e46:	c3                   	retq   
  400e47:	b8 00 00 00 00       	mov    $0x0,%eax
  400e4c:	48 85 c0             	test   %rax,%rax
  400e4f:	74 f4                	je     400e45 <deregister_tm_clones+0x15>
  400e51:	5d                   	pop    %rbp
  400e52:	bf 90 44 60 00       	mov    $0x604490,%edi
  400e57:	ff e0                	jmpq   *%rax
  400e59:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400e60 <register_tm_clones>:
  400e60:	b8 90 44 60 00       	mov    $0x604490,%eax
  400e65:	55                   	push   %rbp
  400e66:	48 2d 90 44 60 00    	sub    $0x604490,%rax
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
  400e92:	bf 90 44 60 00       	mov    $0x604490,%edi
  400e97:	ff e2                	jmpq   *%rdx
  400e99:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400ea0 <__do_global_dtors_aux>:
  400ea0:	80 3d 11 36 20 00 00 	cmpb   $0x0,0x203611(%rip)        # 6044b8 <completed.6355>
  400ea7:	75 11                	jne    400eba <__do_global_dtors_aux+0x1a>
  400ea9:	55                   	push   %rbp
  400eaa:	48 89 e5             	mov    %rsp,%rbp
  400ead:	e8 7e ff ff ff       	callq  400e30 <deregister_tm_clones>
  400eb2:	5d                   	pop    %rbp
  400eb3:	c6 05 fe 35 20 00 01 	movb   $0x1,0x2035fe(%rip)        # 6044b8 <completed.6355>
  400eba:	f3 c3                	repz retq 
  400ebc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ec0 <frame_dummy>:
  400ec0:	48 83 3d 58 2f 20 00 	cmpq   $0x0,0x202f58(%rip)        # 603e20 <__JCR_END__>
  400ec7:	00 
  400ec8:	74 1e                	je     400ee8 <frame_dummy+0x28>
  400eca:	b8 00 00 00 00       	mov    $0x0,%eax
  400ecf:	48 85 c0             	test   %rax,%rax
  400ed2:	74 14                	je     400ee8 <frame_dummy+0x28>
  400ed4:	55                   	push   %rbp
  400ed5:	bf 20 3e 60 00       	mov    $0x603e20,%edi
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
  400ef7:	83 3d ea 35 20 00 00 	cmpl   $0x0,0x2035ea(%rip)        # 6044e8 <is_checker>
  400efe:	74 39                	je     400f39 <usage+0x49>
  400f00:	bf 70 2b 40 00       	mov    $0x402b70,%edi
  400f05:	b8 00 00 00 00       	mov    $0x0,%eax
  400f0a:	e8 51 fd ff ff       	callq  400c60 <printf@plt>
  400f0f:	bf a8 2b 40 00       	mov    $0x402ba8,%edi
  400f14:	e8 17 fd ff ff       	callq  400c30 <puts@plt>
  400f19:	bf 20 2d 40 00       	mov    $0x402d20,%edi
  400f1e:	e8 0d fd ff ff       	callq  400c30 <puts@plt>
  400f23:	bf d0 2b 40 00       	mov    $0x402bd0,%edi
  400f28:	e8 03 fd ff ff       	callq  400c30 <puts@plt>
  400f2d:	bf 3a 2d 40 00       	mov    $0x402d3a,%edi
  400f32:	e8 f9 fc ff ff       	callq  400c30 <puts@plt>
  400f37:	eb 2d                	jmp    400f66 <usage+0x76>
  400f39:	bf 56 2d 40 00       	mov    $0x402d56,%edi
  400f3e:	b8 00 00 00 00       	mov    $0x0,%eax
  400f43:	e8 18 fd ff ff       	callq  400c60 <printf@plt>
  400f48:	bf f8 2b 40 00       	mov    $0x402bf8,%edi
  400f4d:	e8 de fc ff ff       	callq  400c30 <puts@plt>
  400f52:	bf 20 2c 40 00       	mov    $0x402c20,%edi
  400f57:	e8 d4 fc ff ff       	callq  400c30 <puts@plt>
  400f5c:	bf 74 2d 40 00       	mov    $0x402d74,%edi
  400f61:	e8 ca fc ff ff       	callq  400c30 <puts@plt>
  400f66:	bf 00 00 00 00       	mov    $0x0,%edi
  400f6b:	e8 50 fe ff ff       	callq  400dc0 <exit@plt>

0000000000400f70 <initialize_target>:
  400f70:	55                   	push   %rbp
  400f71:	53                   	push   %rbx
  400f72:	48 81 ec 08 21 00 00 	sub    $0x2108,%rsp
  400f79:	89 f5                	mov    %esi,%ebp
  400f7b:	89 3d 57 35 20 00    	mov    %edi,0x203557(%rip)        # 6044d8 <check_level>
  400f81:	8b 3d c1 31 20 00    	mov    0x2031c1(%rip),%edi        # 604148 <target_id>
  400f87:	e8 27 1b 00 00       	callq  402ab3 <gencookie>
  400f8c:	89 05 52 35 20 00    	mov    %eax,0x203552(%rip)        # 6044e4 <cookie>
  400f92:	89 c7                	mov    %eax,%edi
  400f94:	e8 1a 1b 00 00       	callq  402ab3 <gencookie>
  400f99:	89 05 41 35 20 00    	mov    %eax,0x203541(%rip)        # 6044e0 <authkey>
  400f9f:	8b 05 a3 31 20 00    	mov    0x2031a3(%rip),%eax        # 604148 <target_id>
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
  400fea:	48 89 05 8f 34 20 00 	mov    %rax,0x20348f(%rip)        # 604480 <buf_offset>
  400ff1:	c6 05 10 41 20 00 63 	movb   $0x63,0x204110(%rip)        # 605108 <target_prefix>
  400ff8:	83 3d 89 34 20 00 00 	cmpl   $0x0,0x203489(%rip)        # 604488 <notify>
  400fff:	0f 84 b1 00 00 00    	je     4010b6 <initialize_target+0x146>
  401005:	83 3d dc 34 20 00 00 	cmpl   $0x0,0x2034dc(%rip)        # 6044e8 <is_checker>
  40100c:	0f 85 a4 00 00 00    	jne    4010b6 <initialize_target+0x146>
  401012:	be 00 01 00 00       	mov    $0x100,%esi
  401017:	48 89 e7             	mov    %rsp,%rdi
  40101a:	e8 81 fd ff ff       	callq  400da0 <gethostname@plt>
  40101f:	85 c0                	test   %eax,%eax
  401021:	74 25                	je     401048 <initialize_target+0xd8>
  401023:	bf 50 2c 40 00       	mov    $0x402c50,%edi
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
  401050:	48 8b 3c c5 60 41 60 	mov    0x604160(,%rax,8),%rdi
  401057:	00 
  401058:	48 85 ff             	test   %rdi,%rdi
  40105b:	75 da                	jne    401037 <initialize_target+0xc7>
  40105d:	b8 00 00 00 00       	mov    $0x0,%eax
  401062:	eb 05                	jmp    401069 <initialize_target+0xf9>
  401064:	b8 01 00 00 00       	mov    $0x1,%eax
  401069:	85 c0                	test   %eax,%eax
  40106b:	75 17                	jne    401084 <initialize_target+0x114>
  40106d:	48 89 e6             	mov    %rsp,%rsi
  401070:	bf 88 2c 40 00       	mov    $0x402c88,%edi
  401075:	e8 e6 fb ff ff       	callq  400c60 <printf@plt>
  40107a:	bf 08 00 00 00       	mov    $0x8,%edi
  40107f:	e8 3c fd ff ff       	callq  400dc0 <exit@plt>
  401084:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  40108b:	00 
  40108c:	e8 b9 17 00 00       	callq  40284a <init_driver>
  401091:	85 c0                	test   %eax,%eax
  401093:	79 21                	jns    4010b6 <initialize_target+0x146>
  401095:	48 8d b4 24 00 01 00 	lea    0x100(%rsp),%rsi
  40109c:	00 
  40109d:	bf c8 2c 40 00       	mov    $0x402cc8,%edi
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
  4010ce:	be 71 1c 40 00       	mov    $0x401c71,%esi
  4010d3:	bf 0b 00 00 00       	mov    $0xb,%edi
  4010d8:	e8 e3 fb ff ff       	callq  400cc0 <signal@plt>
  4010dd:	be 23 1c 40 00       	mov    $0x401c23,%esi
  4010e2:	bf 07 00 00 00       	mov    $0x7,%edi
  4010e7:	e8 d4 fb ff ff       	callq  400cc0 <signal@plt>
  4010ec:	be bf 1c 40 00       	mov    $0x401cbf,%esi
  4010f1:	bf 04 00 00 00       	mov    $0x4,%edi
  4010f6:	e8 c5 fb ff ff       	callq  400cc0 <signal@plt>
  4010fb:	83 3d e6 33 20 00 00 	cmpl   $0x0,0x2033e6(%rip)        # 6044e8 <is_checker>
  401102:	74 20                	je     401124 <main+0x64>
  401104:	be 0d 1d 40 00       	mov    $0x401d0d,%esi
  401109:	bf 0e 00 00 00       	mov    $0xe,%edi
  40110e:	e8 ad fb ff ff       	callq  400cc0 <signal@plt>
  401113:	bf 05 00 00 00       	mov    $0x5,%edi
  401118:	e8 63 fb ff ff       	callq  400c80 <alarm@plt>
  40111d:	bd 92 2d 40 00       	mov    $0x402d92,%ebp
  401122:	eb 05                	jmp    401129 <main+0x69>
  401124:	bd 8d 2d 40 00       	mov    $0x402d8d,%ebp
  401129:	48 8b 05 70 33 20 00 	mov    0x203370(%rip),%rax        # 6044a0 <stdin@@GLIBC_2.2.5>
  401130:	48 89 05 99 33 20 00 	mov    %rax,0x203399(%rip)        # 6044d0 <infile>
  401137:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  40113d:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401143:	e9 b9 00 00 00       	jmpq   401201 <main+0x141>
  401148:	83 e8 61             	sub    $0x61,%eax
  40114b:	3c 10                	cmp    $0x10,%al
  40114d:	0f 87 93 00 00 00    	ja     4011e6 <main+0x126>
  401153:	0f b6 c0             	movzbl %al,%eax
  401156:	ff 24 c5 d8 2d 40 00 	jmpq   *0x402dd8(,%rax,8)
  40115d:	48 8b 3b             	mov    (%rbx),%rdi
  401160:	e8 8b fd ff ff       	callq  400ef0 <usage>
  401165:	be b5 32 40 00       	mov    $0x4032b5,%esi
  40116a:	48 8b 3d 37 33 20 00 	mov    0x203337(%rip),%rdi        # 6044a8 <optarg@@GLIBC_2.2.5>
  401171:	e8 fa fb ff ff       	callq  400d70 <fopen@plt>
  401176:	48 89 05 53 33 20 00 	mov    %rax,0x203353(%rip)        # 6044d0 <infile>
  40117d:	48 85 c0             	test   %rax,%rax
  401180:	75 7f                	jne    401201 <main+0x141>
  401182:	48 8b 15 1f 33 20 00 	mov    0x20331f(%rip),%rdx        # 6044a8 <optarg@@GLIBC_2.2.5>
  401189:	be 9a 2d 40 00       	mov    $0x402d9a,%esi
  40118e:	48 8b 3d 1b 33 20 00 	mov    0x20331b(%rip),%rdi        # 6044b0 <stderr@@GLIBC_2.2.5>
  401195:	e8 46 fb ff ff       	callq  400ce0 <fprintf@plt>
  40119a:	b8 01 00 00 00       	mov    $0x1,%eax
  40119f:	e9 d6 00 00 00       	jmpq   40127a <main+0x1ba>
  4011a4:	ba 10 00 00 00       	mov    $0x10,%edx
  4011a9:	be 00 00 00 00       	mov    $0x0,%esi
  4011ae:	48 8b 3d f3 32 20 00 	mov    0x2032f3(%rip),%rdi        # 6044a8 <optarg@@GLIBC_2.2.5>
  4011b5:	e8 d6 fb ff ff       	callq  400d90 <strtoul@plt>
  4011ba:	41 89 c6             	mov    %eax,%r14d
  4011bd:	eb 42                	jmp    401201 <main+0x141>
  4011bf:	ba 0a 00 00 00       	mov    $0xa,%edx
  4011c4:	be 00 00 00 00       	mov    $0x0,%esi
  4011c9:	48 8b 3d d8 32 20 00 	mov    0x2032d8(%rip),%rdi        # 6044a8 <optarg@@GLIBC_2.2.5>
  4011d0:	e8 1b fb ff ff       	callq  400cf0 <strtol@plt>
  4011d5:	41 89 c5             	mov    %eax,%r13d
  4011d8:	eb 27                	jmp    401201 <main+0x141>
  4011da:	c7 05 a4 32 20 00 00 	movl   $0x0,0x2032a4(%rip)        # 604488 <notify>
  4011e1:	00 00 00 
  4011e4:	eb 1b                	jmp    401201 <main+0x141>
  4011e6:	40 0f be f6          	movsbl %sil,%esi
  4011ea:	bf b7 2d 40 00       	mov    $0x402db7,%edi
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
  401219:	be 00 00 00 00       	mov    $0x0,%esi
  40121e:	44 89 ef             	mov    %r13d,%edi
  401221:	e8 4a fd ff ff       	callq  400f70 <initialize_target>
  401226:	83 3d bb 32 20 00 00 	cmpl   $0x0,0x2032bb(%rip)        # 6044e8 <is_checker>
  40122d:	74 25                	je     401254 <main+0x194>
  40122f:	44 3b 35 aa 32 20 00 	cmp    0x2032aa(%rip),%r14d        # 6044e0 <authkey>
  401236:	74 1c                	je     401254 <main+0x194>
  401238:	44 89 f6             	mov    %r14d,%esi
  40123b:	bf f0 2c 40 00       	mov    $0x402cf0,%edi
  401240:	b8 00 00 00 00       	mov    $0x0,%eax
  401245:	e8 16 fa ff ff       	callq  400c60 <printf@plt>
  40124a:	b8 00 00 00 00       	mov    $0x0,%eax
  40124f:	e8 d7 06 00 00       	callq  40192b <check_fail>
  401254:	8b 35 8a 32 20 00    	mov    0x20328a(%rip),%esi        # 6044e4 <cookie>
  40125a:	bf ca 2d 40 00       	mov    $0x402dca,%edi
  40125f:	b8 00 00 00 00       	mov    $0x0,%eax
  401264:	e8 f7 f9 ff ff       	callq  400c60 <printf@plt>
  401269:	48 8b 3d 10 32 20 00 	mov    0x203210(%rip),%rdi        # 604480 <buf_offset>
  401270:	e8 67 0b 00 00       	callq  401ddc <stable_launch>
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
  401725:	e8 30 02 00 00       	callq  40195a <Gets>
  40172a:	b8 01 00 00 00       	mov    $0x1,%eax
  40172f:	48 83 c4 38          	add    $0x38,%rsp
  401733:	c3                   	retq   

0000000000401734 <touch1>:
  401734:	48 83 ec 08          	sub    $0x8,%rsp
  401738:	c7 05 9a 2d 20 00 01 	movl   $0x1,0x202d9a(%rip)        # 6044dc <vlevel>
  40173f:	00 00 00 
  401742:	bf 09 31 40 00       	mov    $0x403109,%edi
  401747:	e8 e4 f4 ff ff       	callq  400c30 <puts@plt>
  40174c:	bf 01 00 00 00       	mov    $0x1,%edi
  401751:	e8 f3 03 00 00       	callq  401b49 <validate>
  401756:	bf 00 00 00 00       	mov    $0x0,%edi
  40175b:	e8 60 f6 ff ff       	callq  400dc0 <exit@plt>

0000000000401760 <touch2>:
  401760:	48 83 ec 08          	sub    $0x8,%rsp
  401764:	89 fe                	mov    %edi,%esi
  401766:	c7 05 6c 2d 20 00 02 	movl   $0x2,0x202d6c(%rip)        # 6044dc <vlevel>
  40176d:	00 00 00 
  401770:	3b 3d 6e 2d 20 00    	cmp    0x202d6e(%rip),%edi        # 6044e4 <cookie>
  401776:	75 1b                	jne    401793 <touch2+0x33>
  401778:	bf 30 31 40 00       	mov    $0x403130,%edi
  40177d:	b8 00 00 00 00       	mov    $0x0,%eax
  401782:	e8 d9 f4 ff ff       	callq  400c60 <printf@plt>
  401787:	bf 02 00 00 00       	mov    $0x2,%edi
  40178c:	e8 b8 03 00 00       	callq  401b49 <validate>
  401791:	eb 19                	jmp    4017ac <touch2+0x4c>
  401793:	bf 58 31 40 00       	mov    $0x403158,%edi
  401798:	b8 00 00 00 00       	mov    $0x0,%eax
  40179d:	e8 be f4 ff ff       	callq  400c60 <printf@plt>
  4017a2:	bf 02 00 00 00       	mov    $0x2,%edi
  4017a7:	e8 4f 04 00 00       	callq  401bfb <fail>
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
  401801:	be 26 31 40 00       	mov    $0x403126,%esi
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
  401838:	c7 05 9a 2c 20 00 03 	movl   $0x3,0x202c9a(%rip)        # 6044dc <vlevel>
  40183f:	00 00 00 
  401842:	48 89 fe             	mov    %rdi,%rsi
  401845:	8b 3d 99 2c 20 00    	mov    0x202c99(%rip),%edi        # 6044e4 <cookie>
  40184b:	e8 66 ff ff ff       	callq  4017b6 <hexmatch>
  401850:	85 c0                	test   %eax,%eax
  401852:	74 1e                	je     401872 <touch3+0x3e>
  401854:	48 89 de             	mov    %rbx,%rsi
  401857:	bf 80 31 40 00       	mov    $0x403180,%edi
  40185c:	b8 00 00 00 00       	mov    $0x0,%eax
  401861:	e8 fa f3 ff ff       	callq  400c60 <printf@plt>
  401866:	bf 03 00 00 00       	mov    $0x3,%edi
  40186b:	e8 d9 02 00 00       	callq  401b49 <validate>
  401870:	eb 1c                	jmp    40188e <touch3+0x5a>
  401872:	48 89 de             	mov    %rbx,%rsi
  401875:	bf a8 31 40 00       	mov    $0x4031a8,%edi
  40187a:	b8 00 00 00 00       	mov    $0x0,%eax
  40187f:	e8 dc f3 ff ff       	callq  400c60 <printf@plt>
  401884:	bf 03 00 00 00       	mov    $0x3,%edi
  401889:	e8 6d 03 00 00       	callq  401bfb <fail>
  40188e:	bf 00 00 00 00       	mov    $0x0,%edi
  401893:	e8 28 f5 ff ff       	callq  400dc0 <exit@plt>

0000000000401898 <test>:
  401898:	48 83 ec 08          	sub    $0x8,%rsp
  40189c:	b8 00 00 00 00       	mov    $0x0,%eax
  4018a1:	e8 78 fe ff ff       	callq  40171e <getbuf>
  4018a6:	89 c6                	mov    %eax,%esi
  4018a8:	bf d0 31 40 00       	mov    $0x4031d0,%edi
  4018ad:	b8 00 00 00 00       	mov    $0x0,%eax
  4018b2:	e8 a9 f3 ff ff       	callq  400c60 <printf@plt>
  4018b7:	48 83 c4 08          	add    $0x8,%rsp
  4018bb:	c3                   	retq   
  4018bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004018c0 <save_char>:
  4018c0:	8b 05 3e 38 20 00    	mov    0x20383e(%rip),%eax        # 605104 <gets_cnt>
  4018c6:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  4018cb:	7f 49                	jg     401916 <save_char+0x56>
  4018cd:	8d 14 40             	lea    (%rax,%rax,2),%edx
  4018d0:	89 f9                	mov    %edi,%ecx
  4018d2:	c0 e9 04             	shr    $0x4,%cl
  4018d5:	83 e1 0f             	and    $0xf,%ecx
  4018d8:	0f b6 b1 f0 34 40 00 	movzbl 0x4034f0(%rcx),%esi
  4018df:	48 63 ca             	movslq %edx,%rcx
  4018e2:	40 88 b1 00 45 60 00 	mov    %sil,0x604500(%rcx)
  4018e9:	8d 4a 01             	lea    0x1(%rdx),%ecx
  4018ec:	83 e7 0f             	and    $0xf,%edi
  4018ef:	0f b6 b7 f0 34 40 00 	movzbl 0x4034f0(%rdi),%esi
  4018f6:	48 63 c9             	movslq %ecx,%rcx
  4018f9:	40 88 b1 00 45 60 00 	mov    %sil,0x604500(%rcx)
  401900:	83 c2 02             	add    $0x2,%edx
  401903:	48 63 d2             	movslq %edx,%rdx
  401906:	c6 82 00 45 60 00 20 	movb   $0x20,0x604500(%rdx)
  40190d:	83 c0 01             	add    $0x1,%eax
  401910:	89 05 ee 37 20 00    	mov    %eax,0x2037ee(%rip)        # 605104 <gets_cnt>
  401916:	f3 c3                	repz retq 

0000000000401918 <save_term>:
  401918:	8b 05 e6 37 20 00    	mov    0x2037e6(%rip),%eax        # 605104 <gets_cnt>
  40191e:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401921:	48 98                	cltq   
  401923:	c6 80 00 45 60 00 00 	movb   $0x0,0x604500(%rax)
  40192a:	c3                   	retq   

000000000040192b <check_fail>:
  40192b:	48 83 ec 08          	sub    $0x8,%rsp
  40192f:	0f be 35 d2 37 20 00 	movsbl 0x2037d2(%rip),%esi        # 605108 <target_prefix>
  401936:	b9 00 45 60 00       	mov    $0x604500,%ecx
  40193b:	8b 15 97 2b 20 00    	mov    0x202b97(%rip),%edx        # 6044d8 <check_level>
  401941:	bf f3 31 40 00       	mov    $0x4031f3,%edi
  401946:	b8 00 00 00 00       	mov    $0x0,%eax
  40194b:	e8 10 f3 ff ff       	callq  400c60 <printf@plt>
  401950:	bf 01 00 00 00       	mov    $0x1,%edi
  401955:	e8 66 f4 ff ff       	callq  400dc0 <exit@plt>

000000000040195a <Gets>:
  40195a:	41 54                	push   %r12
  40195c:	55                   	push   %rbp
  40195d:	53                   	push   %rbx
  40195e:	49 89 fc             	mov    %rdi,%r12
  401961:	c7 05 99 37 20 00 00 	movl   $0x0,0x203799(%rip)        # 605104 <gets_cnt>
  401968:	00 00 00 
  40196b:	48 89 fb             	mov    %rdi,%rbx
  40196e:	eb 11                	jmp    401981 <Gets+0x27>
  401970:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401974:	88 03                	mov    %al,(%rbx)
  401976:	0f b6 f8             	movzbl %al,%edi
  401979:	e8 42 ff ff ff       	callq  4018c0 <save_char>
  40197e:	48 89 eb             	mov    %rbp,%rbx
  401981:	48 8b 3d 48 2b 20 00 	mov    0x202b48(%rip),%rdi        # 6044d0 <infile>
  401988:	e8 a3 f3 ff ff       	callq  400d30 <_IO_getc@plt>
  40198d:	83 f8 ff             	cmp    $0xffffffff,%eax
  401990:	74 05                	je     401997 <Gets+0x3d>
  401992:	83 f8 0a             	cmp    $0xa,%eax
  401995:	75 d9                	jne    401970 <Gets+0x16>
  401997:	c6 03 00             	movb   $0x0,(%rbx)
  40199a:	b8 00 00 00 00       	mov    $0x0,%eax
  40199f:	e8 74 ff ff ff       	callq  401918 <save_term>
  4019a4:	4c 89 e0             	mov    %r12,%rax
  4019a7:	5b                   	pop    %rbx
  4019a8:	5d                   	pop    %rbp
  4019a9:	41 5c                	pop    %r12
  4019ab:	c3                   	retq   

00000000004019ac <notify_server>:
  4019ac:	83 3d 35 2b 20 00 00 	cmpl   $0x0,0x202b35(%rip)        # 6044e8 <is_checker>
  4019b3:	0f 85 8e 01 00 00    	jne    401b47 <notify_server+0x19b>
  4019b9:	53                   	push   %rbx
  4019ba:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
  4019c1:	89 fb                	mov    %edi,%ebx
  4019c3:	8b 05 3b 37 20 00    	mov    0x20373b(%rip),%eax        # 605104 <gets_cnt>
  4019c9:	83 c0 64             	add    $0x64,%eax
  4019cc:	3d 00 20 00 00       	cmp    $0x2000,%eax
  4019d1:	7e 19                	jle    4019ec <notify_server+0x40>
  4019d3:	bf 28 33 40 00       	mov    $0x403328,%edi
  4019d8:	b8 00 00 00 00       	mov    $0x0,%eax
  4019dd:	e8 7e f2 ff ff       	callq  400c60 <printf@plt>
  4019e2:	bf 01 00 00 00       	mov    $0x1,%edi
  4019e7:	e8 d4 f3 ff ff       	callq  400dc0 <exit@plt>
  4019ec:	44 0f be 0d 14 37 20 	movsbl 0x203714(%rip),%r9d        # 605108 <target_prefix>
  4019f3:	00 
  4019f4:	83 3d 8d 2a 20 00 00 	cmpl   $0x0,0x202a8d(%rip)        # 604488 <notify>
  4019fb:	74 09                	je     401a06 <notify_server+0x5a>
  4019fd:	44 8b 05 dc 2a 20 00 	mov    0x202adc(%rip),%r8d        # 6044e0 <authkey>
  401a04:	eb 06                	jmp    401a0c <notify_server+0x60>
  401a06:	41 b8 ff ff ff ff    	mov    $0xffffffff,%r8d
  401a0c:	85 db                	test   %ebx,%ebx
  401a0e:	74 07                	je     401a17 <notify_server+0x6b>
  401a10:	b9 09 32 40 00       	mov    $0x403209,%ecx
  401a15:	eb 05                	jmp    401a1c <notify_server+0x70>
  401a17:	b9 0e 32 40 00       	mov    $0x40320e,%ecx
  401a1c:	48 c7 44 24 08 00 45 	movq   $0x604500,0x8(%rsp)
  401a23:	60 00 
  401a25:	89 34 24             	mov    %esi,(%rsp)
  401a28:	8b 15 1a 27 20 00    	mov    0x20271a(%rip),%edx        # 604148 <target_id>
  401a2e:	be 13 32 40 00       	mov    $0x403213,%esi
  401a33:	48 8d bc 24 10 20 00 	lea    0x2010(%rsp),%rdi
  401a3a:	00 
  401a3b:	b8 00 00 00 00       	mov    $0x0,%eax
  401a40:	e8 6b f3 ff ff       	callq  400db0 <sprintf@plt>
  401a45:	83 3d 3c 2a 20 00 00 	cmpl   $0x0,0x202a3c(%rip)        # 604488 <notify>
  401a4c:	74 78                	je     401ac6 <notify_server+0x11a>
  401a4e:	85 db                	test   %ebx,%ebx
  401a50:	74 68                	je     401aba <notify_server+0x10e>
  401a52:	4c 8d 4c 24 10       	lea    0x10(%rsp),%r9
  401a57:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401a5d:	48 8d 8c 24 10 20 00 	lea    0x2010(%rsp),%rcx
  401a64:	00 
  401a65:	48 8b 15 e4 26 20 00 	mov    0x2026e4(%rip),%rdx        # 604150 <lab>
  401a6c:	48 8b 35 e5 26 20 00 	mov    0x2026e5(%rip),%rsi        # 604158 <course>
  401a73:	48 8b 3d c6 26 20 00 	mov    0x2026c6(%rip),%rdi        # 604140 <user_id>
  401a7a:	e8 94 0f 00 00       	callq  402a13 <driver_post>
  401a7f:	85 c0                	test   %eax,%eax
  401a81:	79 1e                	jns    401aa1 <notify_server+0xf5>
  401a83:	48 8d 74 24 10       	lea    0x10(%rsp),%rsi
  401a88:	bf 2f 32 40 00       	mov    $0x40322f,%edi
  401a8d:	b8 00 00 00 00       	mov    $0x0,%eax
  401a92:	e8 c9 f1 ff ff       	callq  400c60 <printf@plt>
  401a97:	bf 01 00 00 00       	mov    $0x1,%edi
  401a9c:	e8 1f f3 ff ff       	callq  400dc0 <exit@plt>
  401aa1:	bf 58 33 40 00       	mov    $0x403358,%edi
  401aa6:	e8 85 f1 ff ff       	callq  400c30 <puts@plt>
  401aab:	bf 3b 32 40 00       	mov    $0x40323b,%edi
  401ab0:	e8 7b f1 ff ff       	callq  400c30 <puts@plt>
  401ab5:	e9 85 00 00 00       	jmpq   401b3f <notify_server+0x193>
  401aba:	bf 45 32 40 00       	mov    $0x403245,%edi
  401abf:	e8 6c f1 ff ff       	callq  400c30 <puts@plt>
  401ac4:	eb 79                	jmp    401b3f <notify_server+0x193>
  401ac6:	85 db                	test   %ebx,%ebx
  401ac8:	74 08                	je     401ad2 <notify_server+0x126>
  401aca:	be 09 32 40 00       	mov    $0x403209,%esi
  401acf:	90                   	nop
  401ad0:	eb 05                	jmp    401ad7 <notify_server+0x12b>
  401ad2:	be 0e 32 40 00       	mov    $0x40320e,%esi
  401ad7:	bf 90 33 40 00       	mov    $0x403390,%edi
  401adc:	b8 00 00 00 00       	mov    $0x0,%eax
  401ae1:	e8 7a f1 ff ff       	callq  400c60 <printf@plt>
  401ae6:	48 8b 35 53 26 20 00 	mov    0x202653(%rip),%rsi        # 604140 <user_id>
  401aed:	bf 4c 32 40 00       	mov    $0x40324c,%edi
  401af2:	b8 00 00 00 00       	mov    $0x0,%eax
  401af7:	e8 64 f1 ff ff       	callq  400c60 <printf@plt>
  401afc:	48 8b 35 55 26 20 00 	mov    0x202655(%rip),%rsi        # 604158 <course>
  401b03:	bf 59 32 40 00       	mov    $0x403259,%edi
  401b08:	b8 00 00 00 00       	mov    $0x0,%eax
  401b0d:	e8 4e f1 ff ff       	callq  400c60 <printf@plt>
  401b12:	48 8b 35 37 26 20 00 	mov    0x202637(%rip),%rsi        # 604150 <lab>
  401b19:	bf 65 32 40 00       	mov    $0x403265,%edi
  401b1e:	b8 00 00 00 00       	mov    $0x0,%eax
  401b23:	e8 38 f1 ff ff       	callq  400c60 <printf@plt>
  401b28:	48 8d b4 24 10 20 00 	lea    0x2010(%rsp),%rsi
  401b2f:	00 
  401b30:	bf 6e 32 40 00       	mov    $0x40326e,%edi
  401b35:	b8 00 00 00 00       	mov    $0x0,%eax
  401b3a:	e8 21 f1 ff ff       	callq  400c60 <printf@plt>
  401b3f:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
  401b46:	5b                   	pop    %rbx
  401b47:	f3 c3                	repz retq 

0000000000401b49 <validate>:
  401b49:	53                   	push   %rbx
  401b4a:	89 fb                	mov    %edi,%ebx
  401b4c:	83 3d 95 29 20 00 00 	cmpl   $0x0,0x202995(%rip)        # 6044e8 <is_checker>
  401b53:	74 60                	je     401bb5 <validate+0x6c>
  401b55:	39 3d 81 29 20 00    	cmp    %edi,0x202981(%rip)        # 6044dc <vlevel>
  401b5b:	74 14                	je     401b71 <validate+0x28>
  401b5d:	bf 7a 32 40 00       	mov    $0x40327a,%edi
  401b62:	e8 c9 f0 ff ff       	callq  400c30 <puts@plt>
  401b67:	b8 00 00 00 00       	mov    $0x0,%eax
  401b6c:	e8 ba fd ff ff       	callq  40192b <check_fail>
  401b71:	8b 35 61 29 20 00    	mov    0x202961(%rip),%esi        # 6044d8 <check_level>
  401b77:	39 fe                	cmp    %edi,%esi
  401b79:	74 1b                	je     401b96 <validate+0x4d>
  401b7b:	89 fa                	mov    %edi,%edx
  401b7d:	bf b8 33 40 00       	mov    $0x4033b8,%edi
  401b82:	b8 00 00 00 00       	mov    $0x0,%eax
  401b87:	e8 d4 f0 ff ff       	callq  400c60 <printf@plt>
  401b8c:	b8 00 00 00 00       	mov    $0x0,%eax
  401b91:	e8 95 fd ff ff       	callq  40192b <check_fail>
  401b96:	0f be 35 6b 35 20 00 	movsbl 0x20356b(%rip),%esi        # 605108 <target_prefix>
  401b9d:	b9 00 45 60 00       	mov    $0x604500,%ecx
  401ba2:	89 fa                	mov    %edi,%edx
  401ba4:	bf 98 32 40 00       	mov    $0x403298,%edi
  401ba9:	b8 00 00 00 00       	mov    $0x0,%eax
  401bae:	e8 ad f0 ff ff       	callq  400c60 <printf@plt>
  401bb3:	eb 44                	jmp    401bf9 <validate+0xb0>
  401bb5:	39 3d 21 29 20 00    	cmp    %edi,0x202921(%rip)        # 6044dc <vlevel>
  401bbb:	74 18                	je     401bd5 <validate+0x8c>
  401bbd:	bf 7a 32 40 00       	mov    $0x40327a,%edi
  401bc2:	e8 69 f0 ff ff       	callq  400c30 <puts@plt>
  401bc7:	89 de                	mov    %ebx,%esi
  401bc9:	bf 00 00 00 00       	mov    $0x0,%edi
  401bce:	e8 d9 fd ff ff       	callq  4019ac <notify_server>
  401bd3:	eb 24                	jmp    401bf9 <validate+0xb0>
  401bd5:	0f be 15 2c 35 20 00 	movsbl 0x20352c(%rip),%edx        # 605108 <target_prefix>
  401bdc:	89 fe                	mov    %edi,%esi
  401bde:	bf e0 33 40 00       	mov    $0x4033e0,%edi
  401be3:	b8 00 00 00 00       	mov    $0x0,%eax
  401be8:	e8 73 f0 ff ff       	callq  400c60 <printf@plt>
  401bed:	89 de                	mov    %ebx,%esi
  401bef:	bf 01 00 00 00       	mov    $0x1,%edi
  401bf4:	e8 b3 fd ff ff       	callq  4019ac <notify_server>
  401bf9:	5b                   	pop    %rbx
  401bfa:	c3                   	retq   

0000000000401bfb <fail>:
  401bfb:	48 83 ec 08          	sub    $0x8,%rsp
  401bff:	83 3d e2 28 20 00 00 	cmpl   $0x0,0x2028e2(%rip)        # 6044e8 <is_checker>
  401c06:	74 0a                	je     401c12 <fail+0x17>
  401c08:	b8 00 00 00 00       	mov    $0x0,%eax
  401c0d:	e8 19 fd ff ff       	callq  40192b <check_fail>
  401c12:	89 fe                	mov    %edi,%esi
  401c14:	bf 00 00 00 00       	mov    $0x0,%edi
  401c19:	e8 8e fd ff ff       	callq  4019ac <notify_server>
  401c1e:	48 83 c4 08          	add    $0x8,%rsp
  401c22:	c3                   	retq   

0000000000401c23 <bushandler>:
  401c23:	48 83 ec 08          	sub    $0x8,%rsp
  401c27:	83 3d ba 28 20 00 00 	cmpl   $0x0,0x2028ba(%rip)        # 6044e8 <is_checker>
  401c2e:	74 14                	je     401c44 <bushandler+0x21>
  401c30:	bf ad 32 40 00       	mov    $0x4032ad,%edi
  401c35:	e8 f6 ef ff ff       	callq  400c30 <puts@plt>
  401c3a:	b8 00 00 00 00       	mov    $0x0,%eax
  401c3f:	e8 e7 fc ff ff       	callq  40192b <check_fail>
  401c44:	bf 18 34 40 00       	mov    $0x403418,%edi
  401c49:	e8 e2 ef ff ff       	callq  400c30 <puts@plt>
  401c4e:	bf b7 32 40 00       	mov    $0x4032b7,%edi
  401c53:	e8 d8 ef ff ff       	callq  400c30 <puts@plt>
  401c58:	be 00 00 00 00       	mov    $0x0,%esi
  401c5d:	bf 00 00 00 00       	mov    $0x0,%edi
  401c62:	e8 45 fd ff ff       	callq  4019ac <notify_server>
  401c67:	bf 01 00 00 00       	mov    $0x1,%edi
  401c6c:	e8 4f f1 ff ff       	callq  400dc0 <exit@plt>

0000000000401c71 <seghandler>:
  401c71:	48 83 ec 08          	sub    $0x8,%rsp
  401c75:	83 3d 6c 28 20 00 00 	cmpl   $0x0,0x20286c(%rip)        # 6044e8 <is_checker>
  401c7c:	74 14                	je     401c92 <seghandler+0x21>
  401c7e:	bf cd 32 40 00       	mov    $0x4032cd,%edi
  401c83:	e8 a8 ef ff ff       	callq  400c30 <puts@plt>
  401c88:	b8 00 00 00 00       	mov    $0x0,%eax
  401c8d:	e8 99 fc ff ff       	callq  40192b <check_fail>
  401c92:	bf 38 34 40 00       	mov    $0x403438,%edi
  401c97:	e8 94 ef ff ff       	callq  400c30 <puts@plt>
  401c9c:	bf b7 32 40 00       	mov    $0x4032b7,%edi
  401ca1:	e8 8a ef ff ff       	callq  400c30 <puts@plt>
  401ca6:	be 00 00 00 00       	mov    $0x0,%esi
  401cab:	bf 00 00 00 00       	mov    $0x0,%edi
  401cb0:	e8 f7 fc ff ff       	callq  4019ac <notify_server>
  401cb5:	bf 01 00 00 00       	mov    $0x1,%edi
  401cba:	e8 01 f1 ff ff       	callq  400dc0 <exit@plt>

0000000000401cbf <illegalhandler>:
  401cbf:	48 83 ec 08          	sub    $0x8,%rsp
  401cc3:	83 3d 1e 28 20 00 00 	cmpl   $0x0,0x20281e(%rip)        # 6044e8 <is_checker>
  401cca:	74 14                	je     401ce0 <illegalhandler+0x21>
  401ccc:	bf e0 32 40 00       	mov    $0x4032e0,%edi
  401cd1:	e8 5a ef ff ff       	callq  400c30 <puts@plt>
  401cd6:	b8 00 00 00 00       	mov    $0x0,%eax
  401cdb:	e8 4b fc ff ff       	callq  40192b <check_fail>
  401ce0:	bf 60 34 40 00       	mov    $0x403460,%edi
  401ce5:	e8 46 ef ff ff       	callq  400c30 <puts@plt>
  401cea:	bf b7 32 40 00       	mov    $0x4032b7,%edi
  401cef:	e8 3c ef ff ff       	callq  400c30 <puts@plt>
  401cf4:	be 00 00 00 00       	mov    $0x0,%esi
  401cf9:	bf 00 00 00 00       	mov    $0x0,%edi
  401cfe:	e8 a9 fc ff ff       	callq  4019ac <notify_server>
  401d03:	bf 01 00 00 00       	mov    $0x1,%edi
  401d08:	e8 b3 f0 ff ff       	callq  400dc0 <exit@plt>

0000000000401d0d <sigalrmhandler>:
  401d0d:	48 83 ec 08          	sub    $0x8,%rsp
  401d11:	83 3d d0 27 20 00 00 	cmpl   $0x0,0x2027d0(%rip)        # 6044e8 <is_checker>
  401d18:	74 14                	je     401d2e <sigalrmhandler+0x21>
  401d1a:	bf f4 32 40 00       	mov    $0x4032f4,%edi
  401d1f:	e8 0c ef ff ff       	callq  400c30 <puts@plt>
  401d24:	b8 00 00 00 00       	mov    $0x0,%eax
  401d29:	e8 fd fb ff ff       	callq  40192b <check_fail>
  401d2e:	be 05 00 00 00       	mov    $0x5,%esi
  401d33:	bf 90 34 40 00       	mov    $0x403490,%edi
  401d38:	b8 00 00 00 00       	mov    $0x0,%eax
  401d3d:	e8 1e ef ff ff       	callq  400c60 <printf@plt>
  401d42:	be 00 00 00 00       	mov    $0x0,%esi
  401d47:	bf 00 00 00 00       	mov    $0x0,%edi
  401d4c:	e8 5b fc ff ff       	callq  4019ac <notify_server>
  401d51:	bf 01 00 00 00       	mov    $0x1,%edi
  401d56:	e8 65 f0 ff ff       	callq  400dc0 <exit@plt>

0000000000401d5b <launch>:
  401d5b:	55                   	push   %rbp
  401d5c:	48 89 e5             	mov    %rsp,%rbp
  401d5f:	48 89 fa             	mov    %rdi,%rdx
  401d62:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  401d66:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  401d6a:	48 29 c4             	sub    %rax,%rsp
  401d6d:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  401d72:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  401d76:	be f4 00 00 00       	mov    $0xf4,%esi
  401d7b:	e8 f0 ee ff ff       	callq  400c70 <memset@plt>
  401d80:	48 8b 05 19 27 20 00 	mov    0x202719(%rip),%rax        # 6044a0 <stdin@@GLIBC_2.2.5>
  401d87:	48 39 05 42 27 20 00 	cmp    %rax,0x202742(%rip)        # 6044d0 <infile>
  401d8e:	75 0f                	jne    401d9f <launch+0x44>
  401d90:	bf fc 32 40 00       	mov    $0x4032fc,%edi
  401d95:	b8 00 00 00 00       	mov    $0x0,%eax
  401d9a:	e8 c1 ee ff ff       	callq  400c60 <printf@plt>
  401d9f:	c7 05 33 27 20 00 00 	movl   $0x0,0x202733(%rip)        # 6044dc <vlevel>
  401da6:	00 00 00 
  401da9:	b8 00 00 00 00       	mov    $0x0,%eax
  401dae:	e8 e5 fa ff ff       	callq  401898 <test>
  401db3:	83 3d 2e 27 20 00 00 	cmpl   $0x0,0x20272e(%rip)        # 6044e8 <is_checker>
  401dba:	74 14                	je     401dd0 <launch+0x75>
  401dbc:	bf 09 33 40 00       	mov    $0x403309,%edi
  401dc1:	e8 6a ee ff ff       	callq  400c30 <puts@plt>
  401dc6:	b8 00 00 00 00       	mov    $0x0,%eax
  401dcb:	e8 5b fb ff ff       	callq  40192b <check_fail>
  401dd0:	bf 14 33 40 00       	mov    $0x403314,%edi
  401dd5:	e8 56 ee ff ff       	callq  400c30 <puts@plt>
  401dda:	c9                   	leaveq 
  401ddb:	c3                   	retq   

0000000000401ddc <stable_launch>:
  401ddc:	53                   	push   %rbx
  401ddd:	48 89 3d e4 26 20 00 	mov    %rdi,0x2026e4(%rip)        # 6044c8 <global_offset>
  401de4:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  401dea:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401df0:	b9 32 01 00 00       	mov    $0x132,%ecx
  401df5:	ba 07 00 00 00       	mov    $0x7,%edx
  401dfa:	be 00 00 10 00       	mov    $0x100000,%esi
  401dff:	bf 00 60 58 55       	mov    $0x55586000,%edi
  401e04:	e8 47 ee ff ff       	callq  400c50 <mmap@plt>
  401e09:	48 89 c3             	mov    %rax,%rbx
  401e0c:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  401e12:	74 32                	je     401e46 <stable_launch+0x6a>
  401e14:	be 00 00 10 00       	mov    $0x100000,%esi
  401e19:	48 89 c7             	mov    %rax,%rdi
  401e1c:	e8 2f ef ff ff       	callq  400d50 <munmap@plt>
  401e21:	ba 00 60 58 55       	mov    $0x55586000,%edx
  401e26:	be c8 34 40 00       	mov    $0x4034c8,%esi
  401e2b:	48 8b 3d 7e 26 20 00 	mov    0x20267e(%rip),%rdi        # 6044b0 <stderr@@GLIBC_2.2.5>
  401e32:	b8 00 00 00 00       	mov    $0x0,%eax
  401e37:	e8 a4 ee ff ff       	callq  400ce0 <fprintf@plt>
  401e3c:	bf 01 00 00 00       	mov    $0x1,%edi
  401e41:	e8 7a ef ff ff       	callq  400dc0 <exit@plt>
  401e46:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  401e4d:	48 89 15 bc 32 20 00 	mov    %rdx,0x2032bc(%rip)        # 605110 <stack_top>
  401e54:	48 89 e0             	mov    %rsp,%rax
  401e57:	48 89 d4             	mov    %rdx,%rsp
  401e5a:	48 89 c2             	mov    %rax,%rdx
  401e5d:	48 89 15 5c 26 20 00 	mov    %rdx,0x20265c(%rip)        # 6044c0 <global_save_stack>
  401e64:	48 8b 3d 5d 26 20 00 	mov    0x20265d(%rip),%rdi        # 6044c8 <global_offset>
  401e6b:	e8 eb fe ff ff       	callq  401d5b <launch>
  401e70:	48 8b 05 49 26 20 00 	mov    0x202649(%rip),%rax        # 6044c0 <global_save_stack>
  401e77:	48 89 c4             	mov    %rax,%rsp
  401e7a:	be 00 00 10 00       	mov    $0x100000,%esi
  401e7f:	48 89 df             	mov    %rbx,%rdi
  401e82:	e8 c9 ee ff ff       	callq  400d50 <munmap@plt>
  401e87:	5b                   	pop    %rbx
  401e88:	c3                   	retq   
  401e89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000401e90 <rio_readinitb>:
  401e90:	89 37                	mov    %esi,(%rdi)
  401e92:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  401e99:	48 8d 47 10          	lea    0x10(%rdi),%rax
  401e9d:	48 89 47 08          	mov    %rax,0x8(%rdi)
  401ea1:	c3                   	retq   

0000000000401ea2 <sigalrm_handler>:
  401ea2:	48 83 ec 08          	sub    $0x8,%rsp
  401ea6:	ba 00 00 00 00       	mov    $0x0,%edx
  401eab:	be 00 35 40 00       	mov    $0x403500,%esi
  401eb0:	48 8b 3d f9 25 20 00 	mov    0x2025f9(%rip),%rdi        # 6044b0 <stderr@@GLIBC_2.2.5>
  401eb7:	b8 00 00 00 00       	mov    $0x0,%eax
  401ebc:	e8 1f ee ff ff       	callq  400ce0 <fprintf@plt>
  401ec1:	bf 01 00 00 00       	mov    $0x1,%edi
  401ec6:	e8 f5 ee ff ff       	callq  400dc0 <exit@plt>

0000000000401ecb <urlencode>:
  401ecb:	41 54                	push   %r12
  401ecd:	55                   	push   %rbp
  401ece:	53                   	push   %rbx
  401ecf:	48 83 ec 10          	sub    $0x10,%rsp
  401ed3:	48 89 fb             	mov    %rdi,%rbx
  401ed6:	48 89 f5             	mov    %rsi,%rbp
  401ed9:	b8 00 00 00 00       	mov    $0x0,%eax
  401ede:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401ee5:	f2 ae                	repnz scas %es:(%rdi),%al
  401ee7:	48 f7 d1             	not    %rcx
  401eea:	8d 41 ff             	lea    -0x1(%rcx),%eax
  401eed:	e9 93 00 00 00       	jmpq   401f85 <urlencode+0xba>
  401ef2:	0f b6 13             	movzbl (%rbx),%edx
  401ef5:	80 fa 2a             	cmp    $0x2a,%dl
  401ef8:	0f 94 c1             	sete   %cl
  401efb:	80 fa 2d             	cmp    $0x2d,%dl
  401efe:	0f 94 c0             	sete   %al
  401f01:	08 c1                	or     %al,%cl
  401f03:	75 1f                	jne    401f24 <urlencode+0x59>
  401f05:	80 fa 2e             	cmp    $0x2e,%dl
  401f08:	74 1a                	je     401f24 <urlencode+0x59>
  401f0a:	80 fa 5f             	cmp    $0x5f,%dl
  401f0d:	74 15                	je     401f24 <urlencode+0x59>
  401f0f:	8d 42 d0             	lea    -0x30(%rdx),%eax
  401f12:	3c 09                	cmp    $0x9,%al
  401f14:	76 0e                	jbe    401f24 <urlencode+0x59>
  401f16:	8d 42 bf             	lea    -0x41(%rdx),%eax
  401f19:	3c 19                	cmp    $0x19,%al
  401f1b:	76 07                	jbe    401f24 <urlencode+0x59>
  401f1d:	8d 42 9f             	lea    -0x61(%rdx),%eax
  401f20:	3c 19                	cmp    $0x19,%al
  401f22:	77 09                	ja     401f2d <urlencode+0x62>
  401f24:	88 55 00             	mov    %dl,0x0(%rbp)
  401f27:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401f2b:	eb 51                	jmp    401f7e <urlencode+0xb3>
  401f2d:	80 fa 20             	cmp    $0x20,%dl
  401f30:	75 0a                	jne    401f3c <urlencode+0x71>
  401f32:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  401f36:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401f3a:	eb 42                	jmp    401f7e <urlencode+0xb3>
  401f3c:	8d 42 e0             	lea    -0x20(%rdx),%eax
  401f3f:	3c 5f                	cmp    $0x5f,%al
  401f41:	0f 96 c1             	setbe  %cl
  401f44:	80 fa 09             	cmp    $0x9,%dl
  401f47:	0f 94 c0             	sete   %al
  401f4a:	08 c1                	or     %al,%cl
  401f4c:	74 45                	je     401f93 <urlencode+0xc8>
  401f4e:	0f b6 d2             	movzbl %dl,%edx
  401f51:	be 98 35 40 00       	mov    $0x403598,%esi
  401f56:	48 89 e7             	mov    %rsp,%rdi
  401f59:	b8 00 00 00 00       	mov    $0x0,%eax
  401f5e:	e8 4d ee ff ff       	callq  400db0 <sprintf@plt>
  401f63:	0f b6 04 24          	movzbl (%rsp),%eax
  401f67:	88 45 00             	mov    %al,0x0(%rbp)
  401f6a:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  401f6f:	88 45 01             	mov    %al,0x1(%rbp)
  401f72:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  401f77:	88 45 02             	mov    %al,0x2(%rbp)
  401f7a:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  401f7e:	48 83 c3 01          	add    $0x1,%rbx
  401f82:	44 89 e0             	mov    %r12d,%eax
  401f85:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  401f89:	85 c0                	test   %eax,%eax
  401f8b:	0f 85 61 ff ff ff    	jne    401ef2 <urlencode+0x27>
  401f91:	eb 05                	jmp    401f98 <urlencode+0xcd>
  401f93:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401f98:	48 83 c4 10          	add    $0x10,%rsp
  401f9c:	5b                   	pop    %rbx
  401f9d:	5d                   	pop    %rbp
  401f9e:	41 5c                	pop    %r12
  401fa0:	c3                   	retq   

0000000000401fa1 <rio_writen>:
  401fa1:	41 55                	push   %r13
  401fa3:	41 54                	push   %r12
  401fa5:	55                   	push   %rbp
  401fa6:	53                   	push   %rbx
  401fa7:	48 83 ec 08          	sub    $0x8,%rsp
  401fab:	41 89 fc             	mov    %edi,%r12d
  401fae:	48 89 f5             	mov    %rsi,%rbp
  401fb1:	49 89 d5             	mov    %rdx,%r13
  401fb4:	48 89 d3             	mov    %rdx,%rbx
  401fb7:	eb 28                	jmp    401fe1 <rio_writen+0x40>
  401fb9:	48 89 da             	mov    %rbx,%rdx
  401fbc:	48 89 ee             	mov    %rbp,%rsi
  401fbf:	44 89 e7             	mov    %r12d,%edi
  401fc2:	e8 79 ec ff ff       	callq  400c40 <write@plt>
  401fc7:	48 85 c0             	test   %rax,%rax
  401fca:	7f 0f                	jg     401fdb <rio_writen+0x3a>
  401fcc:	e8 1f ec ff ff       	callq  400bf0 <__errno_location@plt>
  401fd1:	83 38 04             	cmpl   $0x4,(%rax)
  401fd4:	75 15                	jne    401feb <rio_writen+0x4a>
  401fd6:	b8 00 00 00 00       	mov    $0x0,%eax
  401fdb:	48 29 c3             	sub    %rax,%rbx
  401fde:	48 01 c5             	add    %rax,%rbp
  401fe1:	48 85 db             	test   %rbx,%rbx
  401fe4:	75 d3                	jne    401fb9 <rio_writen+0x18>
  401fe6:	4c 89 e8             	mov    %r13,%rax
  401fe9:	eb 07                	jmp    401ff2 <rio_writen+0x51>
  401feb:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401ff2:	48 83 c4 08          	add    $0x8,%rsp
  401ff6:	5b                   	pop    %rbx
  401ff7:	5d                   	pop    %rbp
  401ff8:	41 5c                	pop    %r12
  401ffa:	41 5d                	pop    %r13
  401ffc:	c3                   	retq   

0000000000401ffd <rio_read>:
  401ffd:	41 56                	push   %r14
  401fff:	41 55                	push   %r13
  402001:	41 54                	push   %r12
  402003:	55                   	push   %rbp
  402004:	53                   	push   %rbx
  402005:	48 89 fb             	mov    %rdi,%rbx
  402008:	49 89 f6             	mov    %rsi,%r14
  40200b:	49 89 d5             	mov    %rdx,%r13
  40200e:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  402012:	eb 2a                	jmp    40203e <rio_read+0x41>
  402014:	ba 00 20 00 00       	mov    $0x2000,%edx
  402019:	4c 89 e6             	mov    %r12,%rsi
  40201c:	8b 3b                	mov    (%rbx),%edi
  40201e:	e8 7d ec ff ff       	callq  400ca0 <read@plt>
  402023:	89 43 04             	mov    %eax,0x4(%rbx)
  402026:	85 c0                	test   %eax,%eax
  402028:	79 0c                	jns    402036 <rio_read+0x39>
  40202a:	e8 c1 eb ff ff       	callq  400bf0 <__errno_location@plt>
  40202f:	83 38 04             	cmpl   $0x4,(%rax)
  402032:	74 0a                	je     40203e <rio_read+0x41>
  402034:	eb 37                	jmp    40206d <rio_read+0x70>
  402036:	85 c0                	test   %eax,%eax
  402038:	74 3c                	je     402076 <rio_read+0x79>
  40203a:	4c 89 63 08          	mov    %r12,0x8(%rbx)
  40203e:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402041:	85 ed                	test   %ebp,%ebp
  402043:	7e cf                	jle    402014 <rio_read+0x17>
  402045:	89 e8                	mov    %ebp,%eax
  402047:	4c 39 e8             	cmp    %r13,%rax
  40204a:	72 03                	jb     40204f <rio_read+0x52>
  40204c:	44 89 ed             	mov    %r13d,%ebp
  40204f:	4c 63 e5             	movslq %ebp,%r12
  402052:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  402056:	4c 89 e2             	mov    %r12,%rdx
  402059:	4c 89 f7             	mov    %r14,%rdi
  40205c:	e8 9f ec ff ff       	callq  400d00 <memcpy@plt>
  402061:	4c 01 63 08          	add    %r12,0x8(%rbx)
  402065:	29 6b 04             	sub    %ebp,0x4(%rbx)
  402068:	4c 89 e0             	mov    %r12,%rax
  40206b:	eb 0e                	jmp    40207b <rio_read+0x7e>
  40206d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402074:	eb 05                	jmp    40207b <rio_read+0x7e>
  402076:	b8 00 00 00 00       	mov    $0x0,%eax
  40207b:	5b                   	pop    %rbx
  40207c:	5d                   	pop    %rbp
  40207d:	41 5c                	pop    %r12
  40207f:	41 5d                	pop    %r13
  402081:	41 5e                	pop    %r14
  402083:	c3                   	retq   

0000000000402084 <rio_readlineb>:
  402084:	41 55                	push   %r13
  402086:	41 54                	push   %r12
  402088:	55                   	push   %rbp
  402089:	53                   	push   %rbx
  40208a:	48 83 ec 18          	sub    $0x18,%rsp
  40208e:	49 89 fd             	mov    %rdi,%r13
  402091:	48 89 f5             	mov    %rsi,%rbp
  402094:	49 89 d4             	mov    %rdx,%r12
  402097:	bb 01 00 00 00       	mov    $0x1,%ebx
  40209c:	eb 3d                	jmp    4020db <rio_readlineb+0x57>
  40209e:	ba 01 00 00 00       	mov    $0x1,%edx
  4020a3:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  4020a8:	4c 89 ef             	mov    %r13,%rdi
  4020ab:	e8 4d ff ff ff       	callq  401ffd <rio_read>
  4020b0:	83 f8 01             	cmp    $0x1,%eax
  4020b3:	75 12                	jne    4020c7 <rio_readlineb+0x43>
  4020b5:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  4020b9:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  4020be:	88 45 00             	mov    %al,0x0(%rbp)
  4020c1:	3c 0a                	cmp    $0xa,%al
  4020c3:	75 0f                	jne    4020d4 <rio_readlineb+0x50>
  4020c5:	eb 1b                	jmp    4020e2 <rio_readlineb+0x5e>
  4020c7:	85 c0                	test   %eax,%eax
  4020c9:	75 23                	jne    4020ee <rio_readlineb+0x6a>
  4020cb:	48 83 fb 01          	cmp    $0x1,%rbx
  4020cf:	90                   	nop
  4020d0:	75 13                	jne    4020e5 <rio_readlineb+0x61>
  4020d2:	eb 23                	jmp    4020f7 <rio_readlineb+0x73>
  4020d4:	48 83 c3 01          	add    $0x1,%rbx
  4020d8:	48 89 d5             	mov    %rdx,%rbp
  4020db:	4c 39 e3             	cmp    %r12,%rbx
  4020de:	72 be                	jb     40209e <rio_readlineb+0x1a>
  4020e0:	eb 03                	jmp    4020e5 <rio_readlineb+0x61>
  4020e2:	48 89 d5             	mov    %rdx,%rbp
  4020e5:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  4020e9:	48 89 d8             	mov    %rbx,%rax
  4020ec:	eb 0e                	jmp    4020fc <rio_readlineb+0x78>
  4020ee:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4020f5:	eb 05                	jmp    4020fc <rio_readlineb+0x78>
  4020f7:	b8 00 00 00 00       	mov    $0x0,%eax
  4020fc:	48 83 c4 18          	add    $0x18,%rsp
  402100:	5b                   	pop    %rbx
  402101:	5d                   	pop    %rbp
  402102:	41 5c                	pop    %r12
  402104:	41 5d                	pop    %r13
  402106:	c3                   	retq   

0000000000402107 <submitr>:
  402107:	41 57                	push   %r15
  402109:	41 56                	push   %r14
  40210b:	41 55                	push   %r13
  40210d:	41 54                	push   %r12
  40210f:	55                   	push   %rbp
  402110:	53                   	push   %rbx
  402111:	48 81 ec 48 a0 00 00 	sub    $0xa048,%rsp
  402118:	49 89 fc             	mov    %rdi,%r12
  40211b:	89 74 24 04          	mov    %esi,0x4(%rsp)
  40211f:	49 89 d7             	mov    %rdx,%r15
  402122:	49 89 ce             	mov    %rcx,%r14
  402125:	4c 89 44 24 08       	mov    %r8,0x8(%rsp)
  40212a:	4d 89 cd             	mov    %r9,%r13
  40212d:	48 8b 9c 24 80 a0 00 	mov    0xa080(%rsp),%rbx
  402134:	00 
  402135:	c7 84 24 1c 20 00 00 	movl   $0x0,0x201c(%rsp)
  40213c:	00 00 00 00 
  402140:	ba 00 00 00 00       	mov    $0x0,%edx
  402145:	be 01 00 00 00       	mov    $0x1,%esi
  40214a:	bf 02 00 00 00       	mov    $0x2,%edi
  40214f:	e8 8c ec ff ff       	callq  400de0 <socket@plt>
  402154:	89 c5                	mov    %eax,%ebp
  402156:	85 c0                	test   %eax,%eax
  402158:	79 4e                	jns    4021a8 <submitr+0xa1>
  40215a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402161:	3a 20 43 
  402164:	48 89 03             	mov    %rax,(%rbx)
  402167:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40216e:	20 75 6e 
  402171:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402175:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40217c:	74 6f 20 
  40217f:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402183:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  40218a:	65 20 73 
  40218d:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402191:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  402198:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  40219e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4021a3:	e9 68 06 00 00       	jmpq   402810 <submitr+0x709>
  4021a8:	4c 89 e7             	mov    %r12,%rdi
  4021ab:	e8 20 eb ff ff       	callq  400cd0 <gethostbyname@plt>
  4021b0:	48 85 c0             	test   %rax,%rax
  4021b3:	75 67                	jne    40221c <submitr+0x115>
  4021b5:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4021bc:	3a 20 44 
  4021bf:	48 89 03             	mov    %rax,(%rbx)
  4021c2:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  4021c9:	20 75 6e 
  4021cc:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4021d0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4021d7:	74 6f 20 
  4021da:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4021de:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  4021e5:	76 65 20 
  4021e8:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4021ec:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4021f3:	72 20 61 
  4021f6:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4021fa:	c7 43 28 64 64 72 65 	movl   $0x65726464,0x28(%rbx)
  402201:	66 c7 43 2c 73 73    	movw   $0x7373,0x2c(%rbx)
  402207:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  40220b:	89 ef                	mov    %ebp,%edi
  40220d:	e8 7e ea ff ff       	callq  400c90 <close@plt>
  402212:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402217:	e9 f4 05 00 00       	jmpq   402810 <submitr+0x709>
  40221c:	48 c7 84 24 30 a0 00 	movq   $0x0,0xa030(%rsp)
  402223:	00 00 00 00 00 
  402228:	48 c7 84 24 38 a0 00 	movq   $0x0,0xa038(%rsp)
  40222f:	00 00 00 00 00 
  402234:	66 c7 84 24 30 a0 00 	movw   $0x2,0xa030(%rsp)
  40223b:	00 02 00 
  40223e:	48 8b 48 18          	mov    0x18(%rax),%rcx
  402242:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402246:	48 8d b4 24 34 a0 00 	lea    0xa034(%rsp),%rsi
  40224d:	00 
  40224e:	48 8b 39             	mov    (%rcx),%rdi
  402251:	e8 0a eb ff ff       	callq  400d60 <bcopy@plt>
  402256:	0f b7 44 24 04       	movzwl 0x4(%rsp),%eax
  40225b:	66 c1 c8 08          	ror    $0x8,%ax
  40225f:	66 89 84 24 32 a0 00 	mov    %ax,0xa032(%rsp)
  402266:	00 
  402267:	ba 10 00 00 00       	mov    $0x10,%edx
  40226c:	48 8d b4 24 30 a0 00 	lea    0xa030(%rsp),%rsi
  402273:	00 
  402274:	89 ef                	mov    %ebp,%edi
  402276:	e8 55 eb ff ff       	callq  400dd0 <connect@plt>
  40227b:	85 c0                	test   %eax,%eax
  40227d:	79 59                	jns    4022d8 <submitr+0x1d1>
  40227f:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402286:	3a 20 55 
  402289:	48 89 03             	mov    %rax,(%rbx)
  40228c:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402293:	20 74 6f 
  402296:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40229a:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4022a1:	65 63 74 
  4022a4:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4022a8:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  4022af:	68 65 20 
  4022b2:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4022b6:	c7 43 20 73 65 72 76 	movl   $0x76726573,0x20(%rbx)
  4022bd:	66 c7 43 24 65 72    	movw   $0x7265,0x24(%rbx)
  4022c3:	c6 43 26 00          	movb   $0x0,0x26(%rbx)
  4022c7:	89 ef                	mov    %ebp,%edi
  4022c9:	e8 c2 e9 ff ff       	callq  400c90 <close@plt>
  4022ce:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022d3:	e9 38 05 00 00       	jmpq   402810 <submitr+0x709>
  4022d8:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4022df:	4c 89 ef             	mov    %r13,%rdi
  4022e2:	b8 00 00 00 00       	mov    $0x0,%eax
  4022e7:	48 89 d1             	mov    %rdx,%rcx
  4022ea:	f2 ae                	repnz scas %es:(%rdi),%al
  4022ec:	48 f7 d1             	not    %rcx
  4022ef:	48 89 ce             	mov    %rcx,%rsi
  4022f2:	4c 89 ff             	mov    %r15,%rdi
  4022f5:	48 89 d1             	mov    %rdx,%rcx
  4022f8:	f2 ae                	repnz scas %es:(%rdi),%al
  4022fa:	48 f7 d1             	not    %rcx
  4022fd:	49 89 c8             	mov    %rcx,%r8
  402300:	4c 89 f7             	mov    %r14,%rdi
  402303:	48 89 d1             	mov    %rdx,%rcx
  402306:	f2 ae                	repnz scas %es:(%rdi),%al
  402308:	49 29 c8             	sub    %rcx,%r8
  40230b:	48 8b 7c 24 08       	mov    0x8(%rsp),%rdi
  402310:	48 89 d1             	mov    %rdx,%rcx
  402313:	f2 ae                	repnz scas %es:(%rdi),%al
  402315:	49 29 c8             	sub    %rcx,%r8
  402318:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  40231d:	49 8d 44 00 7b       	lea    0x7b(%r8,%rax,1),%rax
  402322:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  402328:	76 72                	jbe    40239c <submitr+0x295>
  40232a:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402331:	3a 20 52 
  402334:	48 89 03             	mov    %rax,(%rbx)
  402337:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  40233e:	20 73 74 
  402341:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402345:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  40234c:	74 6f 6f 
  40234f:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402353:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  40235a:	65 2e 20 
  40235d:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402361:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402368:	61 73 65 
  40236b:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40236f:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  402376:	49 54 52 
  402379:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40237d:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402384:	55 46 00 
  402387:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40238b:	89 ef                	mov    %ebp,%edi
  40238d:	e8 fe e8 ff ff       	callq  400c90 <close@plt>
  402392:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402397:	e9 74 04 00 00       	jmpq   402810 <submitr+0x709>
  40239c:	48 8d b4 24 20 40 00 	lea    0x4020(%rsp),%rsi
  4023a3:	00 
  4023a4:	b9 00 04 00 00       	mov    $0x400,%ecx
  4023a9:	b8 00 00 00 00       	mov    $0x0,%eax
  4023ae:	48 89 f7             	mov    %rsi,%rdi
  4023b1:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  4023b4:	4c 89 ef             	mov    %r13,%rdi
  4023b7:	e8 0f fb ff ff       	callq  401ecb <urlencode>
  4023bc:	85 c0                	test   %eax,%eax
  4023be:	0f 89 8a 00 00 00    	jns    40244e <submitr+0x347>
  4023c4:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4023cb:	3a 20 52 
  4023ce:	48 89 03             	mov    %rax,(%rbx)
  4023d1:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4023d8:	20 73 74 
  4023db:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4023df:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4023e6:	63 6f 6e 
  4023e9:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4023ed:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  4023f4:	20 61 6e 
  4023f7:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4023fb:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  402402:	67 61 6c 
  402405:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402409:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  402410:	6e 70 72 
  402413:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402417:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  40241e:	6c 65 20 
  402421:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402425:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  40242c:	63 74 65 
  40242f:	48 89 43 38          	mov    %rax,0x38(%rbx)
  402433:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  402439:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  40243d:	89 ef                	mov    %ebp,%edi
  40243f:	e8 4c e8 ff ff       	callq  400c90 <close@plt>
  402444:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402449:	e9 c2 03 00 00       	jmpq   402810 <submitr+0x709>
  40244e:	4d 89 e1             	mov    %r12,%r9
  402451:	4c 8d 84 24 20 40 00 	lea    0x4020(%rsp),%r8
  402458:	00 
  402459:	4c 89 f9             	mov    %r15,%rcx
  40245c:	4c 89 f2             	mov    %r14,%rdx
  40245f:	be 28 35 40 00       	mov    $0x403528,%esi
  402464:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  40246b:	00 
  40246c:	b8 00 00 00 00       	mov    $0x0,%eax
  402471:	e8 3a e9 ff ff       	callq  400db0 <sprintf@plt>
  402476:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  40247d:	00 
  40247e:	b8 00 00 00 00       	mov    $0x0,%eax
  402483:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40248a:	f2 ae                	repnz scas %es:(%rdi),%al
  40248c:	48 f7 d1             	not    %rcx
  40248f:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402493:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  40249a:	00 
  40249b:	89 ef                	mov    %ebp,%edi
  40249d:	e8 ff fa ff ff       	callq  401fa1 <rio_writen>
  4024a2:	48 85 c0             	test   %rax,%rax
  4024a5:	79 6e                	jns    402515 <submitr+0x40e>
  4024a7:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4024ae:	3a 20 43 
  4024b1:	48 89 03             	mov    %rax,(%rbx)
  4024b4:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4024bb:	20 75 6e 
  4024be:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4024c2:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4024c9:	74 6f 20 
  4024cc:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4024d0:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  4024d7:	20 74 6f 
  4024da:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4024de:	48 b8 20 74 68 65 20 	movabs $0x7365722065687420,%rax
  4024e5:	72 65 73 
  4024e8:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4024ec:	48 b8 75 6c 74 20 73 	movabs $0x7672657320746c75,%rax
  4024f3:	65 72 76 
  4024f6:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4024fa:	66 c7 43 30 65 72    	movw   $0x7265,0x30(%rbx)
  402500:	c6 43 32 00          	movb   $0x0,0x32(%rbx)
  402504:	89 ef                	mov    %ebp,%edi
  402506:	e8 85 e7 ff ff       	callq  400c90 <close@plt>
  40250b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402510:	e9 fb 02 00 00       	jmpq   402810 <submitr+0x709>
  402515:	89 ee                	mov    %ebp,%esi
  402517:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  40251e:	00 
  40251f:	e8 6c f9 ff ff       	callq  401e90 <rio_readinitb>
  402524:	ba 00 20 00 00       	mov    $0x2000,%edx
  402529:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  402530:	00 
  402531:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  402538:	00 
  402539:	e8 46 fb ff ff       	callq  402084 <rio_readlineb>
  40253e:	48 85 c0             	test   %rax,%rax
  402541:	7f 7d                	jg     4025c0 <submitr+0x4b9>
  402543:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40254a:	3a 20 43 
  40254d:	48 89 03             	mov    %rax,(%rbx)
  402550:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402557:	20 75 6e 
  40255a:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40255e:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402565:	74 6f 20 
  402568:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40256c:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  402573:	66 69 72 
  402576:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40257a:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402581:	61 64 65 
  402584:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402588:	48 b8 72 20 66 72 6f 	movabs $0x72206d6f72662072,%rax
  40258f:	6d 20 72 
  402592:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402596:	48 b8 65 73 75 6c 74 	movabs $0x657320746c757365,%rax
  40259d:	20 73 65 
  4025a0:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4025a4:	c7 43 38 72 76 65 72 	movl   $0x72657672,0x38(%rbx)
  4025ab:	c6 43 3c 00          	movb   $0x0,0x3c(%rbx)
  4025af:	89 ef                	mov    %ebp,%edi
  4025b1:	e8 da e6 ff ff       	callq  400c90 <close@plt>
  4025b6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025bb:	e9 50 02 00 00       	jmpq   402810 <submitr+0x709>
  4025c0:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  4025c5:	48 8d 8c 24 1c 20 00 	lea    0x201c(%rsp),%rcx
  4025cc:	00 
  4025cd:	48 8d 94 24 20 20 00 	lea    0x2020(%rsp),%rdx
  4025d4:	00 
  4025d5:	be 9f 35 40 00       	mov    $0x40359f,%esi
  4025da:	48 8d bc 24 20 60 00 	lea    0x6020(%rsp),%rdi
  4025e1:	00 
  4025e2:	b8 00 00 00 00       	mov    $0x0,%eax
  4025e7:	e8 54 e7 ff ff       	callq  400d40 <__isoc99_sscanf@plt>
  4025ec:	e9 98 00 00 00       	jmpq   402689 <submitr+0x582>
  4025f1:	ba 00 20 00 00       	mov    $0x2000,%edx
  4025f6:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  4025fd:	00 
  4025fe:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  402605:	00 
  402606:	e8 79 fa ff ff       	callq  402084 <rio_readlineb>
  40260b:	48 85 c0             	test   %rax,%rax
  40260e:	7f 79                	jg     402689 <submitr+0x582>
  402610:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402617:	3a 20 43 
  40261a:	48 89 03             	mov    %rax,(%rbx)
  40261d:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402624:	20 75 6e 
  402627:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40262b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402632:	74 6f 20 
  402635:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402639:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  402640:	68 65 61 
  402643:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402647:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  40264e:	66 72 6f 
  402651:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402655:	48 b8 6d 20 74 68 65 	movabs $0x657220656874206d,%rax
  40265c:	20 72 65 
  40265f:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402663:	48 b8 73 75 6c 74 20 	movabs $0x72657320746c7573,%rax
  40266a:	73 65 72 
  40266d:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402671:	c7 43 38 76 65 72 00 	movl   $0x726576,0x38(%rbx)
  402678:	89 ef                	mov    %ebp,%edi
  40267a:	e8 11 e6 ff ff       	callq  400c90 <close@plt>
  40267f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402684:	e9 87 01 00 00       	jmpq   402810 <submitr+0x709>
  402689:	0f b6 84 24 20 60 00 	movzbl 0x6020(%rsp),%eax
  402690:	00 
  402691:	83 e8 0d             	sub    $0xd,%eax
  402694:	75 15                	jne    4026ab <submitr+0x5a4>
  402696:	0f b6 84 24 21 60 00 	movzbl 0x6021(%rsp),%eax
  40269d:	00 
  40269e:	83 e8 0a             	sub    $0xa,%eax
  4026a1:	75 08                	jne    4026ab <submitr+0x5a4>
  4026a3:	0f b6 84 24 22 60 00 	movzbl 0x6022(%rsp),%eax
  4026aa:	00 
  4026ab:	85 c0                	test   %eax,%eax
  4026ad:	0f 85 3e ff ff ff    	jne    4025f1 <submitr+0x4ea>
  4026b3:	ba 00 20 00 00       	mov    $0x2000,%edx
  4026b8:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  4026bf:	00 
  4026c0:	48 8d bc 24 20 80 00 	lea    0x8020(%rsp),%rdi
  4026c7:	00 
  4026c8:	e8 b7 f9 ff ff       	callq  402084 <rio_readlineb>
  4026cd:	48 85 c0             	test   %rax,%rax
  4026d0:	0f 8f 83 00 00 00    	jg     402759 <submitr+0x652>
  4026d6:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4026dd:	3a 20 43 
  4026e0:	48 89 03             	mov    %rax,(%rbx)
  4026e3:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4026ea:	20 75 6e 
  4026ed:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4026f1:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4026f8:	74 6f 20 
  4026fb:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4026ff:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402706:	73 74 61 
  402709:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40270d:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402714:	65 73 73 
  402717:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40271b:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402722:	72 6f 6d 
  402725:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402729:	48 b8 20 72 65 73 75 	movabs $0x20746c7573657220,%rax
  402730:	6c 74 20 
  402733:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402737:	c7 43 38 73 65 72 76 	movl   $0x76726573,0x38(%rbx)
  40273e:	66 c7 43 3c 65 72    	movw   $0x7265,0x3c(%rbx)
  402744:	c6 43 3e 00          	movb   $0x0,0x3e(%rbx)
  402748:	89 ef                	mov    %ebp,%edi
  40274a:	e8 41 e5 ff ff       	callq  400c90 <close@plt>
  40274f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402754:	e9 b7 00 00 00       	jmpq   402810 <submitr+0x709>
  402759:	8b 94 24 1c 20 00 00 	mov    0x201c(%rsp),%edx
  402760:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  402766:	74 28                	je     402790 <submitr+0x689>
  402768:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
  40276d:	be 68 35 40 00       	mov    $0x403568,%esi
  402772:	48 89 df             	mov    %rbx,%rdi
  402775:	b8 00 00 00 00       	mov    $0x0,%eax
  40277a:	e8 31 e6 ff ff       	callq  400db0 <sprintf@plt>
  40277f:	89 ef                	mov    %ebp,%edi
  402781:	e8 0a e5 ff ff       	callq  400c90 <close@plt>
  402786:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40278b:	e9 80 00 00 00       	jmpq   402810 <submitr+0x709>
  402790:	48 8d b4 24 20 60 00 	lea    0x6020(%rsp),%rsi
  402797:	00 
  402798:	48 89 df             	mov    %rbx,%rdi
  40279b:	e8 80 e4 ff ff       	callq  400c20 <strcpy@plt>
  4027a0:	89 ef                	mov    %ebp,%edi
  4027a2:	e8 e9 e4 ff ff       	callq  400c90 <close@plt>
  4027a7:	0f b6 03             	movzbl (%rbx),%eax
  4027aa:	83 e8 4f             	sub    $0x4f,%eax
  4027ad:	75 18                	jne    4027c7 <submitr+0x6c0>
  4027af:	0f b6 53 01          	movzbl 0x1(%rbx),%edx
  4027b3:	83 ea 4b             	sub    $0x4b,%edx
  4027b6:	75 11                	jne    4027c9 <submitr+0x6c2>
  4027b8:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  4027bc:	83 ea 0a             	sub    $0xa,%edx
  4027bf:	75 08                	jne    4027c9 <submitr+0x6c2>
  4027c1:	0f b6 53 03          	movzbl 0x3(%rbx),%edx
  4027c5:	eb 02                	jmp    4027c9 <submitr+0x6c2>
  4027c7:	89 c2                	mov    %eax,%edx
  4027c9:	85 d2                	test   %edx,%edx
  4027cb:	74 30                	je     4027fd <submitr+0x6f6>
  4027cd:	bf b0 35 40 00       	mov    $0x4035b0,%edi
  4027d2:	b9 05 00 00 00       	mov    $0x5,%ecx
  4027d7:	48 89 de             	mov    %rbx,%rsi
  4027da:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4027dc:	0f 97 c1             	seta   %cl
  4027df:	0f 92 c2             	setb   %dl
  4027e2:	38 d1                	cmp    %dl,%cl
  4027e4:	74 1e                	je     402804 <submitr+0x6fd>
  4027e6:	85 c0                	test   %eax,%eax
  4027e8:	75 0d                	jne    4027f7 <submitr+0x6f0>
  4027ea:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  4027ee:	83 e8 4b             	sub    $0x4b,%eax
  4027f1:	75 04                	jne    4027f7 <submitr+0x6f0>
  4027f3:	0f b6 43 02          	movzbl 0x2(%rbx),%eax
  4027f7:	85 c0                	test   %eax,%eax
  4027f9:	75 10                	jne    40280b <submitr+0x704>
  4027fb:	eb 13                	jmp    402810 <submitr+0x709>
  4027fd:	b8 00 00 00 00       	mov    $0x0,%eax
  402802:	eb 0c                	jmp    402810 <submitr+0x709>
  402804:	b8 00 00 00 00       	mov    $0x0,%eax
  402809:	eb 05                	jmp    402810 <submitr+0x709>
  40280b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402810:	48 81 c4 48 a0 00 00 	add    $0xa048,%rsp
  402817:	5b                   	pop    %rbx
  402818:	5d                   	pop    %rbp
  402819:	41 5c                	pop    %r12
  40281b:	41 5d                	pop    %r13
  40281d:	41 5e                	pop    %r14
  40281f:	41 5f                	pop    %r15
  402821:	c3                   	retq   

0000000000402822 <init_timeout>:
  402822:	53                   	push   %rbx
  402823:	89 fb                	mov    %edi,%ebx
  402825:	85 ff                	test   %edi,%edi
  402827:	74 1f                	je     402848 <init_timeout+0x26>
  402829:	85 ff                	test   %edi,%edi
  40282b:	79 05                	jns    402832 <init_timeout+0x10>
  40282d:	bb 00 00 00 00       	mov    $0x0,%ebx
  402832:	be a2 1e 40 00       	mov    $0x401ea2,%esi
  402837:	bf 0e 00 00 00       	mov    $0xe,%edi
  40283c:	e8 7f e4 ff ff       	callq  400cc0 <signal@plt>
  402841:	89 df                	mov    %ebx,%edi
  402843:	e8 38 e4 ff ff       	callq  400c80 <alarm@plt>
  402848:	5b                   	pop    %rbx
  402849:	c3                   	retq   

000000000040284a <init_driver>:
  40284a:	55                   	push   %rbp
  40284b:	53                   	push   %rbx
  40284c:	48 83 ec 18          	sub    $0x18,%rsp
  402850:	48 89 fd             	mov    %rdi,%rbp
  402853:	be 01 00 00 00       	mov    $0x1,%esi
  402858:	bf 0d 00 00 00       	mov    $0xd,%edi
  40285d:	e8 5e e4 ff ff       	callq  400cc0 <signal@plt>
  402862:	be 01 00 00 00       	mov    $0x1,%esi
  402867:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40286c:	e8 4f e4 ff ff       	callq  400cc0 <signal@plt>
  402871:	be 01 00 00 00       	mov    $0x1,%esi
  402876:	bf 1d 00 00 00       	mov    $0x1d,%edi
  40287b:	e8 40 e4 ff ff       	callq  400cc0 <signal@plt>
  402880:	ba 00 00 00 00       	mov    $0x0,%edx
  402885:	be 01 00 00 00       	mov    $0x1,%esi
  40288a:	bf 02 00 00 00       	mov    $0x2,%edi
  40288f:	e8 4c e5 ff ff       	callq  400de0 <socket@plt>
  402894:	89 c3                	mov    %eax,%ebx
  402896:	85 c0                	test   %eax,%eax
  402898:	79 4f                	jns    4028e9 <init_driver+0x9f>
  40289a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4028a1:	3a 20 43 
  4028a4:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4028a8:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4028af:	20 75 6e 
  4028b2:	48 89 45 08          	mov    %rax,0x8(%rbp)
  4028b6:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4028bd:	74 6f 20 
  4028c0:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4028c4:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  4028cb:	65 20 73 
  4028ce:	48 89 45 18          	mov    %rax,0x18(%rbp)
  4028d2:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  4028d9:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  4028df:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028e4:	e9 23 01 00 00       	jmpq   402a0c <init_driver+0x1c2>
  4028e9:	bf b5 35 40 00       	mov    $0x4035b5,%edi
  4028ee:	e8 dd e3 ff ff       	callq  400cd0 <gethostbyname@plt>
  4028f3:	48 85 c0             	test   %rax,%rax
  4028f6:	75 68                	jne    402960 <init_driver+0x116>
  4028f8:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4028ff:	3a 20 44 
  402902:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402906:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  40290d:	20 75 6e 
  402910:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402914:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40291b:	74 6f 20 
  40291e:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402922:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402929:	76 65 20 
  40292c:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402930:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402937:	72 20 61 
  40293a:	48 89 45 20          	mov    %rax,0x20(%rbp)
  40293e:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402945:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  40294b:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  40294f:	89 df                	mov    %ebx,%edi
  402951:	e8 3a e3 ff ff       	callq  400c90 <close@plt>
  402956:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40295b:	e9 ac 00 00 00       	jmpq   402a0c <init_driver+0x1c2>
  402960:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402967:	00 
  402968:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  40296f:	00 00 
  402971:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402977:	48 8b 48 18          	mov    0x18(%rax),%rcx
  40297b:	48 63 50 14          	movslq 0x14(%rax),%rdx
  40297f:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  402984:	48 8b 39             	mov    (%rcx),%rdi
  402987:	e8 d4 e3 ff ff       	callq  400d60 <bcopy@plt>
  40298c:	66 c7 44 24 02 47 26 	movw   $0x2647,0x2(%rsp)
  402993:	ba 10 00 00 00       	mov    $0x10,%edx
  402998:	48 89 e6             	mov    %rsp,%rsi
  40299b:	89 df                	mov    %ebx,%edi
  40299d:	e8 2e e4 ff ff       	callq  400dd0 <connect@plt>
  4029a2:	85 c0                	test   %eax,%eax
  4029a4:	79 50                	jns    4029f6 <init_driver+0x1ac>
  4029a6:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  4029ad:	3a 20 55 
  4029b0:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4029b4:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  4029bb:	20 74 6f 
  4029be:	48 89 45 08          	mov    %rax,0x8(%rbp)
  4029c2:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  4029c9:	65 63 74 
  4029cc:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4029d0:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  4029d7:	65 72 76 
  4029da:	48 89 45 18          	mov    %rax,0x18(%rbp)
  4029de:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  4029e4:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  4029e8:	89 df                	mov    %ebx,%edi
  4029ea:	e8 a1 e2 ff ff       	callq  400c90 <close@plt>
  4029ef:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029f4:	eb 16                	jmp    402a0c <init_driver+0x1c2>
  4029f6:	89 df                	mov    %ebx,%edi
  4029f8:	e8 93 e2 ff ff       	callq  400c90 <close@plt>
  4029fd:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402a03:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402a07:	b8 00 00 00 00       	mov    $0x0,%eax
  402a0c:	48 83 c4 18          	add    $0x18,%rsp
  402a10:	5b                   	pop    %rbx
  402a11:	5d                   	pop    %rbp
  402a12:	c3                   	retq   

0000000000402a13 <driver_post>:
  402a13:	53                   	push   %rbx
  402a14:	48 83 ec 10          	sub    $0x10,%rsp
  402a18:	4c 89 cb             	mov    %r9,%rbx
  402a1b:	45 85 c0             	test   %r8d,%r8d
  402a1e:	74 22                	je     402a42 <driver_post+0x2f>
  402a20:	48 89 ce             	mov    %rcx,%rsi
  402a23:	bf c9 35 40 00       	mov    $0x4035c9,%edi
  402a28:	b8 00 00 00 00       	mov    $0x0,%eax
  402a2d:	e8 2e e2 ff ff       	callq  400c60 <printf@plt>
  402a32:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402a37:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402a3b:	b8 00 00 00 00       	mov    $0x0,%eax
  402a40:	eb 39                	jmp    402a7b <driver_post+0x68>
  402a42:	48 85 ff             	test   %rdi,%rdi
  402a45:	74 26                	je     402a6d <driver_post+0x5a>
  402a47:	80 3f 00             	cmpb   $0x0,(%rdi)
  402a4a:	74 21                	je     402a6d <driver_post+0x5a>
  402a4c:	4c 89 0c 24          	mov    %r9,(%rsp)
  402a50:	49 89 c9             	mov    %rcx,%r9
  402a53:	49 89 d0             	mov    %rdx,%r8
  402a56:	48 89 f9             	mov    %rdi,%rcx
  402a59:	48 89 f2             	mov    %rsi,%rdx
  402a5c:	be 26 47 00 00       	mov    $0x4726,%esi
  402a61:	bf b5 35 40 00       	mov    $0x4035b5,%edi
  402a66:	e8 9c f6 ff ff       	callq  402107 <submitr>
  402a6b:	eb 0e                	jmp    402a7b <driver_post+0x68>
  402a6d:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402a72:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402a76:	b8 00 00 00 00       	mov    $0x0,%eax
  402a7b:	48 83 c4 10          	add    $0x10,%rsp
  402a7f:	5b                   	pop    %rbx
  402a80:	c3                   	retq   

0000000000402a81 <check>:
  402a81:	89 f8                	mov    %edi,%eax
  402a83:	c1 e8 1c             	shr    $0x1c,%eax
  402a86:	85 c0                	test   %eax,%eax
  402a88:	74 1d                	je     402aa7 <check+0x26>
  402a8a:	b9 00 00 00 00       	mov    $0x0,%ecx
  402a8f:	eb 0b                	jmp    402a9c <check+0x1b>
  402a91:	89 f8                	mov    %edi,%eax
  402a93:	d3 e8                	shr    %cl,%eax
  402a95:	3c 0a                	cmp    $0xa,%al
  402a97:	74 14                	je     402aad <check+0x2c>
  402a99:	83 c1 08             	add    $0x8,%ecx
  402a9c:	83 f9 1f             	cmp    $0x1f,%ecx
  402a9f:	7e f0                	jle    402a91 <check+0x10>
  402aa1:	b8 01 00 00 00       	mov    $0x1,%eax
  402aa6:	c3                   	retq   
  402aa7:	b8 00 00 00 00       	mov    $0x0,%eax
  402aac:	c3                   	retq   
  402aad:	b8 00 00 00 00       	mov    $0x0,%eax
  402ab2:	c3                   	retq   

0000000000402ab3 <gencookie>:
  402ab3:	53                   	push   %rbx
  402ab4:	83 c7 01             	add    $0x1,%edi
  402ab7:	e8 44 e1 ff ff       	callq  400c00 <srandom@plt>
  402abc:	e8 5f e2 ff ff       	callq  400d20 <random@plt>
  402ac1:	89 c3                	mov    %eax,%ebx
  402ac3:	89 c7                	mov    %eax,%edi
  402ac5:	e8 b7 ff ff ff       	callq  402a81 <check>
  402aca:	85 c0                	test   %eax,%eax
  402acc:	74 ee                	je     402abc <gencookie+0x9>
  402ace:	89 d8                	mov    %ebx,%eax
  402ad0:	5b                   	pop    %rbx
  402ad1:	c3                   	retq   
  402ad2:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402ad9:	00 00 00 
  402adc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000402ae0 <__libc_csu_init>:
  402ae0:	41 57                	push   %r15
  402ae2:	41 89 ff             	mov    %edi,%r15d
  402ae5:	41 56                	push   %r14
  402ae7:	49 89 f6             	mov    %rsi,%r14
  402aea:	41 55                	push   %r13
  402aec:	49 89 d5             	mov    %rdx,%r13
  402aef:	41 54                	push   %r12
  402af1:	4c 8d 25 18 13 20 00 	lea    0x201318(%rip),%r12        # 603e10 <__frame_dummy_init_array_entry>
  402af8:	55                   	push   %rbp
  402af9:	48 8d 2d 18 13 20 00 	lea    0x201318(%rip),%rbp        # 603e18 <__init_array_end>
  402b00:	53                   	push   %rbx
  402b01:	4c 29 e5             	sub    %r12,%rbp
  402b04:	31 db                	xor    %ebx,%ebx
  402b06:	48 c1 fd 03          	sar    $0x3,%rbp
  402b0a:	48 83 ec 08          	sub    $0x8,%rsp
  402b0e:	e8 9d e0 ff ff       	callq  400bb0 <_init>
  402b13:	48 85 ed             	test   %rbp,%rbp
  402b16:	74 1e                	je     402b36 <__libc_csu_init+0x56>
  402b18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402b1f:	00 
  402b20:	4c 89 ea             	mov    %r13,%rdx
  402b23:	4c 89 f6             	mov    %r14,%rsi
  402b26:	44 89 ff             	mov    %r15d,%edi
  402b29:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402b2d:	48 83 c3 01          	add    $0x1,%rbx
  402b31:	48 39 eb             	cmp    %rbp,%rbx
  402b34:	75 ea                	jne    402b20 <__libc_csu_init+0x40>
  402b36:	48 83 c4 08          	add    $0x8,%rsp
  402b3a:	5b                   	pop    %rbx
  402b3b:	5d                   	pop    %rbp
  402b3c:	41 5c                	pop    %r12
  402b3e:	41 5d                	pop    %r13
  402b40:	41 5e                	pop    %r14
  402b42:	41 5f                	pop    %r15
  402b44:	c3                   	retq   
  402b45:	90                   	nop
  402b46:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402b4d:	00 00 00 

0000000000402b50 <__libc_csu_fini>:
  402b50:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402b54 <_fini>:
  402b54:	48 83 ec 08          	sub    $0x8,%rsp
  402b58:	48 83 c4 08          	add    $0x8,%rsp
  402b5c:	c3   