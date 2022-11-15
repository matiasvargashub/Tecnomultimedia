Pajaro[] pajaros=new Pajaro[3];

Principal p;
void setup(){
  size(800,600);
   p= new Principal();
   for(int i = 0; i < pajaros.length; i++){
    pajaros[i] = new Pajaro(600, i*height/pajaros.length, 60,60); 
     
   }
   
}

void draw(){
   p.display();
   println(mouseX,mouseY);
   for(int i=0;i<pajaros.length; i++){
     pajaros[i].dibujarpajaro();
     pajaros[i].volar();
    p.choque();
}
}

void keyPressed(){
  p.movimientoAvion();
  
}


  
