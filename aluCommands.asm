//add
@SP
M=M-1 // move sp one step down the stack
A=M // the selected register is now SP[M], that is 256+
D=M // go to that register and put it's value into D register

@SP
M=M-1
A=M
D=D+M
// sub
// neg
// eq
// get
// lt
// and
// or
// not