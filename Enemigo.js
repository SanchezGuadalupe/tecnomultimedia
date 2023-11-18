class Enemigo{
  constructor(posX,posY,tamX,tamY){
    this.posX = posX;
    this.posY = posY;
    this.tamX = tamX;
    this.tamY = tamY;
    this.miColor = color(0,200,0);
    this.vel = random(0.5,1.6);
    this.chocado = true;
    this.tazas=loadImage("data/tazas.jpeg");
  }

  dibujar(){
    this.enemigo();
  }

  actualizar(){

  }

  enemigo(){
    push();
    imageMode(CENTER);
    rectMode(CENTER);
    fill(this.miColor);
    //rect(this.posX, this.posY,this.tamX,this.tamY);
    image(this.tazas,this.posX, this.posY,this.tamX,this.tamY);
    this.mover();
    pop();
  }
  mover(){
    this.posY += this.vel;
    if(this.posY >= 600){
      this.posY = 10;
    }
  }
}
