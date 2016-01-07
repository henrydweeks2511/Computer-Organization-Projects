// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

    // R2 = 0    
    @R2
    M=0     

    // i=0    
    @i
    M=0     

(LOOP)  //Start the Loop
    
    // D=i
    @i
    D=M     
    
    // D=i-R0
    @0
    D=D-M   
    
    // If i-R0 >= 0 Goto END
    @END
    D;JGE    
    
    // D=R1
    @R1
    D=M     
    
    // R2=R2+R1
    @R2
    M=D+M   
    
    // i=i+1
    @i
    M=M+1   
    
    // Repeat
    @LOOP
    0;JMP   
 
    //Infinite Loop
(END)
    
    @END
    0;JMP