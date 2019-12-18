0000000000401026 <phase_4>:
401026:	48 83 ec 18          	sub    $0x18,%rsp
40102a:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
40102f:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
401034:	be d5 27 40 00       	mov    $0x4027d5,%esi
401039:	b8 00 00 00 00       	mov    $0x0,%eax
40103e:	e8 cd fb ff ff       	callq  400c10 <__isoc99_sscanf@plt>
401043:	83 f8 02             	cmp    $0x2,%eax
401046:	75 0c                	jne    401054 <phase_4+0x2e>
401048:	8b 44 24 0c          	mov    0xc(%rsp),%eax
40104c:	83 e8 02             	sub    $0x2,%eax
40104f:	83 f8 02             	cmp    $0x2,%eax
401052:	76 05                	jbe    401059 <phase_4+0x33>
401054:	e8 26 05 00 00       	callq  40157f <explode_bomb>
401059:	8b 74 24 0c          	mov    0xc(%rsp),%esi
40105d:	bf 08 00 00 00       	mov    $0x8,%edi
401062:	e8 87 ff ff ff       	callq  400fee <func4>
401067:	3b 44 24 08          	cmp    0x8(%rsp),%eax
40106b:	74 05                	je     401072 <phase_4+0x4c>
40106d:	e8 0d 05 00 00       	callq  40157f <explode_bomb>
401072:	48 83 c4 18          	add    $0x18,%rsp
401076:	c3                   	retq   