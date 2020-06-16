// This is LOCAL implementation in HACK assembly languague
// pop local 2 - VM translator translate this statement to ASM pop LOCAL i
// addr=LCL+2, SP--, *addr=*SP - ASM LOGICS

@2
D=A
@LCL
D=D+M
@addr
M=D // addr=LCL+2

@SP
M=M-1 //SP--

@SP
A=M
D=M //Data register holds the value SP points at
@addr
A=M
M=D // *addr = *SP


//WORKING!!!