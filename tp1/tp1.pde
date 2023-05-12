//Sanchez Guadalupe
//tp1 obra de arte electronico comision 3

//declaracion con asignacion
PImage imagen1,imagen2,imagen3;
PFont fuente1, fuente2;
int contador=0;
int movXtexto1=0;
int movYtexto2=0;
int fade=0;

void setup(){
 size(640,480);
 imagen1= loadImage("imagen1.jpg");
 imagen2= loadImage("imagen2.jpg");
 imagen3= loadImage("imagen3.jpg");
 fuente1= loadFont("BookmanOldStyle-48.vlw");
 fuente2= loadFont("ComicSansMS-Italic-48.vlw");
}

void draw(){
  if (contador <540){
    contador++;
  }
  if (contador<=180){
      contador++;
  image(imagen1,0,0,640,480);
  
  textFont(fuente1, 40);
  textAlign(CENTER,CENTER);
  textSize(45);
  fill(#FAFF05);
  text("arte digital",movXtexto1,270);
  movXtexto1++;
  
  }else if(contador> 180 && contador < 360){
      contador++;
     image(imagen2, 0, 0, 640, 480);
      textFont(fuente2, 40);
  textAlign(CENTER,CENTER);
  textSize(30);
  fill(#FAF203);
  text("Es una forma de expresion artistica",320,movYtexto2);
  movYtexto2++;
   
  }else if(contador>360){
   image(imagen3, 0, 0, 640, 480);
     textFont(fuente2, 40);
  textAlign(CENTER,CENTER);
  textSize(30);
  fill(#048120);
  text("Cada vez mas usan las \n computadoras para producir obras",320,50);
  fade++;
  
  fill(#03FAE3);
  rect(510,420,100,70);
  textAlign(LEFT,CENTER);
  textSize(25);
  fill(0);
  text("reiniciar",510,440);
  
  }

}

void mousePressed(){
  if(contador >360 && mouseX > 530 && mouseX <630 && mouseY > 420 && mouseY<470){
    contador=0;
    movXtexto1=0;
    movYtexto2=0;
fade=0;
  }
}
