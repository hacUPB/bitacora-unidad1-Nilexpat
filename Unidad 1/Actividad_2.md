## Actividad 2: Ciclo Fetch–Decode–Execute

> [!NOTE]
> **Fetch–Decode–Execute** (Buscar–Decodificar–Ejecutar).

> [!IMPORTANT]
> ### Instrucciones de salto (Jump)
>
> | Instrucción | Condición |
> |------------|-----------|
> | `D;JGT` | Si **D > 0**, salta. |
> | `D;JGE` | Si **D ≥ 0**, salta. |
> | `D;JLT` | Si **D < 0**, salta. |
> | `D;JLE` | Si **D ≤ 0**, salta. |
> | `D;JEQ` | Si **D = 0**, salta. |
> | `D;JNE` | Si **D ≠ 0**, salta. |
> | `0;JMP` | Salto incondicional. |


> [!IMPORTANT]
> ### Instrucciones del lenguaje Hack (Nand2Tetris)
>
> | Tipo | Instrucción | Descripción |
> |------|-------------|-------------|
> | **A-instruction** | `@valor` | Carga un número o una dirección en el registro **A**. |
> | **Asignación** | `D=A` | Copia el valor de **A** al registro **D**. |
> | | `D=M` | Copia `RAM[A]` al registro **D**. |
> | | `A=D` | Copia **D** al registro **A**. |
> | | `M=D` | Guarda **D** en `RAM[A]`. |
> | | `M=A` | Guarda **A** en `RAM[A]`. |
> | **Suma** | `D=D+A` | Suma **D + A**. |
> | | `D=D+M` | Suma **D + RAM[A]**. |
> | **Resta** | `D=D-A` | Resta **D - A**. |
> | | `D=A-D` | Resta **A - D**. |
> | | `D=D-M` | Resta **D - RAM[A]**. |
> | **Incremento** | `D=D+1` | Incrementa **D** en 1. |
> | | `A=A+1` | Incrementa **A** en 1. |
> | | `M=M+1` | Incrementa `RAM[A]` en 1. |
> | **Decremento** | `D=D-1` | Decrementa **D** en 1. |
> | | `A=A-1` | Decrementa **A** en 1. |
> | | `M=M-1` | Decrementa `RAM[A]` en 1. |
> | **Etiquetas** | `(LOOP)` | Define una etiqueta para realizar saltos. |

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

### RTA

Puedo observar que el programa sigue las siguientes instrucciones:

- Se posiciona en el espacio de memoria **1**.
- Se asigna **1** al registro **D**.
- Se dirige al espacio de memoria **2**.
- Se realiza una suma en el registro **D** (`D = 1 + 2`).
- Guarda el registro **D** en la posición **16** de la memoria.
- Se activa una etiqueta en donde realiza un salto a **END**.
- Se repite un ciclo (loop) infinito en **END**.

---

### ¿Qué sucede?

Un ciclo.

### ¿Qué valor se almacena en la dirección de memoria 16?

Se almacena el número **3**.

### ¿Por qué crees que es ese valor?

Por el resultado de la suma y la instrucción `M=D`.

### ¿Qué instrucciones se ejecutan en cada ciclo Fetch–Decode–Execute?

- Se posiciona en el espacio de memoria **1**.
- Se asigna **1** al registro **D**.
- Se dirige al espacio de memoria **2**.
- Se realiza una suma en el registro **D** (`D = 1 + 2`).
- Guarda el registro **D** en la posición **16** de la memoria.
- Se activa una etiqueta en donde realiza un salto a **END**.
- Se repite un ciclo (loop) infinito en **END**.

### ¿Qué cambios observas en el contenido de la memoria y los registros?

Cambio de la posición de memoria, variables e información en la posición de memoria **16**.

## **Experimento**

Escribe un programa en lenguaje ensablador que sume los números 5 y 10, y almacene el resultado en la dirección de memoria 20. Utiliza el simulador de la CPU Hack para ejecutar tu programa y verifica que el resultado es correcto.

```asm
			@5
			D=A
			@10
			D=D+A
			@20
			M=D
(END)
			@END
			0;JMP

```

## **Extra**

Asigne variables y deles un valor y luego restelas

```asm
\\ Variable = 15
@15
D=A
@var
M=D

\\ i = 10
@10
A=D
@i
M=D

\\ D = 10 - 15
@i
D=M
@var
D=D-M

@20
D;JGT

@30
D;JLE

```

## **Ejemplo**




