// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

// using R0 as to which word to write
// using R1 as to what to write

(MLOOP)

@KBD
D=M
@FALSE
D;JEQ
@R1
M=-1
@CEND
0;JMP
(FALSE)
@R1
M=0
(CEND)


@SCREEN
D=A
@R0
M=D

(LOOP)
@R1
D=M
@R0
A=M
M=D
@R0
M=M+1
@KBD
D=A
@R0
D=D-M
@LOOP
D;JGT


@MLOOP
0;JMP