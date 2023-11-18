//Guadalupe Sanchez 93088/6
//TP5 recuperatorio 
//link video explicativo: https://youtu.be/4O87ggVKdCA

let objJuego;

function setup() {
  createCanvas(450,500); 
  objJuego = new Juego();
}


function draw() {
  background(200);
  objJuego.dibujar();
  objJuego.actualizar(); 
}

function keyPressed(){
  objJuego.movimientoConTecla(keyCode);
}

function mouseClicked(){
  objJuego.mouseClicked();
}
