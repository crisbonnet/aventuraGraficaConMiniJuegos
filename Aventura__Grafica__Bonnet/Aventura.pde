class Aventura {
  int cantPantallas =17;
  Pantalla [] pantallas = new Pantalla [cantPantallas];
  int pantallaActivaId = 0;

  Aventura() {
    //Pantalla 0
    PImage fondo = loadImage("pantalla0.png");
    Boton [] botones = new Boton [3];
    botones[0] = new Boton(50, 50, 150, 60, 1, this, "Comenzar");
    botones[1] = new Boton(230, 420, 150, 60, 15, this, "Diagrama");
    botones[2] = new Boton(390, 420, 150, 60, 16, this, "Sinopsis");
    pantallas[0] = new Pantalla("Un pequeño caballero duda de su valentía, por lo que desea regresar a su casa para meditar su situación.", fondo, botones, true, 0);

    //Pantalla 1
    fondo = loadImage("pantalla1.png");
    botones = new Boton [1];
    botones[0] = new Boton(320, 50, 150, 60, 2, this, "Avanza");
    pantallas[1] = new Pantalla("Para regresar, debe seguir el camino de tierra y atravesar el aterrador y misterioso bosque.", fondo, botones, false, 0);

    //Pantalla 2
    fondo = loadImage("pantalla2.png");
    botones = new Boton [2];
    botones[0] = new Boton(600, 100, 150, 60, 3, this, "Atacar");
    botones[1] = new Boton(600, 200, 150, 60, 7, this, "Escapar");
    pantallas[2] = new Pantalla("Después de adentrarse al bosque, el caballero se encuentra una enorme araña, ¿Qué puede hacer?", fondo, botones, false, 0);

    //Pantalla 3 ---Juego1
    fondo = loadImage("pantalla3.png");
    botones = new Boton [2];
    botones[0] = new Boton(50, 150, 150, 60, 4, this, "-");
    botones[1] = new Boton(50, 400, 150, 60, 6, this, "-");
    pantallas[3] = new Pantalla("", fondo, botones, false, 1);
    pantallas[3].setJuego1(new Juego1(this));

    //Pantalla 4
    fondo = loadImage("pantalla4.png");
    botones = new Boton [1];
    botones[0] = new Boton(600, 300, 150, 60, 5, this, "Seguir");
    pantallas[4] = new Pantalla("Haz sido muy fuerte y valiente, tus habilidades superaron las de tu oponente, ¡Lograste vencer a la araña!", fondo, botones, false, 0);

    //Pantalla 5
    fondo = loadImage("pantalla5.png");
    botones = new Boton [1];
    botones[0] = new Boton(320, 250, 150, 60, 5, this, "Toca la Barra"); //reinicia
    pantallas[5] = new Pantalla("Vuelves a casa satisfecho y contento porque sabes que eres un valiente caballero, mereces un descanso.", fondo, botones, false, 0);

    //Pantalla 6
    fondo = loadImage("pantalla6.png");
    botones = new Boton [1];
    botones[0] = new Boton(320, 250, 150, 60, 6, this, "Toca la Barra"); //reinicia
    pantallas[6] = new Pantalla("Lamentablemente no entrenaste lo suficiente, la araña te gana en combate y piensa comerte.", fondo, botones, false, 0);

    //Pantalla 7---Juego2
    fondo = loadImage("pantalla7.png");
    botones = new Boton [2];
    botones[0] = new Boton(170, 150, 150, 60, 8, this, "");
    botones[1] = new Boton(170, 300, 150, 60, 10, this, "");
    pantallas[7] = new Pantalla("", fondo, botones, false, 2);
    pantallas[7].setJuego2(new Juego2(this));

    //Pantalla 8
    fondo = loadImage("pantalla8.png");
    botones = new Boton [1];
    botones[0] = new Boton(320, 300, 150, 60, 9, this, "Corré!");
    pantallas[8] = new Pantalla("Intentaste correr, pero 8 patas son más rápidas que 2, la araña te alcanza.", fondo, botones, false, 0);

    //Pantalla 9
    fondo = loadImage("pantalla9.png");
    botones = new Boton [1];
    botones[0] = new Boton(320, 250, 150, 60, 9, this, "Toca la Barra"); //reinicia
    pantallas[9] = new Pantalla("Esto no te lo esperabas, la gran araña, solo quería un compañero para su fiesta de té.", fondo, botones, false, 0);

    //Pantalla 10
    fondo = loadImage("pantalla10.png");
    botones = new Boton [1];
    botones[0] = new Boton(50, 300, 150, 60, 11, this, "Cruzar el río");
    pantallas[10] = new Pantalla("Corres como una gallina y sin darte cuenta, te pierdes. Terminas cerca de un río, el camino está del otro lado.", fondo, botones, false, 0);

    //Pantalla 11---Juego3
    fondo = loadImage("pantalla11.png");
    botones = new Boton [2];
    botones[0] = new Boton(170, 150, 150, 60, 12, this, "");
    botones[1] = new Boton(170, 300, 150, 60, 14, this, "");
    pantallas[11] = new Pantalla("", fondo, botones, false, 3);
    pantallas[11].setJuego3(new Juego3(this));

    //Pantalla 12
    fondo = loadImage("pantalla12.png");
    botones = new Boton [1];
    botones[0] = new Boton(20, 100, 150, 60, 13, this, "Vas a casa");
    pantallas[12] = new Pantalla("Eres un cobarde con brazos fuertes, a duras penas logras atravesar el río.", fondo, botones, false, 0);

    //Pantalla 13
    fondo = loadImage("pantalla13.png");
    botones = new Boton [1];
    botones[0] = new Boton(320, 250, 150, 60, 13, this, "Toca la Barra"); //reinicia
    pantallas[13] = new Pantalla("Llegas finalmente a tu casa, pero es un final amargo y sabes que lo lograste por ser un cobarde.", fondo, botones, false, 0);

    //Pantalla 14
    fondo = loadImage("pantalla14.png");
    botones = new Boton [1];
    botones[0] = new Boton(320, 250, 150, 60, 14, this, "Toca la Barra"); //reinicia
    pantallas[14] = new Pantalla("La suerte no está del lado de los que huyen de sus problemas, la corriente te arrastra hasta el principio.", fondo, botones, false, 0);

    //Pantalla 15 - Mapa de la aventura
    fondo = loadImage("pantalla15.png");
    botones = new Boton [1];
    botones[0] = new Boton(30, 520, 150, 60, 0, this, "volver");
    pantallas[15] = new Pantalla("", fondo, botones, false, 0);

    //Pantalla 16 - Sinopsis
    fondo = loadImage("pantalla16.png");
    botones = new Boton [1];
    botones[0] = new Boton(650, 520, 150, 60, 0, this, "volver");
    pantallas[16] = new Pantalla("", fondo, botones, false, 0);
  }

  void dibujar() {
    for (int p=0; p<cantPantallas; p++) {
      if (pantallas[p].estaActiva()) {
        pantallas[p].dibujar();
      }
    }
  }

  void mousePresionado() {
    for (int p=0; p<cantPantallas; p++) {
      if (pantallas[p].estaActiva()) {
        pantallas[p].mousePresionado();
      }
    }
  }

  void keyPresionado() {
    for (int p=0; p<cantPantallas; p++) {
      if (pantallas[p].estaActiva()) {
        if (pantallas[p].tieneJuego()) {
          pantallas[p].keyPressedJuego();
        }
      }
    }
  }

  void cambioPantalla(int pantallaId) {

    for (int p=0; p<cantPantallas; p++) {
      if (p == pantallaId) {
        pantallas[p].activa = true;
      } else {
        pantallas[p].activa = false;
      }
    }
  }

  void reiniciar() {

    if ( key == ' ' && pantallas[5].activa|| pantallas[6].activa || pantallas[9].activa || pantallas[13].activa|| pantallas[14].activa){ 
      setup();
    }
  }
}
