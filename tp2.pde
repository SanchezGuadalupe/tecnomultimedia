//Guadalupe Sanchez 93088/6
//tp2 comision 3

int cantidad=10;
int tamano;
PImage ilusionoptica;
int x;
int y;

void setup() {
  size(800, 400);
  tamano= 400/cantidad;
  ilusionoptica=loadImage("ilusionoptica.jpg");
}

void draw() {
  image(ilusionoptica, 0, 0, 800, 400);
  translate(400, 0);
  push();
  for (int x=0; x<cantidad; x++) {
    for (int y=0; y<cantidad; y++) {
      float distan = dist(mouseX, mouseY, x*tamano, y*tamano);
      float tono = distan*255/dist(400, 400, 0, 0);
      fill(0, tono);
      rect(x*tamano, y*tamano, tamano, tamano);
    }
  }
  pop();
}

void keyPressed() {
  cantidad = 10;
}
void mousePressed() {
  cantidad ++;
}
