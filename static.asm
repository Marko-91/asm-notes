//static varibales are seen by all methods of a program
// store them in some global space in ram
//static i (in Foo.vm) = Foo.i
//map in onto RAM(16-255)
//pop static i
//D=stack.pop
//@Foo.i
//M=D
@SP
M=M-1

@SP
A=M
D=M //Data register holds the value SP points at
@static.5 //(where i = 5)
M=D