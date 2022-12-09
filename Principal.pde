class Principal {
  int estado;
  Fondo fondo;
  Avion avion;
  Iniciopag iniciopag;
  PagPerder pagperder;
  PagGanar pagganar;
  Pajaro[] pajaros=new Pajaro[4];

  Principal() {
    for (int i = 0; i < pajaros.length; i++) {
      pajaros[i] = new Pajaro(random(800, 1000), i*height/pajaros.length, 30, 30);
    }

    fondo=new Fondo();
    avion = new Avion();
    iniciopag = new Iniciopag();
    pagperder = new PagPerder();
    pagganar= new PagGanar();   
  }

  void losestados() {
    if (estado==0) {
      paginauno();
    }
    if (estado==1) {
      juegooo();
      choque();
      ganarr();
      limite();
    }
    if (estado==2) {
      perder() ;
    }
    if (estado==3) {
      reiniciarjuego();
    }
    if (estado==4) {
      ganarr();
    }
  }

  void movimientoAvion() {
    if (key=='w' || key =='W' ) {
      avion.Y--;
      avion.Y--;
    }
    if (key=='s' ||  key=='S') {
      avion.Y++;
      avion.Y++;
    }

    if (key=='d' || key=='D') {
      avion.X++;
      avion.X++;
    }
    if (key=='a' || key=='A') {
      avion.X--;
      avion.X--;
    }
  }

  void perder() {
    estado = 2;
    background(0);
    pagperder.ultimapag();
  }

  void choque() {
    for (int i=0; i<pajaros.length; i++) {
      float distan=dist(avion.X, avion.Y, pajaros[i].x, pajaros[i].y);
      if (distan<pajaros[i].tam/2+avion.tam/2) {
        perder();       
        player.play();
      }
    }
  }

  void juegooo() {
    estado = 1; 
    fondo.ponerfondo();
    avion.avionensi();
    for (int i=0; i<pajaros.length; i++) {
      pajaros[i].dibujarpajaro();
      pajaros[i].volar();
    }
  }

  void reiniciarjuego() {
    estado = 3;
    avion.reinicioavion();
    juegooo();
  }
  
  void paginauno() {
    estado = 0;
    iniciopag.ponerpagina();
    iniciopag.contenidoinicio();
  }
  
  void ganarr() {
    if (avion.X>=800) {
      estado = 4;
      pagganar.pantallafinal();
      noTint();
      playy.play();
    }
  }
  
  void limite() {
    avion.borde();
  }

  void keyPressed() {
    movimientoAvion();
    if (estado == 0) {
      if (keyCode == ENTER) {
        estado = 1;
      }         
    }
    if (estado == 2) {
      if (key == 't' || key == 'T') {
        estado = 3;
      }
    }
    if (estado == 4) {
      if (key == 't' || key == 'T') {
        estado = 3;
      }
    }
  }
}
