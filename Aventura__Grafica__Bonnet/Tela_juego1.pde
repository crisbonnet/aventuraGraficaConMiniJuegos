class Telarania {
  PImage tela;
  int posx, posy;
  int dir=2;
  int tam;

  //constructor
  Telarania() {
    posx=floor(random(0, width-100));
    posy=floor(random(0, height-100));
    tam=70;
    tela=loadImage("tela0.png");
  }



  //metodo
  void dibujar() {
    image(tela, posx, posy, tam, tam);

    if (posx < 0 || posx> width - tam) {
      dir = dir * -1;
    }   
    posx = posx + dir;
  }


  void mousePres() {
    if (mouseX> posx && mouseX < posx+tam && mouseY >posy && mouseY < posy+tam) {
      dir=0;
    }
  }

  boolean estaQuieta() {
    return dir == 0;
  }
}
