### Actividad 4: Control de flujo con saltos

Vamos a resolver juntos este problema:

Escribe un programa que compare el valor almacenado en la dirección de memoria 5 con el valor 10. Si el valor es menor que 10, guarda el valor 1 en la dirección 7. Si el valor es mayor o igual a 10, guarda el valor 0 en la dirección 7.

- Escribe tu mismo el programa.
- Simula paso a paso. Recuerda la metodología: predice, ejecuta, observa y reflexiona.
  
```asm

@10
D=A

@5
M=D

@20
D=A

@MAYOR
D;JGE

@MENOR
D;JLT



(MAYOR)
@0
D=A
@7
M=D

(MENOR)
@1
D=A
@7
M=D

@0
D=A
(END)
@END
D;JEQ


```
