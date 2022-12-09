class PagPerder {
  PImage estrellado; 
  String ups, reiniciarr;
  PFont textinicio, textt;

  PagPerder() {
    estrellado=loadImage("estrellado.png");
    ups="UPS, PARECE QUE EL AVION HA SUFRIDO UN DAÑO EN EL MOTOR";
    reiniciarr="Apretar la tecla T para reiniciar";
    textinicio=loadFont("Arial-BoldMT-20.vlw");
    textt=loadFont("Arial-BoldMT-33.vlw");
  }
  void ultimapag() {
    image(estrellado, 0, 0);
    estrellado.resize(800, 600);
    textFont(textinicio);
    fill(255, 0, 0);
    text(ups, 95, 40);
    fill(0, 0, 0);
    //textFont(textt);
    //fill(254,255,8);
    text(reiniciarr, 50, 500);
  }
}
