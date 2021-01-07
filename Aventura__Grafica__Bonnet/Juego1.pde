class Juego1 {
  PImage fondoArania;
  int cantClick=-1;
  int cantTelas=10;
  int maxClick =cantTelas;
  int cantTelasQuietas=0;
  Telarania [] cueva=new Telarania[cantTelas];
  Aventura aventuraAB;


  Juego1(Aventura paventuraAB) {
    fondoArania=loadImage("pantalla3.png");
    for (int i=0; i<cantTelas; i++) {
      cueva[i]= new Telarania();
    }
    aventuraAB = paventuraAB;
  }

  void dibujar() {
    image(fondoArania, 0, 0, width, height);
    fill(255);
    textSize(25);
    text("Detené la mayor cantidad de telarañas!", 300, 50);
    text("Clicks:"+cantClick+ ". Máximo:"+ cantTelas, 200, 100);

    if ((cantClick> maxClick) && (cantTelasQuietas < maxClick)) {

      aventuraAB.cambioPantalla(6);
    } else if ((cantClick ==maxClick) && (cantTelasQuietas == maxClick)||
      (cantTelasQuietas == cantTelas)) {

      aventuraAB.cambioPantalla(4);
    }


    for (int i=0; i<cantTelas; i++) {
      cueva[i].dibujar();
    }
  }


  void mousePres() {
    cantClick++;
    for (int i=0; i<cantTelas; i++) {
      cueva[i].mousePres();
    }

    cantTelasQuietas=0;
    for (int i=0; i<cantTelas; i++) {
      if (cueva[i].estaQuieta()) {
        cantTelasQuietas++;
      }
    }
  }
}
