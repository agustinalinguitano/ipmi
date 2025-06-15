// https://youtu.be/we3YgQXWh10
PImage img;
boolean circulosColor = false;
boolean cuadrosColor = false;
color ColorCirculosR ;
color ColorCirculosA ; 
color ColorCuadrosR ;
color ColorCuadrosA ;
void setup() {
  size(800, 400);
  img = loadImage("cuadros.png");
}

void draw() {
  image(img, 0, 0);
  noStroke();

for (int i = 0; i < height; i += 40) {
  for (int x = 400; x < width; x += 40) {
    if (cuadrosColor) {
      if (((x / 40) + (i / 40)) % 2 == 0) {
        dibujarCuadro(x,i,ColorCuadrosA);
      } else {
       dibujarCuadro (x,i, ColorCuadrosR);
      }
    } else {
      if (((x / 40) + (i / 40)) % 2 == 0) {
        dibujarCuadro(x,i, 0);
      } else {
        dibujarCuadro(x,i,255); 
      }
    }
  }
}

  for (int i = 20; i < height; i += 40) {
    for (int x = 420; x < width; x += 40) {
      if (circulosColor) {
        if (((x / 40) + (i / 40)) % 2 == 0) {
          dibujarCirculo (x,i,ColorCirculosR);
        } else {
          dibujarCirculo (x,i, ColorCirculosA); 
        }
      } else {
        if (((x / 40) + (i / 40)) % 2 == 0) {
          dibujarCirculo(x,i,255);
        } else {
         dibujarCirculo(x,i,0);
        }
      }
    }
  }
}

void dibujarCuadro(int x, int y, color c) {
  fill(c);
  rect(x, y, 40, 40);
}

void dibujarCirculo(int x, int y, color c) {
  fill(c);
  circle(x, y, 15);
}


void mousePressed() {
  circulosColor = !circulosColor;
  cuadrosColor = !cuadrosColor ;
 ColorCirculosR = generarColorAleatorio(200, 255, 50, 150, 150, 255);
  ColorCuadrosR  = generarColorAleatorio(200, 255, 50, 150, 150, 255);
  ColorCirculosA = generarColorAleatorio(200, 255, 200, 255, 0, 100);
  ColorCuadrosA  = generarColorAleatorio(200, 255, 200, 255, 0, 100);
}
 color generarColorAleatorio(float rMin, float rMax, float gMin, float gMax, float bMin, float bMax) {
  float r = random(rMin, rMax);
  float g = random(gMin, gMax);
  float b = random(bMin, bMax);
  return color(r, g, b);
 } 
