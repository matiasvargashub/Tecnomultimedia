class Avion {
  PImage avion;
  float X, Y, tam, tam2;

  Avion() {
    avion=loadImage("avion.png");
  }

  void avionensi() {
    image(avion, X, Y, tam, tam2);
    tam=70;
    tam2=60;
  }

  void reinicioavion() {
    X=0;
    Y=0;
  }
  void borde() {
    if (Y < -30) {
      Y=0;
    }
    if (Y > 550) {
      Y=530;
    }
  }
}
