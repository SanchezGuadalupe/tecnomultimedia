//Guadalupe Sanchez 93088/6
//tp2 comision 3

float cantidad=13;
float tamano;
PImage ilusionoptica;

void setup(){
 size(800, 400);
 tamano= 400/cantidad;
 ilusionoptica=loadImage("ilusionoptica.jpg");
}

void draw() {
image(ilusionoptica,0,0);
background(0);
  for (int x=0; x<cantidad; x++){
    for (int y=0; y<cantidad; y++){
      if ((x+y)%2==0) {
        fill(#FEFF0A);
        
        
      }else{
        fill(0);
      }
    rect(x*tamano, y*tamano, tamano, tamano);
  }
}
}
