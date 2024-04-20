PImage fondo;
Personaje personaje;
Enemigo[] enemigos = new Enemigo[2];
Nube[] nubes = new Nube[4];

void setup() {
  size(800, 800);
  fondo = loadImage("fondo.png"); // Carga la imagen de fondo
  personaje = new Personaje(loadImage("personaje.png"), width / 2, height - 100, 80, 80, width, height);
  for (int i = 0; i < 2; i++) {
    enemigos[i] = new Enemigo(loadImage("enemigo.png"), width - 50 * (i + 1), height / 2, 30, 30, 4, width, height);
  }
  for (int i = 0; i < 4; i++) {
    nubes[i] = new Nube(loadImage("nube.png"), random(0, width - 100), 50 * (i + 1), 100, 50, random(1, 4), width, height);
  }
}

void draw() {
  background(255);
  image(fondo, 0, 0, width, height); // Dibuja la imagen de fondo

  // Dibuja el piso de bloques
  for (int i = 0; i < width; i += 40) {
    for (int j = height - 40; j < height; j += 20) {
      rect(i, j, 40, 20);
    }
  }

  // Dibuja y mueve las nubes
  for (Nube n : nubes) {
    n.mostrar();
    n.mover();
  }
  
   // Actualiza la posición del personaje para que siga al cursor del mouse
  personaje.x = mouseX - personaje.w / 2; // Centra el personaje en el cursor horizontalmente
  personaje.y = mouseY - personaje.h / 2; // Centra el personaje en el cursor verticalmente

  // Dibuja el personaje
  personaje.mostrar();

  // Dibuja y mueve los enemigos
  for (Enemigo e : enemigos) {
    e.mostrar();
    e.mover();
  }
}
