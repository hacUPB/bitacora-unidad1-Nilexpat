## Actividad 2: Ciclo fetch-decode-execute
El siguiente programa está escrito en el lenguaje ensamblador del computador Hack. Este computador no es un computador comercial, sino un computador didáctico que te permitirá acercarte a los conceptos fundamentales de manera amigable.

Analiza el siguiente programa (está en lenguaje ensamblador).

```asm
			@1
			D=A
			@2
			D=D+A
			@16
			M=D
(END)
			@END
			0;JMP

```

RTA: puedo observar que el programa sigue las siguientes instrucciones 

* -> se pociciona en el espacio de la memoria 1 
* -> se asigna 1 a al registro D 
* -> se dirige al espacio de la memoria 2 
* -> se realiza una resta en el registro D (D=1+2)
* -> guarda el registro D en la posicion 16 de la Memoria
* -> y se activa una Etiqueta en donde realiza un salto a END
* -> Se repite el ciclo
