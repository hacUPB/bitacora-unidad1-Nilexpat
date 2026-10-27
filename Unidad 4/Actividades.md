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


1. ¿Qué pasa si cambias el primer parámetro de glDrawArrays a GL_LINES?


2. ¿Qué pasa si lo cambias a GL_POINTS?


3. ¿Qué pasa si cambias el tercer parámetro a 2?


4. ¿Qué pasa si lo cambias a 4?


5. En esta unidad no profundizaremos en los tipos de primitivas, pero es importante que entiendas que OpenGL puede dibujar diferentes tipos de primitivas (triángulos, líneas, puntos, etc.).



**`glfwSwapBuffers(mainWindow);`**: esta función hace que no exista el parpadeo entre fotogramas, haciendo Swap entre dos frameBuffers el delantero y el trasero.

## Actividad tipo Parcial:

1. ¿Qué es el contexto OpenGL?
2. ¿Cuál es el rol de la biblioteca GLFW y qué ventaja tiene usarla?
3. ¿Por qué crees que OpenGL necesita un contexto (recuerda la analogía del taller de arte)?
4. ¿En últimas qué será el framebuffer y a qué te recuerda de las dos primeras unidades del curso?
5. ¿Qué relación entre en el viewport y el framebuffer?
6. ¿En todo la analizado hasta ahora qué rol juega los drivers de la GPU y la GPU misma?
7. ¿Por qué crees que sea necesario activar el VSync? ¿Si no lo activas y la imagen es estática qué crees que pase, y si es dinámica?
8. En esta unidad estamos usando OpenGL moderno, pero ¿Qué es OpenGL Legacy? ¿Qué diferencias hay entre ambos?
9. ¿Qué es el shader program? ¿Por qué es importante en OpenGL moderno?
10. Trata de revisar el código setupTriangle(), intuitivamente ¿Qué crees que hace? ¿Qué crees que es el VAO y el VBO?
11. En el ciclo principal (game loop) de OpenGL, notaste que en cada frame (cuadro) le decimos a openGL que use el shader program y el VAO. Si le indicas esto antes del game loop ¿Será necesario seguirlo haciendo en cada loop? Si no es necesario ¿En qué casos crees que esto puede ser útil?
12. Finalmente, recuerda lo que hace `glfwSwapBuffers(mainWindow);` ¿Por qué crees que es importante? ¿Qué pasaría si no lo llamas? ¿Cómo explicas lo que pasa si no lo llamas? (experimenta)

# Actividad 04

## Video 1
¿Cuál es la diferencia entre una CPU y una GPU?

la CPU es capaz de pintar la pantalla de forma lineal pero no toda al mismo tiempo, si la CPU quiere pintar una pantalla de azul en tiene que hacerlo pixel por pixel como en el computador Nand de la primera unidad, en cambio una CPU es capaz de pintar toda la pantalla en el mismo tiempo que demora CPU en pintar un pixel esto debido a que la GPU es una mini computadora diseñada para estos trabajos en específicos y poseen muchos núcleos que pueden iterar varias cosas diferentes al mismo tiempo. 

## Video 2

1. ¿Cuáles son los tres pasos claves del pipeline de OpenGL? Explica en tus propias palabras cuál es el objetivo de cada paso.

**Vertex Shading:**

Este es el calculo matricial entre miles de triángulos que observa la cámara en un escenario 3D

<img width="1029" height="519" alt="image" src="https://github.com/user-attachments/assets/db49ef37-c943-45aa-a4d8-32c4dbf4525c" />


**Rasterizacion:**

Es el mapeo que se hace después del vertex Shading y lo que hace es que relaciona cada triangulo, linea o vértice con un pixel de la pantalla esto por medio de las coordenadas X y Y de una cuadricula masiva (View Screen).

<img width="861" height="486" alt="image" src="https://github.com/user-attachments/assets/27939f3f-4e86-4cd4-8bd2-895ac0d05d32" />

luego se menciona sobre el Z buffer que es una coordenada de profundidad y esta coordenada indica que se debe dibujar en la pantalla si se encuentran objetos detrás de otros

**Fragmen Shading:**

se utiliza para sombrear cada pixel con una iluminación precisa para que la escena se vea realista. Si un triangulo se encuentra perpendicular a la luz su valor es 0 por lo tanto se va ver oscuro, el caso contrarios es si la superficie mira directamente a la luz.

todos estos 3 procesos suceden una vez cada 8.3 ms


2. La gran novedad que introduce OpenGL moderno es el pipeline programable. ¿Qué significa esto? ¿Qué diferencia hay entre el pipeline fijo y el programable? ¿Qué ventajas le ves a esto? y si el pipeline es programable, ¿Qué tengo que programar?


3. Si fueras a describir el proceso de **rasterización** ¿Qué dirías?
Es el mapeo que se hace después del vertex Shading y lo que hace es que relaciona cada triangulo, linea o vértice con un pixel de la pantalla esto por medio de las coordenadas X y Y de una cuadricula masiva (View Screen).

<img width="861" height="486" alt="image" src="https://github.com/user-attachments/assets/27939f3f-4e86-4cd4-8bd2-895ac0d05d32" />


4. ¿Qué son los fragmentos? ¿Es lo mismo un fragmento que un pixel? ¿Por qué?

un fragmento e un triangulo creado por 3 puntos en una malla, en una malla o meshes pueden haber miles de triangulos, un pixel es un puntico en la pantalla el cual se colorea según las propiedades que tenga el fragmento 

5. Explica qué problema resuelve el **Z-buffer** y ¿Qué es el depth test?

se utiliza para sombrear cada pixel con una iluminación precisa para que la escena se vea realista. Si un triangulo se encuentra perpendicular a la luz su valor es 0 por lo tanto se va ver oscuro, el caso contrarios es si la superficie mira directamente a la luz.

6. ¿Por qué se presenta el problema de la **aliasing**? ¿Qué es el anti-aliasing?

Para hacer que los bordes que pinta un fragmento en la pantalla causen una ilusion optica y se vean mas precisos cuando la cantidad de pixeles no son los suficientes para interpretar un área de un fragmento.

7. ¿Qué relación hay entre la iluminación y el fragment shader? Siempre es necesario tener en cuenta la iluminación en un fragment shader? o puedo hacer un fragment shader sin iluminación? Explica que implicaciones tiene esto.

Si un triangulo se encuentra perpendicular a la luz su valor es 0 por lo tanto se va ver oscuro, el caso contrarios es si la superficie mira directamente a la luz.

también vi que era posible hacer una ilusión optica con la combiancion de las normales de cada punto de un fragmento.

8. ¿Qué implica para la GPU que una aplicación tenga múltiples fuentes de iluminación?

son mas cálculos de iluminación en cada fragmento , lo cual puede dificultar la fluencia del juego, en estos casos delimitan las iluminaciones para zonas en especifico.




