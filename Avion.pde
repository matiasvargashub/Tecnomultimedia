class Avion {
  PImage avion;
  float X, Y,tam,tam2;
  
  
  
Avion(){
   avion=loadImage("avion.png");
   
}
void avionensi(){
 image(avion,X,Y,tam,tam2);

 tam=80;
 tam2=80;
}
}
