import ddf.minim.*;

Minim minim;
AudioPlayer player;

PImage primera,segunda,tercera,cuarta,willem,duende,verde;
PImage telarana,kirsten,hombrearana,peter,fondo,mary,jane;
String spider,man,reiniciar;
int ejeX, ejeY,ubi,ubi2,aparicion,aparicion1;
int velX,velX2,velX4,velX8;
int movx,movy,movimiento1,movimiento2,movimiento3,movimiento4;
PFont font,fuente1;
color Azul;
int tamX,tamY;
color Negro;
PFont fuente;
String starring,tobey,maguire;
//foto spider
int tamx,tamy,ejex,ejey,transparencia,transparente,transparente2,transparente1;
int x,y,transp,tamanox,tamanoy,transp1,transp2;
String will, dafoe, kirstenn, dunst;
int X,Y,A,B,C,D,E,F,G;
//imagen final
int EJEX,EJEY,TAMA,TAMA1,APARICION,ESCONDER;
int EJEX1,EJEY1,TAMA11,TAMA111,APARICION1,APARICION2,ESCONDER1;
String directed,sam;
PFont finall;
int a,b,c,d,f,l,m,n;


void setup(){
  size(800,800);
  minim = new Minim (this);
  player = minim.loadFile("spiderman-tobey-maguire.mp3");
  player.loop();
  
  
  
  //titulo
  spider="SPIDER";
  man=" - MAN";
  ubi=320;
  ubi2=400;
  aparicion=30;
  aparicion1=0;
    
    
    
  movimiento1=3;
  movimiento2=400;
  movimiento3=323;
  movimiento4=400;
  
  
  
  
  
  primera = loadImage("primera.jpg"); 
  primera.resize(800,800);
  velX=1;
  velX2=2;
  velX4=3;
ejeX = 0;
ejeY = 400;
  font=loadFont("GillSans-UltraBoldCondensed-90.vlw");
  textFont(font);
  Azul=color(2,48,95,150);
  tamX=10;
  tamY=10;
  segunda=loadImage("segunda.png");
 segunda.resize(800,800);
 Negro=color(12,14,15);
 fuente=loadFont("GillSans-UltraBoldCondensed-38.vlw");
 starring="S  T  A  R  R  I  N  G";
 tobey="T  O  B  E  Y";
 maguire="M  A  G  U  I  R  E";
 tercera=loadImage("hqdefault-Recuperado.png");
 //tercera.resize(800,800);
 tamx=800;
 tamy=800;
 ejex=0;
 ejey=0;
 cuarta=loadImage("fondo-telarana-halloween-aranas_23-2148279861.png");
 cuarta.resize(800,800);
 movx=-800;
 movy=-800;
 transparencia=120;
 willem=loadImage("willem.png");
 willem.resize(80,80);

 
 x=200;
 y=520;
 transp=0;
 tamanox=80;
 tamanoy=80;
  will="W  I  L  L  E  M";
  dafoe="D  A  F  O  E";
  transparente=255;
  duende=loadImage("duendeee.png");
  verde=loadImage("verde.png");
  duende.resize(400,400);
  verde.resize(400,400);
  //imagen duende verde
  X=400;
  Y=400;
  A=0;
  B=0;
  C=0;
  //TAMANO
  D=400;
  E=400;
  F=400;
  G=400;
  
  telarana=loadImage("telaraña.png");
  telarana.resize(800,800);
  transparente2=0;
  kirsten=loadImage("kirsten.png");
  kirsten.resize(400,400);
  transparente1=150;
  
  kirstenn="K  I  R  S  T  E  N";
  dunst="D  U  N  S  T";
  hombrearana=loadImage("hombre arana.png");
 // hombrearana.resize(700,700);
  
  EJEX=0;
  EJEY=0;
  TAMA=400;
  TAMA1=700;
  APARICION=0;
  ESCONDER=23;
  
  peter=loadImage("peter.png");
  
  EJEX1=400;
  EJEY=0;
  TAMA11=400;
  TAMA111=700;
  APARICION1=30;
  ESCONDER1=255;
  
  
  directed="D I R E C T E D  B Y";
  sam="S A M   R A I M I";          
  finall=loadFont("Calibri-LightItalic-30.vlw");
  a=0;
  c=30;
  f=800;
  fondo=loadImage("fondo.png");
  fondo.resize(800,800);
  b=0;
  d=0;
  
  velX8=15;
  
  mary=loadImage("mary.png");
  jane=loadImage("jane.png");
  jane.resize(300,500);
  
  transp1=0;
  transp2=255;
  
  l=768;
  m=0;
  n=800;
  fuente1=loadFont("Stencil-15.vlw");
  reiniciar="R E I N I C I A R";
}

