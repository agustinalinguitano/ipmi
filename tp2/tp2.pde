String estado;
int e;
PImage pantalla1;
PImage pantalla2;
PImage pantalla3;
PImage pantalla4;
PImage pantalla5;
PImage pantalla6;
PImage pantalla7;
PImage pantalla8;
float x = 0;
float y = 0;
int tiempo = 0;
int segundos = 6000;

String texto1 = "Ensemble stars!! music\n es un juego de ritmo\n para moviles creado\n por happy elements";
String texto2 = "El juego sigue\n la historia de 15 grupos\n idols dentro de la empresa\n Ensemble Square y sus\n problematicas en la industria";
String texto3 = "La mecanica principal\n del juego es ritmica\n presionando las notas\n correspondientes\n durante los lives";
String texto4 = "El juego tiene una\n mecanica de coleccion de\n cartas, cada una con diferentes\n habilidades que mejoran el\n puntaje durante los\n lives";
String texto5 = "La forma de conseguir\n cartas es mediante el scout\n donde intercambias una moneda\n dentro del juego por cartas\n al azar de diferente rareza";

void setup() {
  size(640, 480);
  textAlign( CENTER, CENTER );
  colorMode (HSB, 300);
  background(0, 0, 300);

  estado = "pantalla-1";
  e = 1;
  tiempo = millis();
  pantalla1 = loadImage ("pantalla1.jpg");
  pantalla2 = loadImage ("pantalla2.jpg");
  pantalla3 = loadImage ("pantalla3.jpg");
  pantalla4 = loadImage ("pantalla4.jpg");
  pantalla5 = loadImage ("pantalla5.jpg");
  pantalla6 = loadImage ("pantalla6.jpg");
  pantalla7 = loadImage ("pantalla7.jpg");
  pantalla8 = loadImage ("pantalla8.jpg");
}

void draw() {

  if ( e == 1 ) {  //---------------------------PANTALLA 1

    background(0, 0, 300);
    image(pantalla1, 0, 90);
  } else if ( e == 2 ) {  //---------------------------PANTALLA 2

    background(0, 0, 300);
    image(pantalla2, 0, 90);
    fill (0, 00, 00);
    text (texto1, 300, y*2);
    y += 0.5;

    //---------------------------PANTALLA 3
    x = -textWidth(texto1);
  } else if ( e == 3 ) {

    background(0, 0, 300);
    image(pantalla3, 0, 90);
    text (texto2, 270, y);
    y += 0.5;
  } else if ( e == 4 ) {   //---------------------------PANTALLA 4

    background(0, 0, 300);
    image(pantalla4, 0, 90);
    text (texto3, 300, y/2);
    y += 0.9;
  } else if ( e == 5 ) {     //---------------------------PANTALLA 5

    background(0, 0, 300);
    image(pantalla5, 0, 90);
    text (texto4, x/2, 200);
    x += 4;
    if ((x / 4) > width) {
      x = -textWidth(texto4);
    }
  } else if ( e == 6 ) {  //---------------------------PANTALLA 6

    background(0, 0, 300);
    image(pantalla6, 0, 90);
  } else if ( e == 7 ) {   //---------------------------PANTALLA 7

    background(0, 0, 300);
    image(pantalla7, 0, 90);
    text (texto5, 300, y/4);
    y += 2;
  } else if ( e == 8 ) { // ----------------------PANTALLA 8

    background(0, 0, 300);
    image(pantalla8, 0, 90);
    noStroke();
    fill (40, 300, 300);
    quad (455, 331, 554, 331, 554, 357, 455, 360);
    fill (300, 300, 0);
    textSize(20);
    text("REINICIAR", 500, 345 );
  }
  if (millis() - tiempo >= segundos && e < 8) {
    e++;
    tiempo = millis();
  }

  textSize( 36 );
  println(mouseX + "-" + mouseY );
}
void mousePressed() {
  if ( e == 8 && mousePressed && mouseX > 454 && mouseX < 553 &&  mouseY > 330 && mouseY < 358) {
    e = 0;
    tiempo = millis();
    e = 1;
    tiempo = millis();
    x = 1;
    y = 1;
  }
}
