class Roca {
  PImage [] piedra= new PImage [2];
  int posx, posy, tam;
  int vel=10;


  //constructor
  Roca() {
    posx=floor(random(0, width-50));
    posy=floor(random(-800, 0));
    tam = floor(random(40, 80));

    for (int i=0; i<2; i++) {
      piedra[i]= loadImage ("Roca"+ i+".png");
    }
  }



  //metodo
  void dibujar() {


    image(piedra[0], posx, posy, tam, tam);
    posy=posy+vel;

    if (posy > height ) {
      posy = floor(random(-1000, -30));
    }
  }
}