void draw(){
  textFont(font);
  
  //borrar
 println(mouseX,mouseY);

//println(frameCount);

float  r=random(200,255);
float  g=random(200,255);
float  b=random(190,255);
 
  tint(255,0,0);
  image(primera,0,0);
  fill(147,145,145,170);

 fill(r,g,b,aparicion);
text(spider, ejeX,ejeY);
ejeX = ejeX + velX;
aparicion=aparicion+velX;

fill(r,g,b,aparicion1);
text(man,ubi,ubi2);
ubi=ubi+velX;
aparicion1=aparicion1+velX;

text(spider,movimiento1,movimiento2);
movimiento1=movimiento1+velX;

text(man,movimiento3,movimiento4);
movimiento3=movimiento3+velX;





//cambiar primera imagen
if(ejeX>=135){

tint(Negro);  
image(segunda,0,0);
}
//texto de la segunda imagen
if(frameCount>=150){
  textFont(fuente);
  fill(255,0,0,transparente);
  text(starring,113,153);  
  fill(225,225,225,transparente);
  text(starring,110,153);
transparente=transparente-velX2;
}
 if(frameCount>=156){
  textFont(fuente);
  fill(255,0,0,transparente);
 text(tobey,289,243);
  fill(225,225,225,transparente);
  text(tobey,286,243);
  
 }
  if(frameCount>=162){
  textFont(fuente);
  fill(255,0,0,transparente);
   text(maguire,459,330); 
  fill(225,225,225,transparente);
  text(maguire,456,330);
  }
  
  if(frameCount>=190){
    tint(211,49,49,transparente1);
    image(tercera,ejex,ejey,tamx,tamy);
    ejex=ejex+velX4;
    ejey=ejey-velX2;
    tamx=tamx+velX4;
    tamy=tamy+velX2; 
    transparente1=transparente1-velX;
  }
    
  if(frameCount>=235){
    tint(211,49,49,transp);
    image(willem,x,y,tamanox,tamanoy);
   x=x+velX4;
    y=y-velX2;
    tamanox=tamanox+velX2;
    tamanoy=tamanoy+velX2;
    
    transp=transp+velX;
             
    
  }
  if(frameCount>=190){
    tint(30,30,30);
    image(cuarta,movx,0);
    movx=movx+velX4;
  }
  
 if (frameCount>=270){
   textFont(fuente);
  fill(255,0,0);
  text(will,25,120);  
  fill(225,225,225);
  text(will,22,120);
 }
  
 if(frameCount>=290){
  textFont(fuente);
  fill(255,0,0);
 text(dafoe,117,179);
  fill(225,225,225);
  text(dafoe,115,179);  
  }

if(frameCount>=430){
tint(0,200,0,C);
image(duende,X,Y,D,E);
image(verde,A,B,F,G);
E=E-velX4;
B=B+velX4;
G=G-velX4;
C=C+velX;
}

if(frameCount>=480){
  tint(20,20,20,transparente2);
  image(telarana,0,0);
  transparente2=transparente2+velX2;  
  

}
 
 if(frameCount>=550){
  
  fill(255,0,0);
 quad(a,0,c,0,c,800,a,800);
 a=a+velX8;
 c=c+velX8;
 
 
}

if(frameCount>=599){
  fill(255,0,0,40);
  quad(149,800,629,0,800,0,349,793);
  
  fill(0,0,255,40);
  rect(0,400,800,600);
  
 
   tint(230,250,250,60);
  image(kirsten,0,0);
  
  fill(255,0,0);
  text(kirstenn,418,230);
  fill(255,255,255);
  text(kirstenn,415,230);
  fill(255,0,0);
  text(dunst,547,300);
  fill(255,255,255);
  text(dunst,544,300);
  tint(200,200,200,60);

  image(mary,0,400);
  tint(200,200,200,transp2);
  transp2=transp2-velX4;
  image(jane,500,400);
}





if(frameCount>=710){
  fill(0,0,255,180);
  quad(l,m,n,m,n,800,l,800);
  l=l-velX8;
  
  n=n-velX8;
  
}
  if(frameCount>=765){
  background(0);
  tint(252,92,92,APARICION);
  APARICION=APARICION+velX;
  image(hombrearana,EJEX,EJEY,TAMA,TAMA1);
  
  EJEY=EJEY-velX4;
  EJEY=EJEY+velX4;
  TAMA=TAMA+velX4;
  TAMA1=TAMA1+velX;
  TAMA1=TAMA1-velX;
  
  fill(255,0,0);
  stroke(0);
  quad(400,800,800,460,800,800,400,800);
  textFont(finall);
  fill(255,255,255);
  text(directed,562,706);
  text(sam,580,750);
  fill(255,0,0);
  quad(0,700,520,700,400,800,0,800);
  
  fill(255,0,0);
 quad(a,0,c,0,c,800,a,800);
 a=a+velX8;
 c=c+velX8;
 f=f+velX8; 
  

  tint(255,230,180,ESCONDER);
  image(peter,EJEX1,EJEY1,TAMA11,TAMA111);
  ESCONDER=ESCONDER-velX;
  
  
  }
  
 if(frameCount>=900){
   fill(0,0,0,ESCONDER1);
   ESCONDER1=ESCONDER1-velX;
   image(fondo,0,0);
}
fill(255,255,255);
 textFont(fuente1);
 text(reiniciar,40,760);
 fill(0,0,255,100);
 rect(23,720,150,70);
 
 if(mouseX>23 && mouseX<23+150&&mouseY>720 && mouseY<720+70){
   fill(0,108,255);
   rect(23,720,150,70);
   fill(255,255,255);
 textFont(fuente1);
 text(reiniciar,40,760);

 }
 if(frameCount>=900){
   background(0);
   fill(0,108,255);
   rect(23,720,150,70);
   fill(255,255,255);
 textFont(fuente1);
 text(reiniciar,40,760);
   
 }
}

