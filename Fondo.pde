class Fondo {
  PImage fondo;
  
  Fondo(){
   fondo=loadImage("fondoo.png");
   
  }


void ponerFondo(){
  
  image(fondo, 0, 0);
  fondo.resize(800,600);
}
}
