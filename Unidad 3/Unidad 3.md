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

De la aplicacion de esta actividad evidencie el uso del polimorfismo, también la forma en que el programa cuenta el tiempo de vida de las particular recorriendo j de atrás para adelante, j = numero de partículas y cuando j se == a 0 explotan las partículas, y esta explosión también es aleatoria según las 2 diferentes clases de explosiones que hay. 

<img width="1004" height="739" alt="image" src="https://github.com/user-attachments/assets/805f5a6c-3cfd-4c1c-939c-a42775bce9e5" />


Tambien mas adelante me gustaria argumentar como puede llegar a funcionar que cada partícula conserve su forma y color atravez de cada iteracio.

# Actividad 3

Antes de ejecutar el experimento:

* ¿Qué esperas ver en memoria (hipótesis)? Ejecuta el código y muestra una captura de pantalla del objeto en la memoria.

pues como una clase no es una instancia, no espero ver mucha información tal vez si la dirección de memoria de las partículas ya que esta si requiere ser instanciada.

* ¿Qué puedes observar?

<img width="1070" height="184" alt="image" src="https://github.com/user-attachments/assets/3f4e439b-1190-4075-aabb-c76057249d65" />


* ¿Qué información te proporciona el depurador?

Proporciona variables no inicializadas que tiene la  de la clase offapp, se puede ver en this la creacion de particulas, y como estas guardan posiciones de memoria 

* ¿Qué puedes concluir?

Que la memoria nunca esta limpia del todo, hay muchas varibles o información basura que se deben de remplazar, números extremadamente grandes

Usa de nuevo el depurador para capturar un objeto de tipo CircularExplosion. Es posible que tengas que hacer modificaciones mínimas en el código para que puedas capturar este objeto más fácilmente. Observa con el depurador la ventana de Auto o Locals y la ventana de Memory 1. Trata de buscar en memoria todas las partes que componen al objeto tipo CircularExplosion ¿Qué puedes observar en la memoria? ¿Qué información te proporciona el depurador? ¿Qué puedes concluir? 

Local
<img width="1433" height="300" alt="image" src="https://github.com/user-attachments/assets/56531864-228a-4359-b5d2-af6bc8373644" />


Memoria1 = &miExplosionPrueba
<img width="1117" height="85" alt="image" src="https://github.com/user-attachments/assets/4997ed48-e352-4c38-9ec8-173dfd4468a3" />


Memoria1 = &miExplosionEstrella
<img width="1462" height="296" alt="image" src="https://github.com/user-attachments/assets/2b7c8604-1677-4b2e-9fe3-d38063bd5045" />


podemos ver como funcionan las clases abstractas ver como una misma función cambia o se adapta a una figura diferente, pero envés de cambiar es como si se crearan otras derivadas de la misma clase hija entonces hipotetizo que se hace primero un llamdo a la clase hija y luego a los métodos abstractos que que se inicializa con las instrucciones o reglas de esa clase hija.

# Actividad 4
```cpp

class AccessControl {
private:
		int privateVar;
protected:
		int protectedVar;
public:
		int publicVar;
		AccessControl() : privateVar(1), protectedVar(2), publicVar(3) {}
		};
int main() {
		AccessControl ac;
		ac.publicVar = 10;
		// Válido
		// ac.protectedVar = 20;
		// Error de compilación
		// ac.privateVar = 30;
		// Error de compilación
		return 0;
		}

```
 * ¿Qué sucede? ¿Por qué sucede esto? ¿Qué puedes concluir?

 Este Actividad tiene la finalidad de enseñarme como funciona el encapsulamiento con un código que intenta violar el principio de encapsulamiento pero solo es posible cuando Private y protected están comentadas ya que el otro es Public entonces el codigo se lo permite.

 de aquí puedo concluir que se puede acceder a modificar una clase desde el main si la variable a modificar es publica, si es privada no se puede acceder de ninguna forma, y investigando un poco mas las que son Protected solo se pueden modificar si son clases hijas heredadas.

```cpp

#include <iostream>
class MyClass {
private:
		int secret1;
		float secret2;
		char secret3;
public:
		MyClass(int s1, float s2, char s3) : secret1(s1), secret2(s2), secret3(s3) {}
    void printMembers() const {
		    std::cout << "secret1: " << secret1 << "\n";
		    std::cout << "secret2: " << secret2 << "\n";
		    std::cout << "secret3: " << secret3 << "\n";
		    }
		};

int main() {
		MyClass obj(42, 3.14f, 'A');
		// Esta línea causará un error de compilación
		std::cout << obj.secret1 << std::endl;
    obj.printMembers();
    // Método público para mostrar los valores
    return 0;
    }

```

* Compila el programa. ¿Qué pasa?

El programa crea una instancia de la clase Myclass a este objeto se le asignan lo valores correspondientes y luego el main intenta leer lo que hay dentro de este objeto pero le es negado debido a que intenta entrar a un parámetro que esta privado que en este caso es `secret1`. 

pero para poder leer esa información el usuario creo una alternativa mas segura y sofisticada desde la clase la cual el método `void printMembers` el cual es un método publico desde la clase padre que tiene acceso a estas variables privadas. Recordando de que las variables privadas solo se pueden usar dentro de la misma clase
