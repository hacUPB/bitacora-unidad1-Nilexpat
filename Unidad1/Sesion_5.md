
# Actividad integrada: Convierte un ciclo while en un ciclo for


Vamos a transformar este programa a su equivalente usando un ciclo for:

```C++
//Adds 1+...+100.
int sum=0;
for(int i = 1; i <=100; i++){
	sum+= i;
	}
```

```asm

@1
D=A
@i
M=D

@100
D=A
@j
M=D

(LOOP)
@i
M=M+1

@j
MD=M-1 // esto es para guardar el registro en M y en D a la vez

@LOOP
D;JGE



```
