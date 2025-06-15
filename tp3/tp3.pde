PImage imagen;
boolean invertido = false;
float grosorAleatorio() {
  return random(4, 8);
}
void setup() {
  size(800, 400);
  imagen=loadImage("imagen.jpg");
}
void draw() {
  background(255);
  image(imagen, 0, 0, 400, 400);

  int espacioX = 16;
  int espacioY = 50; // distancia entre filas
  for (int y = 0; y < height; y += espacioY) {
    for (int x = 350; x < width; x += espacioX) {
      strokeWeight(grosorAleatorio());
      if (invertido == false) {
        if ((y / espacioY) % 2 == 0) {
          line(x, y, x + 40, y + espacioY); // ↘
        } else {
          line(x, y + espacioY, x + 40, y); // ↗
        }
      } else {
        if ((y / espacioY) % 2 == 0) {
          line(x, y + espacioY, x + 40, y); // ↗
        } else {
          line(x, y, x + 40, y + espacioY); // ↘
        }
      }

      image(imagen, 0, 0, 400, 400);
    }
  }
}
void mousePressed() {
  if (invertido == false) {
    invertido = true;
  } else {
    invertido = false;
  }
}
void keyPressed() {
  if (key =='r' ) {
    invertido = false; 
  }
}
