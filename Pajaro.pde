class Pajaro{
 float x,y;
 float tam, tam2;
 float velx;
 PImage pajaroo;
  Pajaro(float x2, float y2, float tamano, float tamano2){
   x=x2;
   y=y2;
   tam=tamano;
   tam2=tamano2;
   
    
  }
  
void dibujarpajaro(){
 pajaroo=loadImage("pajaro-removebg-preview.png");
 image(pajaroo,x,y,60,60);
  
}

void volar(){
 velx=random(2,3);
 x -= velx;
 if( x < -10 ){
  x= 600; 
 }
}
  
}
