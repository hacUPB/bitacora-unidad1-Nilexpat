> [!NOTE]
> * La patalla es de 256 px x 512 px
> * Los registros se cuentan de izquierda hacia derecha y no de arriba hacia abajo
> * Para llenar el ancho de una pantalla necesito 32 regiones
> * Inicio de la pantalla RAM[16384] (@SCREEN)
> * Fin de la pantalla RAM[24575]
> * El teclado solamante tiene un registro 24573 (@KBD): caundo el usuario preciona una tecla el valor en codigo ASCII aparece y cuando se suelta el teclado el valor aparece en 0

## Actividad 3: Explorando la arquitectura del computador Hack

Ahora vamos a analizar juntos el siguiente programa. Este programa tendrá todos los conceptos que vamos investigar en la siguiente fase de la unidad de manera más profunda. En qué nos enfocaremos:

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

- Identifica una instrucción que use la ALU y explica qué hace.
- ¿Para qué sirve el registro PC?

Sirve para guardar informacion, pintar pixeles, o leer registros externos como el teclado

- ¿Cuál es la diferencia entre @i y @READKEYBOARD?

@i es una varible guardada la cual de forama conciente es el numero el cual corresponde a la posicion de memoria RAM de en donde empieza el @SCREEM, mientras que  @READKEYBOARD es la etiqueta del ultimo registro de la RAM la cual puede leer una tecla que escriba el usuario. 
  
- Describe qué se necesita para leer el teclado y mostrar información en la pantalla.

Se necesita pocicionar al usuario en el ultimo registro de la RAM y luego D=M para que D copie el registro de la memoria de la KBD.
  
- Identifica un bucle en el programa y explica su funcionamiento.

Si cuando un numero es diferente de 0 salta a un ciclo en donde coge y empieza a pintar la pantalla de negro cuando el registro es igual a 0 salta a otro bucle en donde pinta de nuevo toda la pantalla de blanco
  
- Identifica una condición en el programa y explica su funcionamiento.
D;JNE (si D es diferente de 0)


