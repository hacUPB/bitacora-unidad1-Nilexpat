## Actividad 2: Ciclo Fetch–Decode–Execute

> [!NOTE]
> **Fetch–Decode–Execute** (Buscar–Decodificar–Ejecutar).

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

