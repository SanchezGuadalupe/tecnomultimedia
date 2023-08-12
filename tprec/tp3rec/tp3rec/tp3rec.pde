//Guadalupe Sanchez Rodriguez Legajo 93088/6
//tp3 rec Aventura Grafica
//link video: https://youtu.be/0vNXT5nvhoA

PImage imagenes;
//imagenes = new PImage [14];
int pag = 0;
 // String imagenes = new PImage[14];
 // for (int i=0; i<14; i++) {
  // imagenes[i] = loadImage("photo"+i+".jpeg");

String[] texto = new String[20];

String[] botonSeguir = new String[20];
String[] botonSeguir2 = new String[20];




void setup() {
  size(600, 600);
  pag=0;

  texto[0]="Créditos\n\n\n\nGuadalupe Sanchez Rodriguez legajo 93088/6\n tp3 Aventura Gráfica";
  texto[1]="Menú\n\n\n\n\n Alicia en el Pais de Las Maravillas\nde Lewis Carroll";
  texto[2]="Alicia se encontraba descansando,\njunto a su gata Diana, en el jardín de su casa\ncuando vió a un conejo blanco pasar\nbastante apurado junto a ella,\ndeberia seguirlo?";
  texto[3]="FINAL1:Alicia decide ignorar al conejo blanco\ny seguir pasando la tarde en su jardin";
  texto[4]="Alicia decide seguir al conejo blanco y\naveriguar hacia donde va.\nEntonces llega a un pozo\nescondido entre los árboles del jardín\ndebería saltar?";
  texto[5]="FINAL2:A Alicia le pareció muy peligroso tirarse, por lo\nque prefirió volver a su casa y ver una pelicula";
  texto[6]="Despues de caer por ese extraño y mágico pozo\nAlicia llega a una tierra bastante pequiliar,\nqueda maravillada de todas las cosas extrañas\nque hay en él y decide explorarlo";
  texto[7]="Caminando por los magicos caminos del País\nde las Maravillas Alicia\nse encuentra con un señor de apariencia\nchistosa y desarreglada quién se presenta a la niña\ncomo el Sombrerero Loco";
  texto[8]="Alicia le plantea al Sombrerero no saber\ndonde esta y de como puede volver a su hogar,\nel Sombrerero la invita a su casa a tomar el té\n deberia aceptar la invitacion?";
  texto[9]="FINAL3:Alicia le agradece al Sombrerero su\npropuesta pero declina la invitación,\nrealmente le parecía peligroso irse\ncon un desconocido y mas en un lugar\nque no conoce.\nLamentablemente se adentra más en el bosque y\ntermina perdiendose por\nsiempre en esta tierra mágica";
  texto[10]="Alicia se va con él,\nen su casa, fueron al patio\ndonde habia una larga mesa llena\nde tazas con té y cosas dulces.Pasaron toda\nla tarde de celebracion con el ¨No\ncumpleaños¨. Luego de la celebración le ofrecen\nayuda a Alicia para que vuelva a su casa\naceptara la invitacion?";
  texto[11]="FINAL4: Alicia decide quedarse a vivir con ellos\nen esa tierra magica y celebrar las fiestas\nde no cumpleaños";
  texto[12]="Alicia acepta la ayuda del Sombrerero y la Liebre\ny la llevan a otro pozo similar al del jardín de su casa,\nAlicia agradece la linda tarde que pasaron\ny luego de se despedirse salta al pozo";
  texto[13]="FINAL5: Alicia despierta en su jardín junto a su gatita\npareciera que nada hubiera ocurrido como\nsi el tiempo no hubiera pasado\nAlicia se dedico lo que quedaba de\nla tarde para contarle\na Diana la aventura que acababa de tener";


  botonSeguir[0] = "IR A MENU";
  botonSeguir[1] = "COMENZAR";
  botonSeguir[2] = "SI";
  botonSeguir[4] = "SI";
  botonSeguir[6] = "SIGUIENTE";
  botonSeguir[7] = "SIGUIENTE";
  botonSeguir[8] = "SI";
  botonSeguir[10] = "SI";
  botonSeguir[12] = "SIGUIENTE";


  botonSeguir2[1] = "CREDITOS";
  botonSeguir2[2] = "NO";
  botonSeguir2[3] = "VOLVER";
  botonSeguir2[4] = "NO";
  botonSeguir2[5] = "VOLVER";
  botonSeguir2[8] = "NO";
  botonSeguir2[9]= "VOLVER";
  botonSeguir2[10]= "NO";
  botonSeguir2[11]= "VOLVER";
  botonSeguir2[13]= "VOLVER";

  // pag_image=0;
 // String imagenes = new PImage[14];
 // for (int i=0; i<14; i++) {
  // imagenes[i] = loadImage("photo"+i+".jpeg");
//}
}

