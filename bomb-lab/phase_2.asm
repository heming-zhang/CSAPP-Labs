0x0000000000400efc <+0>:	push   %rbp
0x0000000000400efd <+1>:	push   %rbx
0x0000000000400efe <+2>:	sub    $0x28,%rsp
0x0000000000400f02 <+6>:	mov    %rsp,%rsi
0x0000000000400f05 <+9>:	callq  0x4015b5 <read_six_numbers>
0x0000000000400f0a <+14>:	cmpl   $0x1,(%rsp)
0x0000000000400f0e <+18>:	je     0x400f30 <phase_2+52>
0x0000000000400f10 <+20>:	callq  0x40157f <explode_bomb>
0x0000000000400f15 <+25>:	jmp    0x400f30 <phase_2+52>
0x0000000000400f17 <+27>:	mov    -0x4(%rbx),%eax
0x0000000000400f1a <+30>:	add    %eax,%eax
0x0000000000400f1c <+32>:	cmp    %eax,(%rbx)
0x0000000000400f1e <+34>:	je     0x400f25 <phase_2+41>
0x0000000000400f20 <+36>:	callq  0x40157f <explode_bomb>
0x0000000000400f25 <+41>:	add    $0x4,%rbx
0x0000000000400f29 <+45>:	cmp    %rbp,%rbx
0x0000000000400f2c <+48>:	jne    0x400f17 <phase_2+27>
0x0000000000400f2e <+50>:	jmp    0x400f3c <phase_2+64>
0x0000000000400f30 <+52>:	lea    0x4(%rsp),%rbx
0x0000000000400f35 <+57>:	lea    0x18(%rsp),%rbp
0x0000000000400f3a <+62>:	jmp    0x400f17 <phase_2+27>
0x0000000000400f3c <+64>:	add    $0x28,%rsp
