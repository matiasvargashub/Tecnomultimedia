class avion {
  PImage AVION;
  float X, Y,tam,tam2;
  
  
  
avion(){
   AVION=loadImage("avion.png");
   
}
void avionensi(){
 image(AVION,X,Y,tam,tam2);
// AVION.resize(80,80);
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
}
