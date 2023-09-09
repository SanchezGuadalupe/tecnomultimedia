//Guadalupe Sánchez 93088/6
//tp4 introdución al p5.js comisión 3
//link del video: https://youtu.be/ZWrIsKViUOw

//Ganar---LISTO
//Perder----LISTO
//Pantalla de instruciones y creditos----LISTO
//Control para reiniciar el juego---LISTO
//Un sistema de puntos y/ocontrol del tiempo del conflicto----LISTO

let cx, cy, can, calt; // variables del cañón
let bx, by, btam; // variables de la pelota
let nx, ny, nancho, nalto; // variables de la nave individual
let disparada;
let pag= 0;
let estado;

let nnx = [];
let nny = [];
let dnx = [];
let cant = 5;
let derribadas = 0;
let seEscapan = 0;
let cargador = 0;
let cargadorLleno = true;
//let fondo=[];

function preload() {//cargar las imagenes
 //img = loadImage("data/fondo.jpg");
  //fondo[i]=loadImage("data/fondo"+i+".jpg");
}

function setup() {
  createCanvas(600, 400);
  can = 40;
  calt = 80;
  cx = width/2;
  cy = height-calt/2;
  bx = cx;
  by = cy;
  btam = can;
  disparada = false;
  nx = 0;
  ny = 50;
  nancho = 100;
  nalto = 40;
  for (let i=0; i<cant; i++) {
    nnx[i] = random(-300, -100);
    nny[i] = i*nalto;
    dnx[i] = random(0.18, 1.6);
  }
  textSize(30);
  estado="inicio";
}

function reset() {// reiniciar juego con los contadores otra vez en 0

 for (let i=0; i<cant; i++) {
   nnx[i] = random(-300, -100);
 }
  derribadas = 0;
  seEscapan = 0;
  cargador=0;
}

function draw() {
  background(200, 255, 210);
  //logica de estados para hacer las distintas pantallas
  if (estado == "inicio") {
     //image(fondo[0], 0, 0);
    push()
      fill(0);
    pop()
      text("Space Invaders: el objetivo del\njuego es derribar 5 naves\ne intentar que no se escapen mas\nde 3 naves sino pierdes.\nTenes un total de 20 tiros", 90, 100);
    ellipse(530, 350, 120, 60);//boton play
    text("play", 505, 355);
    ellipse(130, 350, 120, 60);//boton creditos
    text("créditos", 80, 355);
  } else
    if (estado == "perder") {
     // image(fondo[1], 0, 0);
      text("MAL AHÍ,PERDISTE", 150, 200);
    } else
      if (estado == "ganaste") {
        // image(fondo[2], 0, 0);
        text("BIEN AHÍ! GANASTE", 150, 200);
      } else
        if (estado=="credito") {
         //  image(fondo[3], 0, 0);
          text("CRÉDITOS:\n\n\nGuadalupe Sánchez 93088/6\n\ntp4 intodución al p5.js", 200, 100);
        } else
          if (estado == "juego") {


            arma(cx, cy, can, calt);
            //nave(nx, ny, nancho, nalto);

         
            if (nx>width) {
              nx = -nancho;
            }
            textSize(30);
            if (keyIsPressed===true) {
              if (keyCode=== RIGHT_ARROW && cx<width-can/2) {
                cx+=2;
              }
              if (keyCode=== LEFT_ARROW) {
                cx-=2;
              }
            }
            if (disparada && by>0) {
              by -= 10;
            } else {
              bx = cx;
              by = cy;
              disparada = false;
            }
            proyectil(bx, by, btam);
            if (impacto(bx, by, nx, ny, nancho, nalto)) {
              disparada = false;
              nx = -nancho;
            }
            // implementación del arreglo de naves

            for (let i=0; i<cant; i++) {
              nave(nnx[i], nny[i], nancho, nalto);
              nnx[i] += dnx[i];
              if (nnx[i]>width) {
                nnx[i] = random(-300, -100);
                seEscapan++;
              }
              if (impacto(bx, by, nnx[i], nny[i], nancho, nalto)) {
                disparada = false;
                nnx[i] = random(-300, -100);
                derribadas++;
              }
            }
            
            push()
              fill(255, 0, 0);
            text("derribadas"+derribadas, 50, 50);
            text("escapes" + seEscapan, 400, 50);
            text(cargador, width/2, 50);
            if (seEscapan > 2) {
              estado = "perder";
            } else
              if (derribadas > 4) {
                estado = "ganaste";
              }
          }
  pop()
}



function nave(x, y, ancho, alto) { //naves
  push()
    fill(200, 600, 100);
  rectMode(CORNER);
  rect(x, y, ancho, alto);
  pop()
}
function keyPressed() {//clickear enter para disparar pelotas
  if (cargador<20) {
    if (keyCode=== 32) {
      disparada = true;
      cargador++;
    }
  } else {
    cargadorLleno = false;
  }
}



function mousePressed() {//clickear mouse para cambiar de estado
  if (estado=="perder") {
    estado="inicio";
  } else
    if (estado=="ganaste") {
      estado="inicio";
    } else
      if (estado=="credito") {
        estado="inicio";
      } else
        if ((mouseX > 400)&&(mouseY > 320)) {
          estado="juego";
          reset();
        } else
          if ((mouseX < 280)&&(mouseY > 320)) {
            estado="credito";
          }
}
function proyectil(x, y, diam) { //pelota
  push()
    fill(300, 140, 120);
  circle(x, y, diam);
  pop()
}


function impacto(x, y, px, py, ancho, alto) {//imapacto 
  if (x>px&& x<px+ancho && y>py && y<py+alto) {
    return true;
  } else {
    return false;
  }
}
function arma(x, y, ancho, alto) { //cañon
  push()
    fill(300, 0, 170);
  rectMode(CENTER);
  rect(x, y, ancho, alto);
  pop()
}
