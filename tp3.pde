PImage portada,portada1,instrucciones,fondo1,caminar1;
//borrar abajo

int caminar=3;
PImage[] personajes = new PImage [3];
//boolean limite=(
PFont titulo,presionar;
String spider, man,presione,tecla;
//mover personaje se puede cambiar.
String w,a,d;
int ejex,velx,velxx,ejey;
int c=0;
int cc=0;
int rr=0;
PImage[] saltar = new PImage [4];
PImage electro;  
int xx,yy,yy2,yy3,yy4,yy5,yy6,x1,x2,x3,x4;

boolean gameover=false; 

boolean ganarr=false;


void setup(){
  size(800,600);
  
  
 //portada
  portada=loadImage("portada.png");
  portada.resize(800,600);
  titulo=loadFont("GillSans-UltraBold-70.vlw");
  portada1=loadImage("portada1.png");
  portada1.resize(800,600);
  
  spider="SPIDER";
  man="- MAN";
  presione="presione la";
  tecla="tecla P para continuar";
  
  presionar=loadFont("HighTowerText-Italic-37.vlw");
  
  //segunda pantalla
  instrucciones=loadImage("instrucciones.png");
  instrucciones.resize(800,600);
  
  w="W                         Saltar";
  a="A                         Mover izquierda";
  d="D                         Mover derecha";
  
  fondo1=loadImage("fondo1.png");
  fondo1.resize(800,600);
  
  caminar1=loadImage("inicio.png");
  caminar1.resize(80,80);
  
  personajes[0]=loadImage("caminar_0.png");
  personajes[1]=loadImage("caminar_1.png");
  personajes[2]=loadImage("caminar_2.png");
   
  
 
  //personaje movimiento
  ejex=21;
  velx=1;
  velxx=2;
  ejey=400;
  for(int i = 0; i< personajes.length; i++){
     personajes[i] = loadImage("caminar_" + i + ".png");
    
    
}
saltar[0]=loadImage("saltar_0.png");
saltar[1]=loadImage("saltar_1.png");
saltar[2]=loadImage("saltar_2.png");
saltar[3]=loadImage("saltar_3.png");

for(int i = 0; i< saltar.length; i++){
     saltar[i] = loadImage("saltar_" + i + ".png");
}
electro=loadImage("electro.png");
electro.resize(80,80);
//Portada();
  
xx=90;
yy=0;
yy2=0;
yy3=0;
yy4=0;
yy5=0;
yy6=0;
x1=280;
x2=170;
x3=0;
x4=400;


}





void draw(){
 // println(frameCount);
 println(ejex,ejey);
juego();
if(gameover==true){ 
  background(0);
  fill(155);
  textSize(20);
  text("Spiderman logro escapar de electro con vida", 100,height/2);
  
} else{

   image(electro,xx,yy);
   yy=yy+velx;
   
   
   
  electro();
perder();

if(ganarr==true){
  background(0);
  fill(255,0,0);
   textSize(20);
  text("Presiona M para reintentar", 100,height/2);
}

ganar();
  

}
 
}

void keyPressed(){
  

                  if(key == 'd')
  ejex=ejex+velxx;
  c++;
  if( c == personajes.length )
    c = 0;
    
    else if (key == 'a')
    ejex=ejex-velx;
  
  if( c == personajes.length )
    c = 0;
    
  

}

void mousePressed(){
  if (key == 'm')
 ejex=21;
 velx=1;
 velxx=2;
 ejey=400;
 xx=90;
 juego();
yy=0;
yy2=0;
yy3=0;
yy4=0;
yy5=0;
yy6=0;
x1=280;
x2=170;
x3=0;
x4=400;

}
    
  
  
  void keyReleased(){
    if(key == 'd')
  ejex=ejex-velxx;
  c=0;
  if( c == personajes.length )
    c = 0;
    
    
  }
 


  
  
 

void Portada(){
   noTint();
 image(portada,0,0);
 tint(167,7,9,230);
 image(portada1,0,0);
 textFont(titulo);
 fill(255,0,0);
 text(spider,75,140);
 text(man,410,140);
 fill(255,188,0);
 text(spider,70,140);
 text(man,400,140);
 float EJEX= random(23,25);
 float EJEXX=random(23,25);
 fill(255,255,255);
 textFont(presionar);
 text(presione,EJEX,385);
 text(tecla,EJEXX,422);
 
 

 
}

void instruccioness(){
   
  tint(7,81,234,10);
  image(instrucciones,0,0);
  textFont(presionar);
  
  fill(255,188,0);
  text(w,220,122);
  text(a,220,200);
  text(d,220,278);
}

void juego(){
   image(fondo1,0,0);
  image( personajes[c],ejex,ejey );
}

void electro(){
  if(ejex>=180 && ejey>=400) {
   image(electro,x1,yy2);
   yy2=yy2+velx;
   image(electro,x3,x4);
  x3=x3+velx;
  }
   if(ejex>=336 && ejey>=400) {
   
   
   
    if(ejex>=336 && ejey>=400) 
   image(electro,x4,yy4);
   yy4=yy4+velx;
   }      
  
}
//(ejex && ejey == xx&&yy2)
void perder(){
 if(ejex >= 800 && ejey == 400)
   gameover=true;
 
}

void ganar(){
  if(ejex == x3 && ejey==x4)
  ganarr=true;
}
