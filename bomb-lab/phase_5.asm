0000000000401077 <phase_5>:
401077:	48 83 ec 18          	sub    $0x18,%rsp
40107b:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
401080:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
401085:	be d5 27 40 00       	mov    $0x4027d5,%esi
40108a:	b8 00 00 00 00       	mov    $0x0,%eax
40108f:	e8 7c fb ff ff       	callq  400c10 <__isoc99_sscanf@plt>
401094:	83 f8 01             	cmp    $0x1,%eax
401097:	7f 05                	jg     40109e <phase_5+0x27>
401099:	e8 e1 04 00 00       	callq  40157f <explode_bomb>
40109e:	8b 44 24 0c          	mov    0xc(%rsp),%eax
4010a2:	83 e0 0f             	and    $0xf,%eax
4010a5:	89 44 24 0c          	mov    %eax,0xc(%rsp)
4010a9:	83 f8 0f             	cmp    $0xf,%eax
4010ac:	74 2c                	je     4010da <phase_5+0x63>
4010ae:	b9 00 00 00 00       	mov    $0x0,%ecx
4010b3:	ba 00 00 00 00       	mov    $0x0,%edx
4010b8:	83 c2 01             	add    $0x1,%edx
4010bb:	48 98                	cltq   
4010bd:	8b 04 85 20 25 40 00 	mov    0x402520(,%rax,4),%eax
4010c4:	01 c1                	add    %eax,%ecx
4010c6:	83 f8 0f             	cmp    $0xf,%eax
4010c9:	75 ed                	jne    4010b8 <phase_5+0x41>
4010cb:	89 44 24 0c          	mov    %eax,0xc(%rsp)
4010cf:	83 fa 0f             	cmp    $0xf,%edx
4010d2:	75 06                	jne    4010da <phase_5+0x63>
4010d4:	3b 4c 24 08          	cmp    0x8(%rsp),%ecx
4010d8:	74 05                	je     4010df <phase_5+0x68>
4010da:	e8 a0 04 00 00       	callq  40157f <explode_bomb>
4010df:	48 83 c4 18          	add    $0x18,%rsp
4010e3:	c3                   	retq   