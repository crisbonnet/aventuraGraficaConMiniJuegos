class Personaje {
  int x, y, tam, vida;
  PImage pj;


  //constructor
  Personaje() {
    x=mouseX;
    y=mouseY;
    tam=50;
    pj=loadImage ("pj.png");
    vida=100;
  }

  void dibujar() {   
    pushStyle();
    imageMode (CENTER);
    image(pj, x, y, tam, tam);
    popStyle();

    fill(255);
    text("Vida:" +vida, 110, 80);
  }

  void mover() {
    x=mouseX;
    y=mouseY;
  }
}
