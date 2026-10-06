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
