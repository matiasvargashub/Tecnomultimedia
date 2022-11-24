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
void moveravion(){
  if (key=='w' || key =='W' ) {
      Y--;
      Y--;
  }
   if (key=='s' ||  key=='S') {
      Y++;
      Y++;
    
}

if (key=='d' || key=='D') {
      X++;
      X++;
}
if (key=='a' || key=='A') {
      X--;
      X--;
}
}
void reinicioavion(){
 X=0;
 Y=0;
}
void ganar(){
  if(X>=800){
  
  
  }
  
}

}
