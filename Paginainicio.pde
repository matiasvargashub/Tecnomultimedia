class Iniciopag{
  PImage inicio;
  String a,b,c;
  PFont textinicio;
Iniciopag(){
 inicio=loadImage("R.png");
 
  
}
void Ponerpagina(){
  image(inicio, 0, 0);
 inicio.resize(800,600);
}

void ContenidoInicio(){
  
textinicio=loadFont("Arial-BoldMT-20.vlw");
 fill(0,0,0);
 rect(21,350,170,50); 
 rect(21,430,170,50);
 rect(21,510,170,50);
 
 textFont(textinicio);
 a=" INICIO ";
 b=" INSTRUCCIONES ";
 c=" EXTRAS ";
 
 fill(255,255,255);
 text(a,23,389);
 text(b,23,465);
 text(c,23,545);
 
 if(mouseX>21 && mouseX<21+171&&mouseY>350 && mouseY<350+49){
 fill(255,255,255);
 rect(21,350,170,50); 
 
 fill(0,0,0);
 text(a,23,389);
   
 }
  
}
  
  
}
