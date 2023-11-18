class Personaje{
  constructor(posX,posY,tamX,tamY){
    this.posX = posX;
    this.posY = posY;
    this.tamX = tamX;
    this.tamY = tamY;
    this.movimiento = 10;
    this.miColor = color(0,0,200);
    this.alicia=loadImage("data/alicia.jpeg");
  }

  dibujar(){
    push();
    rectMode(CENTER);
    imageMode(CENTER);
    fill(this.miColor);
    //rect(this.posX,this.posY,this.tamX,this.tamY);
    image(this.alicia,this.posX,this.posY,this.tamX,this.tamY);
    pop();
  }

  actualizar(){

  }

  movimientoConTecla(keyCode){

    switch(keyCode){

      case LEFT_ARROW:
        this.posX -= this.movimiento;
        break;

      case RIGHT_ARROW:
        this.posX += this.movimiento;
        break;
    }
  }
  colDer(){
    this.posX -= this.movimiento
  }
  colIzq(){
    this.posX += this.movimiento;
  }
}
