//linl del video: https://youtu.be/2WLtxmqqecw

Principal p;
void setup(){
  size(800,600);
  p= new Principal();
}


void draw(){
 p.display();
 p.choque();
 
 
  
}
void keyPressed(){
 p.movimientoAvion(); 
}
  
