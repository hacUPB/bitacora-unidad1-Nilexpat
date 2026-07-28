

# Actividad 5: Implementando un ciclo simple
“Crea un programa que use un ciclo para sumar los números del 1 al 5 y guarde el resultado en la dirección de memoria 12.”

```asm
@5
D=A
@i
M=D

@1
D=A
@j
M=D

@0
D=A

(SUMA)
@j
D=D+M
@j
M=D
@i
D=D-M
@SUMA
D;JQE un salto en donde D<0

@j
M=D


```










