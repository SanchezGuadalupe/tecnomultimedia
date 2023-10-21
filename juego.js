class Juego {
  constructor() {

    this.alicia = new alicia();
    this.Caja = [];
    this.profe = new Enemigo();
    this.estado = 0;
    this.a = 0;
    this.contador = 0;
    this.tiempo = 1000;
  }

  dibujar(img, img2, img3, patio) {
    if (this.estado == 0) {

      background(50, 125, 25);
      fill(0);
      textAlign(CENTER, CENTER);
      //text("Pulsa el mouse para empezar", width/2, height/2);
      text("Click en enter para saltar", width/2, height/3 * 2);
      fill( 25, 100, 0);
      ellipse(width/2, height/3, 150, 80);
      fill(255);
      text("INICIO", width/2, height/3);
    } else if (this.estado == 1) {

      // Distancia entre caja y caja
      background(selva);
      this.tiempo --;
      fill(0);
      //text("Tiempo:" + this.tiempo, 550, 50 );
      this.contador += 1;
      this.a += 0.00005;
      if (random(1) < 0.0005 + this.a && this.contador >= 40) {
        this.Caja.push(new Obstaculo());
        this.contador = 0;
      }

      this.alicia.dibujar(img2);
      this.alicia.mover();

      for (let t of this.Caja) {
        t.dibujar(img3);
        t.mover();
        if (this.alicia.hits(t)) {

          this.alicia.x -= 5;
        }
      }

      this.profe.dibujar(img);
      if ( this.tiempo == 0) {
        this.estado = 3
      }
      if (this.profe.x + this.profe.tam > this.alicia.x &&
        this.profe.x < this.alicia.x + this.alicia.tam &&
        this.profe.y + this.profe.tam > this.alicia.y &&
        this.profe.y < this.alicia.y + this.alicia.tam) {

        fill(0);
        textAlign(CENTER, CENTER);
        this.estado = 2;
      }
    } else if (this.estado == 2) {
      background(230, 30, 12);
      fill(0);
      text("Te atrapo la profe!", width/2, height/3)
        fill(250, 50, 35);
      ellipse(width/2, height/3 * 2, 150, 80);
      fill(0);
      text("RESET", width/2, height/3 * 2);
    } else if ( this.estado == 3) {
      background(30, 230, 12);
      fill(0);
      text("Escapaste de la profe!", width/2, height/3)
        fill(50, 250, 35);
      ellipse(width/2, height/3 * 2, 150, 80);
      fill(0);
      text("RESERT", width/2, height/3 * 2);
    }
  }
  saltar() {
    if (key == ' ') {
      this.alicia.saltar();
    }
  }
  comienzo() {
    if (dist(mouseX, mouseY, width/2, height/3) < 50 && this.estado == 0) {
      this.estado = 1;
    }
  }
  reinicio() {
    if (dist(mouseX, mouseY, width/2, height/3 * 2) < 50 && this.estado == 2 || this.estado == 3) {
      this.estado = 0;
      this.a = 0;
      this.contador = 0;
      this.tiempo = 1000;
      this.alicia.reinicio();
      this.Caja = [];
     
      this.Caja.reinicio();
    }
  }
}
