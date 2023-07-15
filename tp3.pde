//Guadalupe Sanchez 93088/6
//comision 3 tp3 Aventura gráfica

//Resolución de 600x600 LISTO
//Al menos 1 función propia con parámetros (al menos 1) que NO retorna un valor LISTO
//Al menos 1 función propia con parámetros (al menos 1) que RETORNA un valor LISTO
//Condicionales (if - else). LISTO
//Ciclos FOR LISTO
//Manejo de arreglos LISTO
//Eventos (mouse y/o teclado): modificación de variables. LISTO
//Algunas funciones matemáticas: dist(), map(), random(); LISTO

PImage[] photos;
String[] textos;
String[] text = new String[13];//cantidad de textos
int cantImagenes = 8;//cantidad de imagenes
int estado;
boolean botoncomenzar, botonno, botonsi, botonfin, botonseguir, botoncreditos;
PFont fuente;

void setup() {
  size(600, 600);

  //cargamos las imagenes;
  photos = new PImage[8];

  //fuente
  fuente= loadFont("BookAntiqua.vlw");

  //ciclo for para cargar las imagenes:
  for ( int i=0; i<cantImagenes; i++ ) {
    photos[i] = loadImage("photos/photo"+nf(i, 2)+".jpeg");
  }

  //carga de los textos
  //crear las casillas del array de textos:
  textos = new String[12];
  //escrimos cada texto en cada casillero:
  textos[0]="Guadalupe Sanchez estudiante de la facultad de artes de \nla UNLP nacio en Cordoba en el 2003 y esta es su 2da carrera\n\n\n\n\n\n\n\n\n\n  Lewis Carroll nacio el 27 de enero de 1832 en Reino Unido fue \nlogico matematico fotografo y escritor";
  textos[1]="Menu";
  textos[2]="Alicia se encontraba descansando\njunto a su gata Diana en el jardín de su casa\ncuando vió un conejo blanco pasar bastante apurado junto a ella\ndeberia seguirlo?";
  textos[3]="Alicia decide ignorar al conejo blanco\ny seguir pasando la tarde en su jardin";
  textos[4]="Alicia decide seguir al conejo blanco y averiguar hacia donde va\nentonces llega a un pozo esccondido entre los árboles del jardín\ndeberia saltar?";
  textos[5]="A Alicia le pareció muy peligroso tirarse por lo\nque prefirió volver a su casa y ver una pelicula";
  textos[6]="Despues de caer por ese extraño y mágico pozo\nAlicia llega a una tierra bastante pequiliar\nqueda maravillada de todas las cosas extrañas\nque hay en él y decide explorarlo";
  textos[7]="Caminando por los magicos caminos del País de las Maravillas\nse encuentra con un señor de apariencia chistosa y desarreglada\nquién se presenta a la niña era el Sombrerero Loco\nAlicia le planteo su incertidumbre de no saber donde esta y de como volver a su hogar\npor lo que el Sombrerero la invita a su casa a tomar el te\n deberia aceptar la invitacion?";
  textos[8]="Alicia le agradece al Sombrerero su propuesta pero declina la invitación\nrealmente le parecía peligroso irse con un desconocido y mas en un lugar que no conoce\nlamentablemente se adentra más en el bosque y termina\nperdiendose por siempre en esta tierra mágica";
  textos[9]="Alicia decide ir con él\nal llegar a su casa era una cabaña muy colorida y llena de magia\nfueron al patio de esta donde se encontraba una mesa muy larga\ny llena de tazas, teteras, y cosas dulces para comer en ella\ntambién se encontraba un invitado mas la Liebre de Marzo\nEl sombrerero la invito a que se una a su celebración del ¨No cumpleaños¨\nEn medio de la celebración le ofrecen ayuda a Alicia para que vuelva a su casa\n aceptara la invitacion?";
  textos[10]="Alicia agradece la intencion pero decide\nquedarse a vivir con ellos en esta tierra magica por siempre";
  textos[11]="Alicia acepta la ayuda del Sombrerero y la Liebre\ny la llevan a otro pozo similar al del jardín de su casa\nAlicia agradece la linda tarde que pasaron\ny luego de se despedirse salta al pozo";
  textos[12]="Alicia despierta en su jardín junto a su gatita\npareciera que nada hubiera ocurrido como si el tiempo no hubiera pasado\nAlicia se dedico lo que quedaba de la tarde para contarle\na Diana la aventura que acababa de tener";
}

