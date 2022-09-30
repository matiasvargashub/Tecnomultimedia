class Principal {
 Fondo fondo;
 avion Avion;
 pajaro PAJARO;
 
 Principal(){
   fondo=new Fondo();
 Avion = new avion();
  PAJARO = new pajaro();
}
void display(){
  fondo.ponerFondo();
  Avion.avionensi();
  PAJARO.pajaroEnSi();
  PAJARO.movimientopajaro();
  
}
void movimientoAvion(){
 Avion.moveravion(); 
}

void choque(){
 float distan= dist(Avion.X, Avion.Y, PAJARO.x, PAJARO.y);
 if(distan<PAJARO.taman/2+Avion.tam/2){
   PAJARO.Perder();
   
 }
  float dis= dist(Avion.X, Avion.Y, PAJARO.x, PAJARO.y2);
 if(dis<PAJARO.taman/2+Avion.tam/2){
   PAJARO.Perder();
    background(0); 
 }
  float distanc= dist(Avion.X, Avion.Y, PAJARO.x, PAJARO.y3);
 if(distanc<PAJARO.taman/2+Avion.tam/2){
   PAJARO.Perder();
    background(0); 
 }
 
}
}
