class Fondo {
  PImage fondo;
  float px, py;
  String objetivo;
  PFont abajo;
  Fondo() {
    fondo=loadImage("fondoo.png");
    px=0;
    py=0;
    objetivo="LLEGA HASTA EL OTRO EXTREMO SIN CHOCAR";
  }

  void ponerfondo() {
    abajo=loadFont("Arial-BoldMT-20.vlw");
    imageMode(CORNER);
    image(fondo, px, 0);
    textFont(abajo);
    fill(255, 255, 255);
    text(objetivo, 180, 590);
    fondo.resize(1200, 800);
    px -= 2;
    if (px == -400) px=0;
  }
}
