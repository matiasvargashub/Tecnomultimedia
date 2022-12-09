class PagGanar {
  PImage finall;
  float y, y2, y3;
  PFont creditos, normal;
  String titulo, alumno, comision, profe, reiniciarr, victoria;

  PagGanar() {
    finall=loadImage("523e91c2f4f65156bc3c8d2e326ac03f.png");
    y=150;
    y2=250;
    y3=350;
    creditos=loadFont("SnapITC-Regular-23.vlw");
    normal=loadFont("Arial-BoldMT-20.vlw");
    titulo=("El avion no sufrio ninguna avería en el motor");
    alumno=("Hecho por Matias Vargas");
    comision=("Comision 1");
    profe=(" Profesor José Luis Bugiolachi ");
    reiniciarr=("Apretar la tecla T para reiniciar");
    victoria=("VICTORIA");
  }

  void pantallafinal() {
    tint(50, 50, 50);
    image(finall, 0, 0);
    fill(255, 0, 0);
    textFont(creditos);
    text(victoria, 10, 50);

    finall.resize(800, 600);

    text(titulo, 100, 100);
    fill(254, 255, 8);
    text(alumno, 350, y);
    text(comision, 350, y2);
    text(profe, 350, y3);
    y++;
    y2++;
    y3++;


    textFont(normal);



    fill(255, 255, 255);
    text(reiniciarr, 10, 389);
  }
}
