# actividad 1: Hello World!

## Suma de dos enteros
<img width="1456" height="188" alt="image" src="https://github.com/user-attachments/assets/ec5cfaea-f129-4ba0-995a-6c2731a63bde" />


### Paso a Paso con breakpoint
<img width="685" height="271" alt="image" src="https://github.com/user-attachments/assets/b0d0d56f-cfa9-4334-bd1b-4b3ead991dbb" />

### **#Reflexión de esta actividad:**

1. ¿Para qué sirven los breakpoints?

  Sirve para posicionarnos en una parte de la instrucción, y depurar desde un punto en especifico.
   
2. ¿Para qué se usa la ventana de depuración Autos?

  Para ver lo que pasa en tiempo real mientras que se ejecuta el paso a paso de la depuración.

## Actividad 2: Paso por valor y paso por referencia

- **Predicción**: antes de ejecutar el programa, predice la salida de cada función y explica el resultado.

  Se Observa que existen 3 funciones ( paso x (valor, Referencia, Puntero)), se pide analizar y observar como funciona cada función y predecir que valores se entregan en el main cada función se le entrega una variable 10 y se copia en la variable n de la función.

*  Valor: En el paso por valor se puede esperar una modificación en n de la función pero no va a modificar la variable original
*  Referencia: modifica la variable origina
*  Puntero: Modifica la variable original cambia la sintaxis 



  Main 
    
- ¿Qué diferencias observas en el comportamiento de `a, b` y `c` tras cada llamada?
- ¿Por qué ocurre esta diferencia?

## Actividad 3: Mapa de memoria de un programa escrito en C++

### Experimento 1: modificar el segmento de texto:

* ¿Qué ocurre? ¿Por qué?

Se intento correr una función que tenia la intención de modificar la primera lineal de código del la función main, el cual fallo porque no se puede modificar el espacio de memoria de la ROM ya que es un espacio de memoria hecho solo para la lectura de código. 

### Experimento 2: modificar el segmento de datos (constante global):

* ¿Qué ocurre? ¿Por qué?

Se intento modificar una variable global sin éxito desde la función main, no se logro modificar debido a que era una variable constante (const), cuando una variable se convierte en "const" la variable se (guarda en el mismo bloque de instrucciones o en un segmento de solo lectura).

### Experimento 3: modificar el segmento de datos (variables globales):

* ¿Qué ocurre? ¿Por qué?

se modifica 2 variables globales una que esta inicializada y otra que no, y luego se les asigna un valor, el detalle que hay que tener en cuenta es que la variable no inicializada puede llegar a tener cualquier valor en este caso me salió que antes de modificar el valor tenia 0. 
