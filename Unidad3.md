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
