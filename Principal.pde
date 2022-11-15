class Principal {
 Fondo Fondo;
 Avion Avion;
 Iniciopag Iniciopag;

 
 Principal(){
   Fondo=new Fondo();
 Avion = new Avion();
 Iniciopag = new Iniciopag();
  
 }
void display(){
  Fondo.ponerFondo();
  Avion.avionensi();
 
  
 /* FONDO1
 Iniciopag.Ponerpagina();
  Iniciopag.ContenidoInicio();
  */
}

void movimientoAvion(){
 Avion.moveravion(); 
}

void choque(){
  for(int i=0; i<pajaros.length; i++){
    float distan=dist(Avion.X,Avion.Y,pajaros[i].x,pajaros[i].y);
  if(distan<pajaros[i].tam/2+Avion.tam/2){
  background(0);
}
  }
}
}
