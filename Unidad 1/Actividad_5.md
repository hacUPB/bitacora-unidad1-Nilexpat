

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
D;JLT

@j
M=D


```


# Actividad Integrada: Dibuja un línea en el borde izquierdo


```asm
@SCREEN
M=-1

```

```c+
var SCREEM = -1 ;

```


# Actividad Integrada: Dibuja un línea horizontal en la pantalla 

```asm
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

```
<img width="968" height="491" alt="image" src="https://github.com/user-attachments/assets/4ad9c126-0344-4b7e-a0ba-3b9662e7b9a7" />






























