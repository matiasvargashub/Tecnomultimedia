class PagGanar{
  PImage finall;
  float y,y2,y3;
  PFont creditos, normal;
  String titulo, alumno, comision, profe,reiniciarr,victoria;
  boolean paginaultima;
   PagGanar(){
     finall=loadImage("523e91c2f4f65156bc3c8d2e326ac03f.png");
     y=150;
     y2=250;
     y3=350;
     creditos=loadFont("SnapITC-Regular-23.vlw");
     normal=loadFont("Arial-BoldMT-20.vlw");
     titulo=("El avion no sufrio ninguna avería en el motor");
     alumno=("Hecho por Matias Vargas");
     comision=("Comision 1");
     profe=(" Profesor José Luis Bugiolachi ");
     reiniciarr=("REINICIAR");
     victoria=("VICTORIA");
     paginaultima=true;
 }
   
   void pantallafinal(){
     tint(50,50,50);
    image(finall,0,0);
    fill(255,0,0);
    textFont(creditos);
    text(victoria,10,50);
    
    finall.resize(800,600);
   
    text(titulo,100,100);
    fill(255,255,255);
    text(alumno,250,y);
    text(comision,250,y2);
    text(profe,250,y3);
    y++;
    y2++;
    y3++;
    
    
  textFont(normal);
   
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
