Aventura aventuraAB;

void setup() {
  size(800, 600);
  aventuraAB = new Aventura();
}

void draw() {
  background(200);
  aventuraAB.dibujar();
}

void mousePressed() {
  aventuraAB.mousePresionado();
}

void keyPressed() {
  aventuraAB.keyPresionado();
  aventuraAB.reiniciar();
}
