// This is LOCAL implementation in HACK assembly languague
// push local 2 - VM translatator this statement to ASM pop LOCAL i
// addr=LCL+2, *SP=addr*, SP--  - ASM LOGICS

@2
D=A
@LCL
D=D+M
@addr
M=D // addr=LCL+2

@addr
A=M
D=M
@SP
A=M
M=D

@SP
M=M+1 //SP++


//WORKING!!!
// More Abstractly for local, argument, this and that:
// push segment i : addr=segmentPointer+i, *SP=*addr, SP++
// pop segment i : addr=segmentPointer+i, SP--, *addr=*SP