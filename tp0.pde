//Guadalupe Sanchez
//Comision 3
//Tp0 Retrato 

PImage img;

void setup(){
  size(800,400);
  background(255); 
  img= loadImage ("retrato.jpg");
 }
 
 
void draw()
{
image(img,0,0,400,400);
  fill(#FFE4C9);//color cabeza
  circle(600,220,220);//cabeza
   fill(#DBD7D2);//color patillas
  rect(500,180,200,5,100);//patillas gafas
  fill(0);//color vidrio gafas
  rect(540,170,50,40,10);//vidrio gafa derecha
  rect(620,170,50,40,10);//vidrio gafa izquierda
 fill(#FFF1D6);//color labio de arriba
 rect(555,235,90,30);//labio de arriba
 fill(#FFFFFF);//color dientes
 rect(555,240,90,25);//dientes
 fill(0);//color garganta
 rect(555,250,90,10);//garganta
 fill(#FFF1D6);//color labio abajo
rect(555,260,90,5);//labio de abajo

}
