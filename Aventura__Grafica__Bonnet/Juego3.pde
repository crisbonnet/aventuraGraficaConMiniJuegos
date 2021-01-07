class Juego3 {
  PImage fondoRio;
  int cantPiedras = 40;

  //aca se genera el objeto rio
  Roca [] rio= new Roca [cantPiedras];
  boolean colision=false;
  Personaje caballero;
  int tiempo3=25;


  //constructor
  Juego3(Aventura paventuraAB) {
    fondoRio=loadImage("pantalla11.png");

    for (int i=0; i<cantPiedras; i++) {
      rio[i]=new Roca();
    }

    caballero=new Personaje ();
    aventuraAB = paventuraAB;
  }


  void dibujar() {

    imageMode(CORNER);
    image(fondoRio, 0, 0, width, height);
    fill(255);
    textSize(25);
    text("¡Cuidado con las rocas!", 200, 50);

    caballero.dibujar();
    caballero.mover();

    for (int i=0; i<cantPiedras; i++) {
      rio[i].dibujar();

      if (dist (mouseX, mouseY, rio[i].posx, rio[i].posy)<30) {
        colision=true;
      } else {
        colision=false;
      }

      if (colision) {
        caballero.vida--;
        rio[i].piedra[0]= rio[i].piedra[1];
      }

      if (caballero.vida==0) {

        aventuraAB.cambioPantalla(14);
      }
    }

    if (tiempo3==0) {

      aventuraAB.cambioPantalla(12);
    }
  }


  void temporizador() {
    if (frameCount%25==0) {
      tiempo3=tiempo3-1;
    }
    pushStyle();
    fill(255, 0, 0);
    textSize(40);
    text(tiempo3, 40, 560);
    popStyle();
  }
}
