class Personaje {
  constructor(){
    
    this.s = 0;
    this.tam = 70;
    this.x = width/2;
    this.y = height - this.tam; 
    this.VelY = 0;
    this.gravedad = 0.5;
  }
  
  saltar(){
    if (this.y == height - this.tam){
      this.VelY = - 12;
    }
  }
  
  mover(){
    this.y += this.VelY;
    this.VelY += this.gravedad;
    this.y = constrain(this.y , 0 , height - this.tam);
  }
  
  hits(Obstaculo){
    return (this.x + this.tam > Obstaculo.x && this.x < Obstaculo.x + Obstaculo.tam && this.y + this.tam > Obstaculo.y && this.y < Obstaculo.y + this.tam );
  }
  
  
  
  dibujar(img){
    image(img[this.s],this.x, this.y - 10, this.tam , this.tam + 10);
    //fill(200);
    //rect(this.x, this.y, this.tam , this.tam);
    if ( frameCount%10== 0 ) {  
      this.s++;
    }
    if ( this.s == 5 ) {
      this.s = 0;
    }
  }
  
  reinicio(){
    this.s = 0;
    this.x = width/2;
    this.y = height - this.tam; 
  }
}
