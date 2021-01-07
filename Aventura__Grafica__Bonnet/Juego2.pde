class Juego2 {
  Pj pejota;
  PImage fondoBosque;
  int cantSeda=6;
  int cantArbol=10;
  Seda [] suave= new Seda [cantSeda];
  Arbol [] bosque= new Arbol [cantArbol];
  int velocidad=10;


  int telasRotas=0;
  boolean triunfar=false;

  int tiempo=25;

  //constructor
  Juego2(Aventura paventuraAB) {
    fondoBosque=loadImage("pantalla7.png");
    for (int i=0; i<cantSeda; i++) {
      for (int j=0; j<cantArbol; j++) {
        suave[i]=new Seda();
        bosque[j]=new Arbol();
      }
      aventuraAB = paventuraAB;
    }

    pejota= new Pj();
  }

  //metodo

  void dibujar() {
    imageMode(CORNER);
    image(fondoBosque, 0, 0, width, height);

    pejota.dibujar();
    //  pejota.mover();  // opcional, hace que se mueva continuamente

    for (int i=0; i<cantSeda; i++) {
      for (int j=0; j<cantArbol; j++) {
        suave[i].dibujar();
        bosque[j].dibujar();

        //romper telas
        boolean romperTelas = dist (pejota.x, pejota.y, suave[i].posx, suave[i].posy)<40 == true;



        if (romperTelas && suave[i].SeSuma) {
          suave[i].telar[0]= suave[i].telar[1];
          telasRotas++;
          suave[i].SeSuma=false;
        }

        if (telasRotas==cantSeda)
        {
          triunfar=true;

          aventuraAB.cambioPantalla(10);
        }

        if (tiempo==0 && (telasRotas< cantSeda) ) {

          aventuraAB.cambioPantalla(8);
        }

        // hace que no se superpongan los arboles y las telarañas
        if (dist (suave[i].posx, suave[i].posy, bosque[j].posx, bosque[j].posy)<50)
        {
          bosque[j].posx=floor(random(0, width));
          bosque[j].posy=floor(random(0, height-bosque[j].tam));
        }


        //colision, acompaña a pejota
        if (pejota.colision(bosque[j].posx, bosque[j].posy)) {
          if (pejota.x <= bosque[j].posx) {      
            pejota.x= pejota.x-10;
          }
          if (pejota.x >= bosque[j].posx) {   
            pejota.x= pejota.x+10;
          }
          if (pejota.y <= bosque[j].posy) {       
            pejota.y= pejota.y-10;
          }
          if (pejota.y >= bosque[j].posy) { 
            pejota.y= pejota.y+10;
          }
        }
      }
    }
    pushStyle();
    fill(255);
    textAlign(CORNER);
    textSize(25);
    text("Rompé todas las telarañas. Usa las teclas para moverte.", 50, 50);
    text( "Telas rotas:" + telasRotas, 50, 100);
    popStyle();
  }

  void temporizador() {
    if (frameCount%25==0) {
      tiempo=tiempo-1;
    }
    pushStyle();
    fill(255, 0, 0);
    textSize(40);
    text(tiempo, 40, 560);
    popStyle();
  }

  void keyPres() {
    pejota.mover();
  }

    }
  
