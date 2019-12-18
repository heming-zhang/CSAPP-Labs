00000000004010e4 <phase_6>:
4010e4:	41 56                	push   %r14
4010e6:	41 55                	push   %r13
4010e8:	41 54                	push   %r12
4010ea:	55                   	push   %rbp
4010eb:	53                   	push   %rbx
4010ec:	48 83 ec 50          	sub    $0x50,%rsp
4010f0:	4c 8d 6c 24 30       	lea    0x30(%rsp),%r13
4010f5:	4c 89 ee             	mov    %r13,%rsi
4010f8:	e8 b8 04 00 00       	callq  4015b5 <read_six_numbers>
4010fd:	4d 89 ee             	mov    %r13,%r14
401100:	41 bc 00 00 00 00    	mov    $0x0,%r12d
401106:	4c 89 ed             	mov    %r13,%rbp
401109:	41 8b 45 00          	mov    0x0(%r13),%eax
40110d:	83 e8 01             	sub    $0x1,%eax
401110:	83 f8 05             	cmp    $0x5,%eax
401113:	76 05                	jbe    40111a <phase_6+0x36>
401115:	e8 65 04 00 00       	callq  40157f <explode_bomb>
40111a:	41 83 c4 01          	add    $0x1,%r12d
40111e:	41 83 fc 06          	cmp    $0x6,%r12d
401122:	74 22                	je     401146 <phase_6+0x62>
401124:	44 89 e3             	mov    %r12d,%ebx
401127:	48 63 c3             	movslq %ebx,%rax
40112a:	8b 44 84 30          	mov    0x30(%rsp,%rax,4),%eax
40112e:	39 45 00             	cmp    %eax,0x0(%rbp)
401131:	75 05                	jne    401138 <phase_6+0x54>
401133:	e8 47 04 00 00       	callq  40157f <explode_bomb>
401138:	83 c3 01             	add    $0x1,%ebx
40113b:	83 fb 05             	cmp    $0x5,%ebx
40113e:	7e e7                	jle    401127 <phase_6+0x43>
401140:	49 83 c5 04          	add    $0x4,%r13
401144:	eb c0                	jmp    401106 <phase_6+0x22>
401146:	48 8d 74 24 48       	lea    0x48(%rsp),%rsi
40114b:	4c 89 f0             	mov    %r14,%rax
40114e:	b9 07 00 00 00       	mov    $0x7,%ecx
401153:	89 ca                	mov    %ecx,%edx
401155:	2b 10                	sub    (%rax),%edx
401157:	89 10                	mov    %edx,(%rax)
401159:	48 83 c0 04          	add    $0x4,%rax
40115d:	48 39 f0             	cmp    %rsi,%rax
401160:	75 f1                	jne    401153 <phase_6+0x6f>
401162:	be 00 00 00 00       	mov    $0x0,%esi
401167:	eb 20                	jmp    401189 <phase_6+0xa5>
401169:	48 8b 52 08          	mov    0x8(%rdx),%rdx
40116d:	83 c0 01             	add    $0x1,%eax
401170:	39 c8                	cmp    %ecx,%eax
401172:	75 f5                	jne    401169 <phase_6+0x85>
401174:	eb 05                	jmp    40117b <phase_6+0x97>
401176:	ba 00 43 60 00       	mov    $0x604300,%edx
40117b:	48 89 14 74          	mov    %rdx,(%rsp,%rsi,2)
40117f:	48 83 c6 04          	add    $0x4,%rsi
401183:	48 83 fe 18          	cmp    $0x18,%rsi
401187:	74 15                	je     40119e <phase_6+0xba>
401189:	8b 4c 34 30          	mov    0x30(%rsp,%rsi,1),%ecx
40118d:	83 f9 01             	cmp    $0x1,%ecx
401190:	7e e4                	jle    401176 <phase_6+0x92>
401192:	b8 01 00 00 00       	mov    $0x1,%eax
401197:	ba 00 43 60 00       	mov    $0x604300,%edx
40119c:	eb cb                	jmp    401169 <phase_6+0x85>
40119e:	48 8b 1c 24          	mov    (%rsp),%rbx
4011a2:	48 8d 44 24 08       	lea    0x8(%rsp),%rax
4011a7:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
4011ac:	48 89 d9             	mov    %rbx,%rcx
4011af:	48 8b 10             	mov    (%rax),%rdx
4011b2:	48 89 51 08          	mov    %rdx,0x8(%rcx)
4011b6:	48 83 c0 08          	add    $0x8,%rax
4011ba:	48 39 f0             	cmp    %rsi,%rax
4011bd:	74 05                	je     4011c4 <phase_6+0xe0>
4011bf:	48 89 d1             	mov    %rdx,%rcx
4011c2:	eb eb                	jmp    4011af <phase_6+0xcb>
4011c4:	48 c7 42 08 00 00 00 	movq   $0x0,0x8(%rdx)
4011cb:	00 
4011cc:	bd 05 00 00 00       	mov    $0x5,%ebp
4011d1:	48 8b 43 08          	mov    0x8(%rbx),%rax
4011d5:	8b 00                	mov    (%rax),%eax
4011d7:	39 03                	cmp    %eax,(%rbx)
4011d9:	7d 05                	jge    4011e0 <phase_6+0xfc>
4011db:	e8 9f 03 00 00       	callq  40157f <explode_bomb>
4011e0:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
4011e4:	83 ed 01             	sub    $0x1,%ebp
4011e7:	75 e8                	jne    4011d1 <phase_6+0xed>
4011e9:	48 83 c4 50          	add    $0x50,%rsp
4011ed:	5b                   	pop    %rbx
4011ee:	5d                   	pop    %rbp
4011ef:	41 5c                	pop    %r12
4011f1:	41 5d                	pop    %r13
4011f3:	41 5e                	pop    %r14
4011f5:	c3                   	retq