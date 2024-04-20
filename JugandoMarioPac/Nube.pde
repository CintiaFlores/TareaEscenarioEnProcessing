class Nube {
  PImage imagen;
  float x, y;
  float w, h;
  float speed;
  int direction;
  float canvasWidth, canvasHeight;

  Nube(PImage img, float x, float y, float w, float h, float speed, float canvasWidth, float canvasHeight) {
    this.imagen = img;
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.speed = speed;
    this.direction = 1;
    this.canvasWidth = canvasWidth;
    this.canvasHeight = canvasHeight;
  }

  void mover() {
    x += speed * direction;
    if (x > canvasWidth - w || x < 0) {
      direction *= -1;
    }
  }

  void mostrar() {
    image(imagen, x, y, w, h);
  }
}
