//Guadalupe Sánchez 93088/6
//TPN5 MiniJuego con POO orientado a la Aventura Gráfica
//Cuento Alicia en el Pais de las Maravillas
//Juego: runner
// link del video:

let todo;
let AliciaFotos = [];
let profe = [];
let pro = 0;
let arbusto;

function setup() {
  createCanvas(800, 400);
  textSize(24);
  todo = new Juego();
}

function preload() {
  for (let i = 0; i < 8; i++) {
    AliciaFotos[i] = loadImage("data/caminata" + i + ".jpg");
  }

  for (let i = 0; i < 4; i++) {
    profe[i] = loadImage("data/profe" + i + ".jpg");
  }

  arbusto = loadImage("data/arbusto.jpg");
  fondo = loadImage("data/fondo.jpg");
}
function draw() {
  todo.dibujar(profe, AliciaFotos, arbusto, fondo);
}

function keyPressed() {
  todo.saltar();
}

function mousePressed() {
  todo.comienzo();
  todo.reinicio();
}
