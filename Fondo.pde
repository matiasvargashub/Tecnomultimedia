class Fondo {
  PImage fondo;
  float px,py;
  String objetivo;
  Fondo(){
   fondo=loadImage("fondoo.png");
   px=0;
   py=0;
   objetivo="LLEGA HASTA EL OTRO EXTREMO SIN CHOCAR";
  }


void ponerfondo(){
  imageMode(CORNER);
  image(fondo, px, 0);
  
 text(objetivo,180,590);
  
  fondo.resize(1200, 800);
  px -= 2;
  
  if(px == -400) px=0;
  
  }
}
