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



¿Qué observas?



¿Qué crees que está pasando?

