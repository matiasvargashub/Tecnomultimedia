class pajaro{
 PImage Pajaro;
 float x, y, M,taman,taman2;
 float x2,y2,y3;;
 boolean perder;
 
 pajaro(){
  Pajaro=loadImage("pajaro-removebg-preview.png");
  x=750;
  y2=150;
  y3=400;
  x2=750;
  taman=50;
  taman2=50;
  perder= false;
 }
 void pajaroEnSi(){
  
  
  M = random(2, 3);
  image(Pajaro,x,y,taman,taman2); 
 // Pajaro.resize(50,50);
  
  image(Pajaro,x,y2,taman,taman2); 
 
  
  image(Pajaro,x,y3,taman,taman2); 
  
  
  
 }
 
 
void movimientopajaro(){
  if(x<=-10){
    x=750;
    y3=random(10,500);
    y=random(120, 200);
    y2=random(250, 500);;
  }
   
 x-=M;
 x2-=M;
   
 }
 
void Perder(){
 perder=true;
 if(perder=true){
  background(0); 
 }
  
  

 
}
}
