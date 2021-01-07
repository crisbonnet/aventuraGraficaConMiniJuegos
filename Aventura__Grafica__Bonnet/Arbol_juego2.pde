class Arbol {
  int posx, posy, tam;
  PImage arbol;

  //constructor
  Arbol() {
    tam = 60;
    posx=floor(random(0, width));
    posy=floor(random(0, height-tam));
    arbol=loadImage("arbol.png");
  }

  //metodo
  void dibujar() {
    pushStyle();
    imageMode (CENTER);
    fill(200);
    image(arbol, posx, posy, tam, tam);
    popStyle();
  }
}
