@SCREEN
D=A
@j
M=D

@SCREEN
D=A
@31
D=D+A
@i
M=D



(LOOP)
@i
D=M
@j
M=M+1  // suma el valor de la RAM una unidad

A=M   // copia el valor de la RAM en A 

M=-1

@j
D=D-M
@LOOP
D;JGE



