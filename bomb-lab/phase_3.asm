0000000000400f43 <phase_3>:
400f43:	48 83 ec 18          	sub    $0x18,%rsp
400f47:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
400f4c:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
400f51:	be d5 27 40 00       	mov    $0x4027d5,%esi
400f56:	b8 00 00 00 00       	mov    $0x0,%eax
400f5b:	e8 b0 fc ff ff       	callq  400c10 <__isoc99_sscanf@plt>
400f60:	83 f8 01             	cmp    $0x1,%eax
400f63:	7f 05                	jg     400f6a <phase_3+0x27>
400f65:	e8 15 06 00 00       	callq  40157f <explode_bomb>
400f6a:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)
400f6f:	77 5c                	ja     400fcd <phase_3+0x8a>
400f71:	8b 44 24 0c          	mov    0xc(%rsp),%eax
400f75:	ff 24 c5 e0 24 40 00 	jmpq   *0x4024e0(,%rax,8)
400f7c:	b8 00 00 00 00       	mov    $0x0,%eax
400f81:	eb 05                	jmp    400f88 <phase_3+0x45>
400f83:	b8 da 00 00 00       	mov    $0xda,%eax
400f88:	2d a3 03 00 00       	sub    $0x3a3,%eax
400f8d:	eb 05                	jmp    400f94 <phase_3+0x51>
400f8f:	b8 00 00 00 00       	mov    $0x0,%eax
400f94:	05 2b 01 00 00       	add    $0x12b,%eax
400f99:	eb 05                	jmp    400fa0 <phase_3+0x5d>
400f9b:	b8 00 00 00 00       	mov    $0x0,%eax
400fa0:	83 e8 64             	sub    $0x64,%eax
400fa3:	eb 05                	jmp    400faa <phase_3+0x67>
400fa5:	b8 00 00 00 00       	mov    $0x0,%eax
400faa:	83 c0 64             	add    $0x64,%eax
400fad:	eb 05                	jmp    400fb4 <phase_3+0x71>
400faf:	b8 00 00 00 00       	mov    $0x0,%eax
400fb4:	83 e8 64             	sub    $0x64,%eax
400fb7:	eb 05                	jmp    400fbe <phase_3+0x7b>
400fb9:	b8 00 00 00 00       	mov    $0x0,%eax
400fbe:	83 c0 64             	add    $0x64,%eax
400fc1:	eb 05                	jmp    400fc8 <phase_3+0x85>
400fc3:	b8 00 00 00 00       	mov    $0x0,%eax
400fc8:	83 e8 64             	sub    $0x64,%eax
400fcb:	eb 0a                	jmp    400fd7 <phase_3+0x94>
400fcd:	e8 ad 05 00 00       	callq  40157f <explode_bomb>
400fd2:	b8 00 00 00 00       	mov    $0x0,%eax
400fd7:	83 7c 24 0c 05       	cmpl   $0x5,0xc(%rsp)
400fdc:	7f 06                	jg     400fe4 <phase_3+0xa1>
400fde:	3b 44 24 08          	cmp    0x8(%rsp),%eax
400fe2:	74 05                	je     400fe9 <phase_3+0xa6>
400fe4:	e8 96 05 00 00       	callq  40157f <explode_bomb>
400fe9:	48 83 c4 18          	add    $0x18,%rsp
400fed:	c3                   	retq   