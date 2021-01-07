class Pantalla {
  String texto;
  PImage fondo;
  Boton [] botones;
  boolean activa;

  //meter juegos//
  int poseejuego;
  Juego1 juegoCueva;
  Juego2 juegoEscape;
  Juego3 juegoRio;


  //Valores de pantalla
  Pantalla(String ptexto, PImage pfondo, Boton [] pbotones, boolean pactiva, int PoseeJuegos) {
    texto = ptexto;
    fondo = pfondo;
    botones = pbotones;
    activa = pactiva;
    poseejuego = PoseeJuegos;
  }

  void dibujar() {

    //condicional del juego
    if (tieneJuego()) {
      dibujarJuego();
    } else {
      if (estaActiva()) {
        image(fondo, 0, 0, width, height);
        textSize(22);
        fill(0);
        text(texto, 70, 470, 650, 100);
        for (int b=0; b<botones.length; b++) {
          botones[b].dibujar();
        }
      }
    }
  }

  //Click del juego1
  void mousePresionado() {
    if (estaActiva()) {
      if (tieneJuego()) {
        mousePresionadoJuego();
      } else {
        for (int b=0; b<botones.length; b++) {
          botones[b].mousePresionado();
        }
      }
    }
  }

  //Teclas del juego2
  void keyPresionado() {
    if (estaActiva()) {
      if (tieneJuego()) {
        keyPressedJuego();
      }
    }
  }



  boolean estaActiva() {
    return activa;
  }


  //Juegos de pantallas
  boolean tieneJuego() {
    return poseejuego != 0;
  }

  void dibujarJuego() {
    if (poseejuego == 1) {

      juegoCueva.dibujar();
    } else if (poseejuego == 2) {
      juegoEscape.dibujar();
      juegoEscape.temporizador();
    } else if (poseejuego == 3) {
      juegoRio.dibujar();
      juegoRio.temporizador();
    }
  }

  void mousePresionadoJuego() {
    if (poseejuego == 1) {
      juegoCueva.mousePres();
    }
  }

  void keyPressedJuego() {
    if (poseejuego == 2) {
      juegoEscape.keyPres();
    }
  }

  void setJuego1(Juego1 pjuegoCueva) {
    juegoCueva = pjuegoCueva;
  }

  void setJuego2(Juego2 pjuegoEscape) {
    juegoEscape = pjuegoEscape;
  }

  void setJuego3(Juego3 pjuegoRio) {
    juegoRio = pjuegoRio;
  }
}
