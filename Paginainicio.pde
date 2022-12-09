
class Iniciopag {
  PImage inicio;
  String a, w, s, d, p, instrucciones;
  PFont textinicio, textins;
  Iniciopag() {
    inicio=loadImage("R.png");
    a="A   Mover izquierda";
    w="W   Mover arriba";
    d="D   Mover derecha";
    s="S   Mover abajo";
    p=" PRESIONA ENTER PARA INICIAR";
    instrucciones="INSTRUCCIONES";
    textinicio=loadFont("Arial-BoldMT-33.vlw");
    textins=loadFont("Arial-BoldMT-20.vlw");
  }
  
  void ponerpagina() {
    image(inicio, 0, 0);
    inicio.resize(800, 600);
  }
  
  void contenidoinicio() {
    textFont(textinicio);
    fill(254, 255, 8);
    text(p, 130, 450);
    textFont(textins);
    text(instrucciones, 50, 70);
    fill(0);
    text(w, 50, 100);
    text(s, 50, 130);
    text(a, 50, 160);
    text(d, 50, 190);
  }
}
