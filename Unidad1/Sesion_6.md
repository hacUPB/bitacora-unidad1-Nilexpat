# Sesión 6. Punteros, arreglos y relación entre direcciones de memoria y código de alto nivel

## Actividad integrada: Punteros
Un puntero es una variable que almacena la dirección de memoria de otra variable. Observa el siguiente programa escrito en C++:


```C++
int a = 10;
int* p;
p = &a;
*p = 20;
```

Ahora vas a usar un puntero para leer la posición de memoria a la que este apunta, es decir, vas a leer por medio del puntero la variable cuya dirección está almacenada en él.
```C++
int a = 10;
int b = 5;
int *p;
p = &a;
b = *p;
```
Convierte estos programas a ensamblador y realiza la simulación paso a paso. Recuerda la metodología: predice, ejecuta, observa y reflexiona.

### BITACORA:


```C++
int a = 10;
int* p;
p = &a;
*p = 20;
```

```asm
@10
D=A
@i
M=D

@i
D=A
@punt
M=D

@20
D=A

@punt
A=M
M=D

```


```C++
int a = 10;
int b = 5;
int *p;
p = &a;
b = *p;
```

```asm
@10
D=A
@i
M=D

@5
D=A
@j
M=D

@i
D=A
@punt
M=D

@20
D=A

@punt
A=M
M=D

```


## Actividad integrada: Experimenta con arreglos

Los arreglos son colecciones de datos en la memoria.

Considera el siguiente programa

```C++
int arr[] = {33,44,55,12,34,56,78,98,76,54};
int sum = 0;
for (int j = 0; j < 10; j++) {
	sum = sum + arr[j];
	}
```

