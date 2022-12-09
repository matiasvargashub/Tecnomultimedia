/*
Alumno: Matias Vargas
 Profesor: José Luis Bugiolachi
 Comision 1
 Link del video: https://www.youtube.com/watch?v=9tGJrFWmq7k
 perdon por la calidad y audio del video, lo grabe 3 veces pero mi internet esta andando mal y el celu tampoco ayuda.
 */
import ddf.minim.*;
Minim minim;
AudioPlayer player;
AudioPlayer playy;
Principal p;
void setup() {
  size(800, 600);
  p= new Principal();
  minim=new Minim(this);
  player=minim.loadFile("001105163_prev.mp3");
  playy=minim.loadFile("ganar-ganador-.mp3");
}

void draw() {
  p.losestados();
  p.keyPressed();
}
