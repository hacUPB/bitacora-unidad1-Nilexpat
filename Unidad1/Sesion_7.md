# Autoevaluación
**Parte 1: recuperación de conocimiento (retrieval practice)**

1. Describe con tus palabras las tres fases del ciclo Fetch-Decode-Execute. ¿Qué rol juega el Program Counter (PC) en este ciclo?

  
2. ¿Cuál es la diferencia fundamental entre una instrucción-A (que empieza con `@`) y una instrucción-C (que involucra `D`, `M`, `A`, etc.) en el lenguaje ensamblador de Hack? Da un ejemplo de cada una.
una instruccion A que eMpieza con @ se utiliza para posicionarnos en un lugar de la rama. En cambio una instrucción C se utiliza más para asignar variables o crear operaciones de suma.

3. Explica la función de los siguientes componentes del computador Hack: el registro D, el registro A y la ALU.

El registro D es como una memoria temporal, el registro A es la posición de memoria RAM y la ALU... no se.
  
4. ¿Cómo se implementa un salto condicional en Hack? Describe un ejemplo (p. ej., saltar si el valor de D es mayor que cero).

(LOOP)
@0
A=D
@LOOP
D;JEQ
   
5. ¿Cómo se implementa un loop en el computador Hack? Describe un ejemplo (p. ej., un loop que decremente un valor hasta que llegue a cero).




6. ¿Cuál es la diferencia entre la instrucción `D=M` y la instrucción `M=D`?
Que D=M significa que D toma el valor que hay dentro de la moría RAM de A y M=D Significa que M guarda el valor de D en su memoria 




9. Describe brevemente qué se necesita para leer un valor del teclado (`KBD`) y para “pintar” un pixel en la pantalla (`SCREEN`).
10. Explica cómo se representa y manipula un puntero en el lenguaje ensamblador de Hack. Describe las operaciones equivalentes a `p = &a` (asignar dirección) y `p = 20` (escribir a través del puntero) usando instrucciones de ensamblador.
11. ¿Cómo implementarías el acceso a un elemento de un arreglo, como `arr[j]`, en lenguaje ensamblador? Describe el rol de la dirección base del arreglo y el índice `j` en esta operación.
