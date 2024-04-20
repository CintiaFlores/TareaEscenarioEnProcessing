class Personaje {
  PImage imagen;
  float x, y;
  float w, h;
  float canvasWidth, canvasHeight;

  Personaje(PImage img, float x, float y, float w, float h, float canvasWidth, float canvasHeight) {
    this.imagen = img;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.canvasWidth = canvasWidth;
    this.canvasHeight = canvasHeight;
  }

  void mostrar() {
    image(imagen, x, y, w, h);
  }
}
