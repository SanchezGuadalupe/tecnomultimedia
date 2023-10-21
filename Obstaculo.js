class Obstaculo {
  constructor() {
    this.tam = 100;
    this.x = width + this.tam;
    this.y = height - this.tam + 20;
  }

  mover() {
    this.x -= 12;
  }

  dibujar(img) {
    fill(0);
    image(img, this.x, this.y, this.tam, this.tam);
  }

  reinicio() {
    this.x = width + this.tam;
  }
}
