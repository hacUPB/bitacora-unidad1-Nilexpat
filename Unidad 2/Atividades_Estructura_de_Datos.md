# Actividad 1: Visualizando listas enlazadas con openFrameworks
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/4a7d8b6b-586a-4c84-a86a-09d3409f4237" />

# Actividad 2: Implementación de la lista en enlazada
como funciona esta lista enlazada son nodos que tienen un next este next guarda la dirección de memoria del siguiente nodo y así todos los nodos hasta llegar a la cola(tail) esta cola es nombrada desde el constructor del nodo, 

Si requieres usar la función de eliminar un nodo es necesario hacer un recorrido hasta el penúltimo nodo en este ejemplo se usa un contador temp que recorre los next que recorre hasta el penúltimo nodo luego se eliminas el tail actual, declaras la posición actual del temp como tail y haces que se declare a un valor nulo.


<img width="342" height="386" alt="image" src="https://github.com/user-attachments/assets/8169e8db-8cba-47f0-84a9-10a4877a5039" />
# Actividad 4: En esta actividad te toca a ti analizar una estructura de datos e implementarla.

ofApp.h
```cpp
#pragma once
#include "ofMain.h"
// Nodo de la cola
struct Node {
	float x, y;
	float radius;
	ofColor color;
	float opacity;
	Node * next;
	Node(float _x, float _y, float _radius, ofColor _color, float _opacity)
		: x(_x)
		, y(_y)
		, radius(_radius)
		, color(_color)
		, opacity(_opacity)
		, next(nullptr) { }
};
// Implementación manual de una cola (FIFO)
class BrushQueue {
public:
	Node * front;
	Node * rear;
	int size;
	int maxSize;
	BrushQueue(int _maxSize);
	~BrushQueue();
	void enqueue(float x, float y, float radius, ofColor color, float opacity);
	void dequeue();
	void clear();
	bool isEmpty();
};

// Constructor
BrushQueue::BrushQueue(int _maxSize)
	: front(nullptr)
	, rear(nullptr)
	, size(0)
	, maxSize(_maxSize) { }
// Destructor
BrushQueue::~BrushQueue() {
	clear();
}
// Implementa aquí `enqueue()`
void BrushQueue::enqueue(float x, float y, float radius, ofColor color, float opacity) {

	Node * newNode = new Node(x, y, radius, color, opacity);

	if (size >= maxSize) {
		dequeue();
	}

	if (front == nullptr) {
		front = rear = newNode;
	} else {
		rear->next = newNode;
		rear = newNode;
	}
	size++;
}

// TODO: crear un nuevo nodo y agregarlo al final de la cola.
// Si la cola supera `maxSize`, eliminar el nodo más antiguo con `dequeue()`.
// Implementa aquí `dequeue()`
void BrushQueue::dequeue() {

	Node * antiguo = front;


	while(antiguo != nullptr) {
		Node * nextNode = antiguo->next;
		delete antiguo;
	}
	antiguo->next = nullptr;
	size--;
}

// Implementa aquí `clear()`
void BrushQueue::clear() {
	Node * current = front;
	while (current != nullptr) {
		Node * nextNode = current->next;
		delete current;
	}
	front = rear = nullptr;
	size = 0;
}
// Implementa aquí `isEmpty()`
bool BrushQueue::isEmpty() {
	if (front == nullptr && rear == nullptr) {
		cout << "No existe ningun nodo";
		return true;
	} else {
		cout << "Aun hay nodos en la lista";
		return false;
	}
}

class ofApp : public ofBaseApp {
public:
	BrushQueue strokes; // Cola de trazos
	float backgroundHue = 0;
	ofApp()
		: strokes(50) { } // Tamaño máximo de la cola
	void setup();
	void update();
	void draw();
	void keyPressed(int key);
};

```
revisar: 
* la función `void BrushQueue` esta incompleta y falta refinar bastante, ¿que pasa si el front es igual al rear?, o ¿si no existe ningún nodo?
