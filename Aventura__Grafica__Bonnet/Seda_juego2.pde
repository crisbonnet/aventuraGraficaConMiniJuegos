class Seda {
  int posx, posy, tam;
  boolean SeSuma;
  PImage[] telar=new PImage [2];
  boolean cambioTela=true;

  //constructor
  Seda() {
    tam = 60;
    posx=floor(random(0, width-tam));
    posy=floor(random(0, height-tam));
    SeSuma=true;
    for (int i=0; i<2; i++) {
      telar[i]= loadImage ("tela"+ i+".png");
    }
  }

  //metodo
  void dibujar() {    
    image(telar[0], posx, posy, tam, tam);
  }
}
