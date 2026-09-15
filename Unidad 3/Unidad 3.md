# Actividad 1: diagnóstico inicial

## Parte 2: análisis de código (en C#)

- Señala una línea de código que sea un ejemplo claro de encapsulamiento y explica por qué lo es.

`private string nombre;` aquí se evidencia el encapsulamiento ya que se coloca esta variable privada para que la clase padre solo tenga acceso a ella,

- ¿Por qué crees que el campo nombre es private pero la propiedad Nombre es public? ¿Qué problema se evita con esto?

porque esto proteje la interidad del codigo, ya que si en al gun lado del codigo se modifica la varible nombre esta estando publica, el nobre de los objetos podria cambiar de forma indeterminada, entonces colocar esta variable privada controla al codigo y hace que ciempre que se llame circulo sea circulo y no cuadrado.

- ¿Cómo se evidencia la herencia en la clase Circulo?

Se evidencia cuando se hace el llamado de herencia con `: figura`
  
- Un objeto de tipo Circulo, además de Radio, ¿Qué otros datos almacena en su interior gracias a la herencia?

Almacena la variable nombre y un método abstracto dibujar.

- Observa el bucle foreach. La variable fig es de tipo Figura, pero a veces contiene un Circulo y otras un Rectangulo. Cuando se llama a fig.Dibujar(), el programa ejecuta la versión correcta. En tu opinión, ¿Cómo crees que funciona esto “por debajo”? No necesitas saber la respuesta correcta, solo quiero que intentes razonar cómo podría ser.

pienso que se hace un llamdo a cada objeto y cada objeto tiene un llamado diferente a fig.Dibujar() entonces de alguna forma, este Dibujar puede tener o seguir unas reglas para poder ejecutarse según las variables se les mande o el llamdo de la instacia tambien tienen vinculados por medio de un puntero la funcion que debe correr para cada figura `Circulo -> Dibujar de la clase circulo`


## **Parte 3: hipótesis sobre la implementación**

Esta es la parte más importante. Imagina que eres un diseñador de lenguajes de programación. Tienes que decidir cómo implementar estos conceptos en la memoria y en el procesador. No hay respuestas incorrectas, solo ideas. Dibuja si te ayuda.

1. **Memoria y herencia**: cuando creas un objeto `Rectángulo`, este tiene Base, Altura y también Nombre. ¿Cómo te imaginas que se organizan esos tres datos en la memoria del computador para formar un solo objeto?

Siento que lo ideal seria que se guardaran en un arreglo de enteros y cuando se haga el llamado a estas variables solo es necesario saber la ubicación de ese lugar de la memoria en donde se ubica todas las variables necesarias para crear el rectangulo.

2. **El mecanismo del polimorfismo:** pensemos de nuevo en la llamada `fig.Dibujar()`. El compilador solo sabe que fig es una Figura. ¿Cómo decide el programa, mientras se está ejecutando, si debe llamar al Dibujar del Circulo o al del Rectangulo? Lanza algunas ideas o hipótesis.

Creo que cada fig de cada clase es diferente y pide reglas diferentes entonces cuando se llama este metodo esta entrega el resultado del método Dibujar que se adapten a todas las variables inicializadas.

3. **La barrera del encapsulamiento:** ¿Cómo crees que el compilador logra que no puedas acceder a un miembro private desde fuera de la clase? ¿Es algo que se revisa cuando escribes el código, o es una protección que existe mientras el programa se ejecuta? ¿Por qué piensas eso?

siento que puede ser una dirección de memoria que se desconoce en su totalidad pero al mismo tiempo tiene un nombre que solo va a existir dentro de una clase especifica.


# Actividad 2: Aplicación

De la aplicaron de esta actividad evidencie el uso del polimorfismo, también la forma en que el programa cuenta el tiempo de vida de las particular recorriendo j de atrás para adelante, j = numero de partículas y cuando j se == a 0 explotan las partículas, y esta explosión también es aleatoria según las 2 diferentes clases de explosiones que hay. 

Tambien mas adelante me gustaria argumentar como puede llegar a funcionar que cada partícula conserve su forma y color atravez de cada iteracio. 
