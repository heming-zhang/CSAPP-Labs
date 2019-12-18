0x0000000000400ee0 <+0>:	sub    $0x8,%rsp
0x0000000000400ee4 <+4>:	mov    $0x4024bc,%esi (MEMORY IN THIS ADDRESS has string need to input.)
0x0000000000400ee9 <+9>:	callq  0x40131e <strings_not_equal>
0x0000000000400eee <+14>:	test   %eax,%eax
0x0000000000400ef0 <+16>:	je     0x400ef7 <phase_1+23>
0x0000000000400ef2 <+18>:	callq  0x40157f <explode_bomb>
0x0000000000400ef7 <+23>:	add    $0x8,%rsp
0x0000000000400efb <+27>:	retq 