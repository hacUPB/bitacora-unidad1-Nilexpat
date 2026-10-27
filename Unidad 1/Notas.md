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
