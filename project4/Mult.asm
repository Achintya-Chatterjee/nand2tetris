// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

// not using variable "i" 
// cause already got it in "R1", and loop's kinda like do while

(LOOP)
@R0
D=M
@R2
M=D+M

@R1
M=M-1

@R1
D=M
@LOOP
D;JGT

(END)
@END
0;JMP