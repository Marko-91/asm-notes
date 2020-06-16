//add up two values from the stack *********************************
@SP
M=M-1 // move sp one step down the stack
A=M // the selected register is now SP[M], that is 256+
D=M // go to that register and put it's value into D register

@SP
M=M-1
A=M
D=D+M
M=D

@SP
M=M+1
// substract two values from the stack *********************************
@SP
M=M-1 // move sp one step down the stack
A=M // the selected register is now SP[M], that is 256+
D=M // go to that register and put it's value into D register

@SP
M=M-1
A=M
D=D-M
M=D

@SP
M=M+1
// negate the value from the stack *********************************
@SP
M=M-1
A=M // the selected register is now SP[M], that is 256+
D=!M
D=D+1
M=D

@SP
M=M+1
// check if it's equal  **********************************
@SP
M=M-1 // move sp one step down the stack
A=M // the selected register is now SP[M], that is 256+
D=M // go to that register and put it's value into D register

@SP
M=M-1
A=M
D=D-M

@EQUAL
D;JEQ
@SP
A=M
M=0 // else push false

@ELSE
0;JMP

(EQUAL)
@SP
A=M
M=-1 // if it's equal push true

(ELSE)
@SP
M=M+1
// get
// check if it's GREATER than zero  **********************************
@SP
M=M-1 // move sp one step down the stack
A=M // the selected register is now SP[M], that is 256+
D=M // go to that register and put it's value into D register

@SP
M=M-1
A=M
D=D-M

@GREATER_1
D;JGT
@SP
A=M
M=0 // else push false

@GREATER_ELSE_1
0;JMP

(GREATER_1)
@SP
A=M
M=-1 // if it's equal push true

(GREATER_ELSE_1)
@SP
M=M+1
// check if it's LESS THEN  **********************************
@SP
M=M-1 // move sp one step down the stack
A=M // the selected register is now SP[M], that is 256+
D=M // go to that register and put it's value into D register

@SP
M=M-1
A=M
D=D-M

@LESS_1
D;JLT
@SP
A=M
M=0 // else push false

@LESS_ELSE_1
0;JMP

(LESS_1)
@SP
A=M
M=-1 // if it's equal push true

(LESS_ELSE_1)
@SP
M=M+1
// and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D&M
M=D
@SP
M=M+1
// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
D=D|M
M=D
@SP
M=M+1
// not
@SP
M=M-1
A=M // the selected register is now SP[M], that is 256+
D=!M
M=D

@SP
M=M+1