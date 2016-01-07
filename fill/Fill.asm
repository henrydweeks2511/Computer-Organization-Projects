// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

// Put your code here.

//Store address for bottom of the screen
@SCREEN
D=A
@i
M=D-1

//Store address for top of the screen 
@KBD
D=A
@j
M=D

//Counter for current pixel
@i
D=M
@k
M=D

(LOOP) 
@KBD
D=M

//Color the next pixel white if no key is pressed
@WHITE
D;JEQ
@BLACK
0;JMP


(BLACK) 

//check if BLACK has reached the top of the screen
@j
D=M
@k
D=D-M
@LOOP
D;JEQ

//Move up one pixel and blacken
@k
A=M
M=-1
@k
M=M+1

@LOOP
0;JMP

(WHITE)

//check if WHITE has reached the bottom of the sceen
@i
D=M
@k
D=D-M
@LOOP
D;JEQ

//Move down one pixel and whiten
@k
M=M-1
A=M
M=0

@LOOP
0;JMP