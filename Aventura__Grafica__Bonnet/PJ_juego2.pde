class Pj {
  int x, y, tam;
  PImage caballerou;
  int vel=10;

  //constructor
  Pj() {
    x=width/2;
    y=height/2;
    tam=60;
    caballerou=loadImage ("caballero2.png");
  }


  //metodo
  void dibujar() {
    pushStyle();
    imageMode (CENTER);
    image(caballerou, x, y, tam, tam);
    popStyle();
  }


  void mover() {
    if (keyCode==UP) {
      y=y-vel;
    } else if (keyCode==DOWN) {
      y=y+vel;
    } else if (keyCode==RIGHT) {
      x=x+vel;
    } else if (keyCode==LEFT) {
      x=x-vel;
    }

    //limita el espacio de accion a la pantalla
    if (x<0) {
      x= width;
    } else if (x> width) {
      x=0;
    } else if (y<0) {
      y= height;
    } else if (y> height) {
      y=0;
    }
  }

  //colisión boolean 
  boolean colision( float posxArbol, float posyArbol ) {
    boolean choco = false;
    if (dist( x, y, posxArbol, posyArbol ) <= tam  ) {
      choco = true;  //colisiono
    }
    return( choco );
  }
}
