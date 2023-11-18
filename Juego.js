class Juego {
  constructor() {
    this.cantEnemi = 5;
    this.personaje = new Personaje(width/2, height-12.5, 100, 100);
    this.enemigo = [];
    for (let i=0; i<this.cantEnemi; i++) {
      this.enemigo[i] = new Enemigo(150+i*40, 50, 30, 50);
      this.contador= 0;
      this.contadorSeg= 0;
      this.golpes=0;
      this.estado="menu";
     
    }
  }

  dibujar() {
    if (this.estado=="menu") {
      this.menu();
    } else
      if (this.estado=="juego") {
        this.juego();
      }
    if (this.estado=="perdiste") {
      this.perder();
    }
    if (this.estado=="ganaste") {
      this.ganar();
    }
    if (this.contadorSeg>=50) {
      this.estado="ganaste";
    }
    if (this.golpes>=5) {
      this.estado="perdiste";
    }
    if (this.estado=="historia") {
      this.historia();
    }
  }


  actualizar() {
  }

  menu() {
    background(100, 20, 100);
    this.reinicio();
    push();
    textAlign(CENTER);
    textSize(20);
    fill(255);
    text("Alicia en el Pais de las Maravillas:\nAccidente del no cumpleaños", width/2, 150);
    pop();
    push();
    rect(100, 250, 100, 100);
    rect(300, 250, 100, 100);
    textAlign(CENTER);
    text("Historia", 150, 300);
    text("Play", 350, 300);
    pop();
  }

  juego() {
    this.contador++;
    if (this.contador>=60) {
      this.contadorSeg++;
      this.contador=0;
    }
    text("tiempo:"+this.contadorSeg, 30, 40);
    text("golpes: "+this.golpes, 30, 70);

    this.personaje.dibujar();
    for (let i=0; i<this.cantEnemi; i++) {
      this.enemigo[i].dibujar();
    }
    this.tocado();
  }

  perder() {
    push();
    push();
    fill(150, 10, 0);
    pop();
    textAlign(CENTER);
    textSize(20);
    text("Que mala suerte, perdiste!", width/2, 200);
    text("presiona ENTER para volver a jugar", width/2, 250);
    pop();
  }

  ganar() {
    push();
    push();
    fill(10, 150, 0);
    pop();
    textAlign(CENTER);
    textSize(20);
    text("Que bueno, ganaste!", width/2, 200);
    text("presiona ENTER para volver a jugar", width/2, 250);
    pop();
  }


  movimientoConTecla(keyCode) {
    this.personaje.movimientoConTecla(keyCode);
    if (keyCode==ENTER && this.estado=="ganaste") {
      this.estado="menu";
    }
    if (keyCode==ENTER && this.estado=="perdiste") {
      this.estado="menu";
    }
    if (keyCode==ENTER && this.estado=="historia") {
      this.estado="menu";
    }
  }
  colicion(ex, ey, eal, ean, px, py, pan, pal) {
    return ey+eal/2 > py-pal/2 && px > ex-ean && px < ex+ean;
  }

  tocado() {
    for (let i=0; i<this.cantEnemi; i++) {
      if (this.colicion(this.enemigo[i].posX, this.enemigo[i].posY, this.enemigo[i].tamY, this.enemigo[i].tamX, this.personaje.posX, this.personaje.posY, this.personaje.tamX, this.personaje.tamY) && this.enemigo[i].chocado) {
        //this.enemigo[i].chocado = false;
        this.enemigo[i].posY = 10;
        this.golpes++;
      }
    }
  }
  reinicio() {
    this.personaje = new Personaje(width/2, height-12.5, 25, 25);
    for (let i=0; i<this.cantEnemi; i++) {
      this.enemigo[i] = new Enemigo(150+i*40, 50, 30, 50);
    }
    this.contador= 0;
    this.contadorSeg= 0;
    this.golpes=0;
  }
  mouseClicked() {
    if (this.estado=="menu" && mouseX>300 && mouseX<400 && mouseY>250 && mouseY<350) {
      this.estado="juego";
    } else if (this.estado=="menu" && mouseX>100 && mouseX<200 && mouseY>250 && mouseY<350) {
      this.estado="historia";
    }
  }

  historia() {
    push();
    textAlign(CENTER);
    textSize(20);
    text("Alicia se encuentra en casa del Sombrerero y la Liebre\ncelebrando el feliz no cumpleaños, en un accidente\nque tiene el Sombrerero deja caer un monton\nde tazas las cuales Alicia debe esquivar para ganar", width/2, 50);
    text("Debes evitar chocar cinco veces con las tazas\no perderas,si superas el tiempo de juego\nchocando con 4 o menos ganas", width/2, 200);
    text("presiona enter para volver a menu", width/2, 350);
    pop();
  }
}