void draw() {+
  // println(mouseX);
  //println(mouseY);

  //botoncomenzar= (mouseX > 190 && mouseY > 500 && mouseX < 410 && mouseY < 573);
  // botonsi= (mouseX > 43 && mouseY > 522 && mouseX < 190 && mouseY < 584);
  // botonno=(mouseX > 420 && mouseY > 523 && mouseX < 567 && mouseY < 585);
  //botonfin=(mouseX > 164 && mouseY > 525 && mouseX < 402 && mouseY < 582);
  // botonseguir=(mouseX > 117 && mouseY > 520 && mouseX < 485 && mouseY < 578);
  // botoncreditos= (mouseX> 100 && mouseY > 528 && mouseX < 280 && mouseY < 575);

  //println(estado);



  //pantalla: 0
case 0:
  image( photos[1], 0, 0 );
  text (textos[0], 25, 32, 560, 160);
  botonseguir(46, 519, 170);
  break;

  //pantalla: 1
case 1:
  image( photos[1], 0, 0 );
  text(textos[1], 25, 32, 560, 160);
  botoncreditos (46, 519, 170);//creditos
  botoncomenzar (423, 519, 520);//comenzar
  break;

  //pantalla: 2
case 2:
  image( photos[2], 0, 0 );
  text(textos[2], 25, 32, 560, 200);
  botonsi(46, 519, 170);//si
  botonno (423, 519, 520);//no
  break;

  //pantalla: 3
case 3:
  image( photos[2], 0, 0 );
  text(textos[2], 25, 32, 560, 160);
  botonfin (46, 519, 170);//fin
  break;

  //pantalla: 4
case 4:
  image( photos[4], 0, 0 );
  text(textos[4], 25, 32, 560, 160);
  botonsi (46, 519, 170);//si
  botonno (423, 519, 520);//no
  break;

  //pantalla: 5
case 5:
  image(photos[3], 0, 0 );
  text(textos[5], 25, 32, 560, 160);
  botonfin (150, 540, 600);//fin
  break;

  //pantalla: 6
case 6:
  image(photos[5], 0, 0 );
  text(textos[6], 25, 32, 560, 160);
  botonseguir ( 175, 540, 600);//seguir
  break;

  //pantalla: 7
case 7:
  image(photos[6], 0, 0 );
  text(textos[7], 25, 32, 560, 160);
  botonsi (46, 519, 170);//si
  botonno (423, 519, 520);//no
  break;

  //pantalla: 8
case 8:
  image(photos[7], 0, 0 );
  text(textos[8], 25, 32, 560, 160);
  botonfin (46, 519, 170);//fin
  break;

  // pantalla: 9
case 9:
  image(photos[8], 0, 0 );
  text(textos[9], 25, 32, 560, 160);
  botonsi (46, 519, 170);//si
  botonno (423, 519, 520);//no
  break;

  //pantalla: 10
case 10:
  image(photos[8], 0, 0 );
  text(textos[10], 25, 32, 560, 160);
  botonfin (46, 519, 170);//fin
  break;

  //pantalla: 11
case 11:
  image( photos[4], 0, 0 );
  text(textos[11], 25, 32, 560, 160);
  botonseguir (46, 519, 170);//seguir
  break;

  //pantalla: 12 FINAL
case 12:
  image( photos[2], 0, 0 );
  text (textos[12], 25, 32, 560, 160);
  botonfin (46, 519, 170);//fin
  break;
}
}

//boton
void mouseClicked() {
  if (estado== 0 && botoncomenzar) {
    estado = 1;
  }
  //pantalla1
  else if (estado== 1) {
    if (botoncreditos) {
      estado = 0;
    }
    if (botoncomenzar) {
      estado = 2;
    }
  }
  //pantalla 2
  else if (estado == 2) {
    if (botonno) {
      estado= 3;
    }
    if (botonsi) {
      estado=4;
    }
  }
  //pantalla 3
  else if (estado == 3) {
    if (botonfin ) {
      estado= 1;
    }
  }
  //pantalla 4
  else if (estado == 4) {
    if (botonno) {
      estado= 5;
    }
    if (botonsi) {
      estado= 6;
    }
  }
  //pantalla 5
  else if (estado == 5) {
    if (botonfin) {
      estado=1;
    }
  }
  //pantalla 6
  else if (estado == 6) {
    if (botonseguir) {
      estado= 7;
    }
  }
  //pantalla 7
  else if (estado ==7) {
    if (botonno) {
      estado= 8;
    }
    if (botonsi) {
      estado= 9;
    }
  }
  //pantalla 8
  else if (estado== 8) {
    if (botonfin) {
      estado= 1;
    }
  }
  //pantalla 9
  else if (estado== 9) {
    if (botonno) {
      estado= 10;
    }
    if (botonsi) {
      estado=11;
    }
  }
  //pantalla 10
  else if (estado== 10) {
    if (botonfin) {
      estado=1;
    }
  }
  //pantalla 11
  else if (estado== 11) {
    if (botonseguir) {
      estado= 12;
    }
  }
  //pantalla 12
  else if (estado== 12) {
    if (botonfin) {
      estado= 1;
    }
  }
}