void draw() {
  background(255);
 

  if (pag == 0 ) {
    // image (photo[0], 0, 0);

    push();
    textSize (20);
    fill(0);
    text (texto[0], 100, 50);
    pop ();
    boton ( 100, 400, 100, 100, botonSeguir, 0);
    push();
    fill (79, 167, 101, 100);
    rect(40, 10, 500, 300);
    pop();
  } else if (pag == 1 ) {
   // image(photo[1], 0, 0);

    push();
    fill(0);
    text (texto[1], 100, 50);
    pop();
    boton (100, 400, 100, 100, botonSeguir, 1);
    boton2 (400, 400, 100, 100, botonSeguir2, 1);
    push();
    fill (79, 167, 101, 100);
    rect(40, 10, 500, 300);
    pop();
  } else if (pag == 2) {
    // image(photo[2], 0, 0);

    push();
    fill(0);
    text (texto[2], 100, 50);
    pop();

    boton ( 100, 400, 100, 100, botonSeguir, 2);
    boton2 (400, 400, 100, 100, botonSeguir2, 2);
    push();
    fill (79, 167, 101, 100);
    rect(40, 10, 500, 300);
    pop();
  } else if (pag == 3 ) {
   // image(photo[3], 0, 0);

    push();
    fill(0);
    text (texto[3], 100, 50);
    pop();


    boton ( 100, 400, 100, 100, botonSeguir2, 3);
    push();
    fill (79, 167, 101, 100);
    rect(40, 10, 500, 300);
    pop();
  } else if (pag == 4 ) {
   // image(photo[4], 0, 0);

    push();
    fill(0);
    text (texto[4], 100, 50);
    pop();

    boton ( 100, 400, 100, 100, botonSeguir, 4);
    boton2 (400, 400, 100, 100, botonSeguir2, 4);
    push();
    fill (79, 167, 101, 100);
    rect(40, 10, 500, 300);
    pop();
  } else if (pag == 5 ) {
   // image(photo[5], 0, 0);

    push();
    fill(0);
    text (texto[5], 100, 50);
    pop();

    boton (100, 400, 100, 100, botonSeguir2, 5);
    push();
    fill (79, 167, 101, 100);
    rect(40, 10, 500, 300);
    pop();
  } else if (pag == 6 ) {
   // image(photo[6], 0, 0);

    push();
    fill(0);
    text (texto[6], 100, 50);
    pop();
    boton ( 100, 400, 100, 100, botonSeguir, 6);
    push();
    fill (79, 167, 101, 100);
    rect(40, 10, 500, 300);
    pop();
  } else if (pag == 7 ) {
   // image(photo[7], 0, 0);

    push();
    fill(0);
    text (texto[7], 100, 50);
    pop();

    boton ( 100, 400, 100, 100, botonSeguir, 7);
    push();
    fill (79, 167, 101, 100);
    rect(40, 10, 500, 300);
    pop();
  } else if (pag == 8 ) {
   // image(photo[8], 0, 0);

    boton ( 100, 400, 100, 100, botonSeguir, 8);
    boton2 (400, 400, 100, 100, botonSeguir2, 8);
    push();
    fill(0);
    text (texto[8], 100, 50);
    pop();
  } else if (pag == 9 ) {
   // image(photo[9], 0, 0);

    push();
    fill(0);
    text (texto[9], 100, 50);
    pop();

    boton (100, 400, 100, 100, botonSeguir2, 9);
    push();
    fill (79, 167, 101, 100);
    rect(40, 10, 500, 300);
    pop();
  } else if (pag == 10 ) {
    // image(photo[10], 0, 0);


    push();
    fill(0);
    text (texto[10], 100, 50);
    pop();
    boton ( 100, 400, 100, 100, botonSeguir, 10);
    boton2 (400, 400, 100, 100, botonSeguir2, 10);
    push();
    fill (79, 167, 101, 100);
    rect(40, 10, 500, 300);
    pop();
  } else if (pag == 11 ) {
    //image(photo[11], 0, 0);


    push();
    fill(0);
    text (texto[11], 100, 50);
    pop();
    boton (100, 400, 100, 100, botonSeguir2, 11);
    push();
    fill (79, 167, 101, 100);
    rect(40, 10, 500, 300);
    pop();
  } else if (pag == 12 ) {
     //image(photo[12], 0, 0);

    push();
    fill(0);
    text (texto[12], 100, 50);
    pop();
    boton (100, 400, 100, 100, botonSeguir, 12);
    push();
    fill (79, 167, 101, 100);
    rect(40, 10, 500, 300);
    pop();
  } else if (pag == 13 ) {
    // image(photo[13], 0, 0);


    push();
    fill(0);
    text (texto[13], 100, 50);
    pop();
    boton2 (100, 400, 100, 100, botonSeguir2, 13 );
    push();
    fill (79, 167, 101, 100);
    rect(40, 10, 500, 300);
    pop();
  }
}



