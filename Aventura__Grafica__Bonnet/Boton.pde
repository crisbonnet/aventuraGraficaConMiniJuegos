class Boton {
  int posX, posY, ancho, alto;
  Aventura aventura;
  int pantallaId;
  String texto;

  Boton(int pposX, int pposY, int pancho, int palto, int ppantallaId, 
    Aventura paventuraAB, String ptexto) {
    posX = pposX;
    posY = pposY;
    ancho = pancho;
    alto = palto;
    pantallaId = ppantallaId;
    aventuraAB = paventuraAB;
    texto = ptexto;
  }

  void dibujar() {
    noStroke();
    fill(255, 200);
    rect(posX, posY, ancho, alto);
    fill(0);
    textSize(23);
    textAlign(CENTER, CENTER);
    text(texto, posX+75, posY+27);
  }

  void mousePresionado() {
    if (mouseX > posX && mouseX <posX + ancho && mouseY > posY &&
      mouseY < posY + alto) {
      aventuraAB.cambioPantalla(pantallaId);
    }
  }
}
