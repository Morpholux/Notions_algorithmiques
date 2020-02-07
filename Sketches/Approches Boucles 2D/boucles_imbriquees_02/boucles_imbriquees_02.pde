// renaud.jean-francois(arobas)uqam(point)ca
// Syntaxe Processing version 3.5.4
// samedi, 25 janvier 2020

float theta = 0;
float delta = 0;
int tailleCell = 10;
PImage img;
PGraphics pg;
boolean onSauve;

void setup() {
  size(800, 800, P2D);
  background(0);
  pixelDensity(displayDensity());

  //img = loadImage("trou.png");
  img = loadImage("trou_1000_contour_flou.png");

  pg = createGraphics(width, height, P2D);

  noStroke();
  rectMode(CENTER);
}

void draw() {
  background(0);

  delta = map(frameCount%1000, 0, 999, 0, TWO_PI);

  pg.beginDraw();
  pg.background(0);
  pg.rectMode(CENTER);

  for (int j = tailleCell; j < height; j+= tailleCell ) {
    for (int i = tailleCell; i < width; i+= tailleCell ) {
      pg.pushMatrix();
      pg.translate(i, j);
      if (i%(tailleCell*2) == 0) {
        pg.rotate(theta + delta);
      } else {
        pg.rotate(theta - delta);
      }
      pg.fill(map(i, tailleCell, width-tailleCell, 0, 50), map(i, width-tailleCell, tailleCell, 0, 50), map(j, height-tailleCell, tailleCell, 20, 50), 155);
      pg.noStroke();
      pg.rect(0, 0, map(j, tailleCell, height-tailleCell, 0.5, 12), 40);
      pg.popMatrix();
      theta += QUARTER_PI*0.2;
    }
  }
  theta = 0;

  //pg.blendMode(BLEND);
  pg.blendMode(ADD);
  //pg.blendMode(SUBTRACT);
  //pg.blendMode(DARKEST);
  //pg.blendMode(LIGHTEST);
  //pg.blendMode(DIFFERENCE);
  //pg.blendMode(EXCLUSION);
  //pg.blendMode(MULTIPLY);
  //pg.blendMode(SCREEN);
  //pg.blendMode(REPLACE);

  pg.endDraw();

  image(pg, 0, 0);
  //image(pg, 5, 5);
  image(pg, 10, 10);

  blendMode(ADD);

  //image(img, 0, 0, width, height);

  if (onSauve) {
    save("rendu_"+str(frameCount)+".jpg");
    onSauve = false;
  }
}

void keyPressed() {
  if (key == ' ') {
    onSauve = true;
  }
}
