class Principal {
 Fondo fondo;
 Avion avion;
 Iniciopag iniciopag;
 PagPerder pagperder;
 PagGanar pagganar;
 


 
Pajaro[] pajaros=new Pajaro[4];
 boolean perder;
 boolean correrjuego;
  
 
 Principal(){
   for(int i = 0; i < pajaros.length; i++){
    pajaros[i] = new Pajaro(random(800,1000), i*height/pajaros.length, 30,30); 
   }
   
   fondo=new Fondo();
 avion = new Avion();
 iniciopag = new Iniciopag();
 pagperder = new PagPerder();
    perder= false;
 correrjuego=false;
pagganar= new PagGanar();
// minim=new Minim(this);
  // player=minim.loadFile("001105163_prev.mp3");
 
 
 }
 
void display(){
  
  paginauno();
    if( mousePressed && mouseX>21 && mouseX<21+171&&mouseY>350 && mouseY<350+49){

  iniciopag.mostrar=false;
  correrjuego=true;}
  juegooo();
  choque();
  
    
  
  ganarr();
  
    
  }
       


void movimientoAvion(){
  if( correrjuego==true){
 avion.moveravion(); 
  }
}

void Perder(){
 perder=true;
 if(perder==true){
 
  background(0);
  pagperder.ultimapag();
 }
}


void choque(){
  for(int i=0; i<pajaros.length; i++){
    float distan=dist(avion.X,avion.Y,pajaros[i].x,pajaros[i].y);
  if(distan<pajaros[i].tam/2+avion.tam/2){
  Perder();
  correrjuego=false;
  Reiniciarjuego();
 
  player.play();
}
  }
}

void juegooo(){
 
 if(correrjuego==true){
  fondo.ponerfondo();
  avion.avionensi();
 
 for(int i=0;i<pajaros.length; i++){
     pajaros[i].dibujarpajaro();
     pajaros[i].volar();}  
 }
}
void Reiniciarjuego(){
  if( mousePressed && mouseX>21 && mouseX<21+171&&mouseY>350 && mouseY<350+49){  
    correrjuego=true;  
    avion.reinicioavion();
    pagganar.paginaultima=false;
  
}
}
void paginauno(){
   iniciopag.ponerpagina();
  iniciopag.contenidoinicio();
}
void ganarr(){
  //Avion.ganar();
  if(avion.X>=800){
  pagganar.pantallafinal();
  Reiniciarjuego();
  noTint();
  playy.play();
  }
}
}