void boton (int x, int y, int ancho, int alto, String [] papita, int pag) {
  push();
  rectMode(CENTER);
  rect(x, y, ancho, alto);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(16);
  text (papita[pag], x, y);
  pop();
}




void boton2 (int x, int y, int ancho, int alto, String [] botonSeguir2, int pag) {
  push();
  rectMode(CENTER);
  rect(x, y, ancho, alto);
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(16);
  text (botonSeguir2[pag], x, y);
  pop();
}


boolean botondibujo(float x, float y, float ancho, float alto ) {
  return ( mouseX>x-ancho/2 && mouseX<x+ancho/2 && mouseY>y-alto/2 && mouseY<y+alto/2 );
}



void mousePressed () {
  if (botondibujo(100, 400, 200, 100)&& pag == 0) {
    pag=1;
   background (255);
  }if (botondibujo(100, 400, 200, 100)&& pag == 1) {
    pag=2;
    background (255);
  } else if (botondibujo(100, 400, 200, 100)&& pag == 2) {
    pag=4;
    background (255);
  } else if (botondibujo(100, 400, 200, 100)&& pag == 3) {
    pag=0;
    background (255);
  } else if (botondibujo(100, 400, 200, 100)&& pag == 4) {
    pag=6;
    background (255);
  } else  if (botondibujo(100, 400, 200, 100)&& pag == 5) {
    pag=0;
    background (255);
  } else  if (botondibujo(100, 400, 200, 100)&& pag == 6) {
    pag=7;
    background (255);
  } else  if (botondibujo(100, 400, 200, 100)&& pag == 7) {
    pag=8;
    background (255);
  } else  if (botondibujo(100, 400, 200, 100)&& pag == 8) {
    pag=10;
    background (255);
  } else  if (botondibujo(100, 400, 200, 100)&& pag == 9) {
    pag=0;
    background (255);
  } else  if (botondibujo(100, 400, 200, 100)&& pag == 10) {
    pag=12;
    background (255);
  } else  if (botondibujo(100, 400, 200, 100)&& pag == 11) {
    pag=0;
    background (255);
  } else  if (botondibujo(100, 400, 200, 100)&& pag == 12) {
    pag=13;
    background (255);
  } else  if (botondibujo(100, 400, 200, 100)&& pag == 13) {
    pag=0;
    background (255);
  }


  if (botondibujo (400, 400, 200, 100)&& pag ==1) {
    pag=0;
    background (255);
  }
  if (botondibujo(400, 400, 200, 100)&& pag ==2) {
    pag=3;
    background (255);
  }
  if (botondibujo(400, 400, 200, 100)&& pag ==4) {
    pag=5;
    background (255);
  }
  if (botondibujo(400, 400, 200, 100)&& pag ==8) {
    pag=9;
    background (255);
  }
  if (botondibujo(400, 400, 200, 100)&& pag ==10) {
    pag=11;
    background (255);
  }
}
