> [!NOTE]
> * La patalla es de 256 px x 512 px
> * Los registros se cuentan de izquierda hacia derecha y no de arriba hacia abajo
> * Para llenar el ancho de una pantalla necesito 32 regiones
> * Inicio de la pantalla RAM[16384] (@SCREEN)
> * Fin de la pantalla RAM[24575]
> * El teclado solamante tiene un registro 24573 (@KBD): caundo el usuario preciona una tecla el valor en codigo ASCII aparece y cuando se suelta el teclado el valor aparece en 0

## Actividad 3: Explorando la arquitectura del computador Hack

Ahora vamos a analizar juntos el siguiente programa. Este programa tendrá todos los conceptos que vamos investigar en la siguiente fase de la unidad de manera más profunda. En qué nos enfocaremos:

- Las partes del computador Hack.
- El modelo de programación de la CPU.
- La diferencia entre memoria RAM y registros.
- Los tipos de instrucciones del lenguaje ensamblador.
- Cómo leo el teclado y muestro en pantalla.
- Cómo implemento un bucle.
- Cómo implemento una condición.
- ¿Qué es la ALU y qué operaciones realiza?


```asm
@SCREEN
D=A
@i
M=D

(READKEYBOARD)
@KBD
D=M
@KEYPRESSED
D;JNE
@i
D=M
@SCREEN
D=D-A
@READKEYBOARD
D;JLE
@i
M=M-1
A=M
M=0
@READKEYBOARD
0;JMP

(KEYPRESSED)
@i
D=M
@KBD
D=D-A
@READKEYBOARD
D;JGE
@i
A=M
M=-1
@i
M=M+1
@READKEYBOARD
0;JMP
```


