class PagPerder{
 PImage estrellado; 
 String ups,reiniciarr;
 PFont textinicio;
  PagPerder(){
 estrellado=loadImage("estrellado.png");
 ups="UPS, PARECE QUE EL AVION HA SUFRIDO UN DAÑO EN EL MOTOR";
 reiniciarr="REINICIAR";
  textinicio=loadFont("Arial-BoldMT-20.vlw");
}
void ultimapag(){
  image(estrellado,0,0);
  estrellado.resize(800,600);
   textFont(textinicio);
   fill(255,0,0);
  text(ups, 95,40);
  fill(0,0,0);
  rect(21,360,170,50); 
  fill(255,255,255);
 text(reiniciarr,60,389);
 
 if(mouseX>21 && mouseX<21+171&&mouseY>350 && mouseY<350+49){
 fill(255,255,255);
 rect(21,360,170,50); 
 
 fill(0,0,0);
 text(reiniciarr,60,389);
   
 }
}
  
}
