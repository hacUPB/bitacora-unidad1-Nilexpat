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

## Experimento 2: modificar el segmento de datos (constante global):

* ¿Qué ocurre? ¿Por qué?

Se intento modificar una variable global sin éxito desde la función main, no se logro modificar debido a que era una variable constante (const), cuando una variable se convierte en "const" la variable se (guarda en el mismo bloque de instrucciones o en un segmento de solo lectura).

## Experimento 3: modificar el segmento de datos (variables globales):

* ¿Qué ocurre? ¿Por qué?

se modifica 2 variables globales una que esta inicializada y otra que no, y luego se les asigna un valor, el detalle que hay que tener en cuenta es que la variable no inicializada puede llegar a tener cualquier valor en este caso me salió que antes de modificar el valor tenia 0. 

## Experimento 4: modificar la variable local estática de una función por fuera de ella:

* ¿Qué ocurre? ¿Por qué?

me parece un error de compilación porque para la función main no existe la variable "static" si las renombro con "int" se crea una variable con ese nombre pero no es la misma de la función funcionConStatic() y pasa lo mimos cuando se nombra "static int" solo se crea otra variable estatic en el mismo bloque de la RAM de la variable estatic de la anterior función

* ¿Qué pasa con las variables cada que entras y sales de la función?
* En relación a la pregunta anterior ¿Qué pasa con las variables locales estáticas?


## Experimento 5: variables locales estática vs no estática:

- ¿Qué ocurre? ¿Por qué?
- Ves alguna diferencia entre las variables locales estáticas y no estáticas?
- ¿Qué pasa con las variables cada que entras y sales de la función?

## Experimento 6: modificar el segmento de heap:

- ¿Qué ocurre? ¿Por qué?

Se crea un arreglo en el Heap porque es creado con el nombre new, y me manda a un puntero al espacio de memoria del heap, y luego se elimina, porque si se crea algo en el heap queda ahí para siempre, pero luego se vuelve a llamar al arreglo y produce un error pero este error sucede porque el arreglo ya no existe.

- Comenta la línea de genera el error y analiza las siguientes preguntas:
  
    - ¿Qué diferencias notas entre el comportamiento y la gestión del `Heap` en comparación con el `Stack`?

  En el Heap se guardan cosas en la memoria pero no es de forma temporal, en cambio con el Stack 

    - ¿Qué consecuencias tendría no liberar la memoria reservada con `new`?
 
      El computador puede volverse mas lento.
      
    - ¿Por qué es importante usar `delete[]` al liberar memoria asignada para un arreglo?
 
      Para que el programa no consuma tantos recursos del sistema.
      
# Actividad 6: Hola Objeto: creación de un objeto en el stack

**Reflexiona sobre las siguientes cuestiones**:

1. ¿Cuál es la diferencia entre un constructor y un destructor en C++?  El constructor sirve para inicializar un objeto, y el destructor es el libera espacio de la memoria.
2. ¿Cuál es la diferencia entre un objeto y una clase en C++?  una clase es como un plano y no ocupa espacio en la memoria, en cambio un objeto es la instancia de una clase y estos objetos si viven en la memoria. Clase(planos de una casa) objeto (la casa construida).
3. ¿Qué diferencia notas entre el objeto Punto en C++ y C#? Principalmente como se crea la instancia, en C++ se llana a un objeto con el constructor y en C# se crea el objeto en el Heap
4. ¿Qué es `p` en C++ y qué es `p` en C#? (en uno de ellos `p` es un objeto y en el otro es una referencia a un objeto). P en C++ es un objeto que guarda los valores que se le asignan cuando se le instancia, en cambio P en C# guarda la dirección de memoria en donde se almacenan los datos del constructor.
5. ¿En qué parte de memoria se almacena `p` en C++ y en C#? En C++ se guarda en el espacio del Stack, en cambio en C# se guarda en el Heap.
6. ¿Qué observaste con el depurador acerca de `p`? Según lo que observaste ¿Qué es un objeto en C++? 
