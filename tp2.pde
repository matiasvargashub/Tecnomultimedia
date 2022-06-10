/*matias vargas.
No tengo camara para el video y no pude conseguir a tiempo, para el proximo me compro una.
Con el clik se activan las lineas con un color y con una tecla se vuelve al original.
*/


int cant;
int cant2,cant3,opaco;
int velx;

void setup(){
 size(800,600); 
 
 cant=455;
 cant2=100;
// azul= map(cant,0,9,0,200);
 opaco=0;
 velx=2;
 cant3=150;
 }

void draw(){  
  for(int i=20;i<cant;cant-=5){
rectMode(CENTER);
float azul= map(cant,0,250,0,255);
fill(0,0,azul);
 rect(400,300,cant,cant);
  }
  //primer
  triangle(0,0,500,0,0,400);
  //segundo arriba
  triangle(300,0,800,0,800,400);

  triangle(0,77,0,600,479,600);
  
  triangle(800,77,800,600,320,600);
  
  recta();
 
 if(mousePressed){
   pushStyle();
   float randomm = random(100,200);
stroke(randomm,212,0);
strokeWeight(5);
line(399,514,172,261);
line(172,261,399,79);
line(399,79,629,263);
line(629,263,399,80);
 }
if (keyPressed){
  
 cant2=100;
 opaco=0;
 velx=2;
 cant3=150;
 rectMode(CENTER);

float azul= map(cant,0,250,0,255);
stroke(0,0,azul);
strokeWeight(10);
}
   
}


void recta(){
  for(int r=width;r>430;r-=10){
    stroke(0,0,255);
    strokeWeight(1);
    noFill();
    rect(width/2,height/2,r,r);
  }
}
