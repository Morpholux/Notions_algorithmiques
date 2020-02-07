// renaud.jean-francois(arobas)uqam(point)ca
// Syntaxe Processing version 3.5.3
// vendredi, 17 janvier 2020

float taille, tailleInit = 700, tailleFinale = 20;
float facteur = 0.9;

void setup() {
  size(800, 800, FX2D);
  background(0);

  stroke(255);
  noFill();

  noLoop();

  rectMode(CENTER);
}

void draw() {
  background(0);
  taille = tailleInit;

  translate(width/2, height/2);

  while (taille >= tailleFinale) {
    taille *= facteur;
    //rotate(0.025);
    rect(0, 0, taille, taille);
  }
}