void mouseClicked(){
  
  if(mouseX>23 && mouseX<23+150&&mouseY>720 && mouseY<720+70){
  frameCount = 0;
  player.rewind();
  //titulo
  spider="SPIDER";
  man=" - MAN";
  ubi=320;
  ubi2=400;
  aparicion=30;
  aparicion1=0;
    
    
    
  movimiento1=3;
  movimiento2=400;
  movimiento3=323;
  movimiento4=400;
  
  
  
  
  
  primera = loadImage("primera.jpg"); 
  primera.resize(800,800);
  velX=1;
  velX2=2;
  velX4=3;
ejeX = 0;
ejeY = 400;
  font=loadFont("GillSans-UltraBoldCondensed-90.vlw");
  textFont(font);
  Azul=color(2,48,95,150);
  tamX=10;
  tamY=10;
  segunda=loadImage("segunda.png");
 segunda.resize(800,800);
 Negro=color(12,14,15);
 fuente=loadFont("GillSans-UltraBoldCondensed-38.vlw");
 starring="S  T  A  R  R  I  N  G";
 tobey="T  O  B  E  Y";
 maguire="M  A  G  U  I  R  E";
 tercera=loadImage("hqdefault-Recuperado.png");
 //tercera.resize(800,800);
 tamx=800;
 tamy=800;
 ejex=0;
 ejey=0;
 cuarta=loadImage("fondo-telarana-halloween-aranas_23-2148279861.png");
 cuarta.resize(800,800);
 movx=-800;
 movy=-800;
 transparencia=120;
 willem=loadImage("willem.png");
 willem.resize(80,80);

 
 x=200;
 y=520;
 transp=0;
 tamanox=80;
 tamanoy=80;
  will="W  I  L  L  E  M";
  dafoe="D  A  F  O  E";
  transparente=255;
  duende=loadImage("duendeee.png");
  verde=loadImage("verde.png");
  duende.resize(400,400);
  verde.resize(400,400);
  //imagen duende verde
  X=400;
  Y=400;
  A=0;
  B=0;
  C=0;
  //TAMANO
  D=400;
  E=400;
  F=400;
  G=400;
  
  telarana=loadImage("telaraña.png");
  telarana.resize(800,800);
  transparente2=0;
  kirsten=loadImage("kirsten.png");
  kirsten.resize(400,400);
  transparente1=150;
  
  kirstenn="K  I  R  S  T  E  N";
  dunst="D  U  N  S  T";
  hombrearana=loadImage("hombre arana.png");
 // hombrearana.resize(700,700);
  
  EJEX=0;
  EJEY=0;
  TAMA=400;
  TAMA1=700;
  APARICION=0;
  ESCONDER=23;
  
  peter=loadImage("peter.png");
  
  EJEX1=400;
  EJEY=0;
  TAMA11=400;
  TAMA111=700;
  APARICION1=30;
  ESCONDER1=255;
  
  
  directed="D I R E C T E D  B Y";
  sam="S A M   R A I M I";          
  finall=loadFont("Calibri-LightItalic-30.vlw");
  a=0;
  c=30;
  f=800;
  fondo=loadImage("fondo.png");
  fondo.resize(800,800);
  b=0;
  d=0;
  
  velX8=15;
  
  mary=loadImage("mary.png");
  jane=loadImage("jane.png");
  jane.resize(300,500);
  
  transp1=0;
  transp2=255;
  
  l=768;
  m=0;
  n=800;
  }
}
