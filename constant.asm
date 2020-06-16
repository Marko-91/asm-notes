//no pop constant, only push
//push constant i
//only supplise the specified constant
//*SP=i, SP++

@2 // constant i
D=A
@SP
A=M
M=D
@SP
M=M+1
