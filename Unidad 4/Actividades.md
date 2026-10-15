# Actividad 1

1. Incluye una captura de pantalla del ejemplo funcionando en tu máquina.

<img width="1910" height="970" alt="image" src="https://github.com/user-attachments/assets/19e07fd4-41d8-49b3-b052-c88c5c2cf29e" />

2. Observa el proyecto, trata de entenderlo, pero ten presente que lo analizaremos más adelante.

* primero veo que el viewport se ajusta automáticamente a la pantalla
*  veo que se invoca como una instancia de un shader o algo así : const char* vertexShaderSrc = R"glsl()
*  esto le da la posicion inicial del triangulo.
*  const char* fragmentShaderSrc = R"glsl(): este le da el color al triangulo.

3. ¿Qué preguntas te surgen al ver el código? Anota al menos tres preguntas que te gustaría investigar más adelante (no te preocupes que la idea de esta unidad es que las resuelvas).

* ¿porque la memoria consume constante 257Mb si solo es un triangulo dibujado en la pantalla?
* ¿ en que casos es mejor dibujar cosas por la GPU, y para que se usa eso ?

# Actividad 2
se instalo con exito.


# Actividad 03

## Preguntas tipo Parcial 

1. ¿Recuerdas qué es el contexto de OpenGL?

**Contexto OpenGL:** es el entorno donde OpenGL guarda todo el estado gráfico (shaders, texturas, buffers, etc.). Lo necesitas para que las funciones de OpenGL tengan efecto.

2. ¿Qué es el framebuffer?

El framebuffer es una porción de memoria donde OpenGL dibuja los píxeles antes de enviarlos a la pantalla. Podemos imaginarlo como una “hoja invisible” donde OpenGL pinta cada imagen cuadro a cuadro.

3. ¿Quien dibuja realmente la GPU o OpenGL?

La GPU es quien realmente dibuja, y OpenGL es la API que le dice a la GPU qué y cómo dibujar.

4. **¿Qué es el viewport?**

El viewport define qué parte del framebuffer se usará para dibujar. Se mide en píxeles y normalmente coincide con el tamaño completo del framebuffer.Si el viewport no se ajusta correctamente al tamaño del framebuffer, lo que dibujas podría aparecer estirado, recortado o mal posicionado.

¿Qué pasa si?

`glViewport(0, bufferHeight/2, bufferWidth/2, bufferHeight/2);`

<img width="392/2" height="426/2" alt="image" src="https://github.com/user-attachments/assets/750ea807-2e41-4060-b60f-99626ff46989" />

Cambia los valores de bufferWidth y bufferHeight: divide por 2, por 4, multiplica por 2, por 4, etc.
¿Qué pasa? 

El triangulo se reduce a la mitad

¿Qué observas?

Veo que las figura se encoje a la mitad y se inicializa como en el lado superior izquierdo de la pantalla.

¿Qué crees que está pasando?

creo que la pantalla en donde se carga o donde se dibuja se inicializa normalmente pero la instrucción del tamaño hace que ciertos pixeles se dibujen como se les ordena en el codigo, vemos que el punto de partida o la posicion inicial del objeto no se encuetra en el centro de la pantalla sino en la parte superior izquierda.

También observe que se reiniciaba el tamaña del triangunlo si cambiaba a pantalla completa.

**`glfwSwapInterval(1);`**: Esta función es la que se encarga de la sincronización vertical en si esta activa la sincronización vertical, esta se encarga de igualar la tasa de fotogramas con la velocidad de fotogramas del monitor/ pantalla.

se llama sincronización vertical ya que hace referencia a los antiguos televisores que dibujaban la imagen como en un computador nand entonces iba llenando lo pixeles de arriba hacia abajo para luego apagarlo esperar la otra imagen y volver a empezar a recrear el otro fotograma


