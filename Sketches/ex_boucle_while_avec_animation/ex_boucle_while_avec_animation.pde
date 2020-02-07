// renaud.jean-francois(arobas)uqam(point)ca
// Syntaxe Processing version 3.5.3
// vendredi, 17 janvier 2020

float taille, tailleInit, tailleFinale = 5;
float facteur = 0.9;


void setup() {
  size(800, 800, P2D);
  background(0);
  pixelDensity(displayDensity());

  noFill();

  //noLoop();

  rectMode(CENTER);
}

void draw() {
  background(0);
  tailleInit = 200+(frameCount%1000);
  taille = tailleInit;

  translate(width/2, height/2);

  while (taille >= tailleFinale) {
    taille *= facteur;
    pushMatrix();
    rotate(map(taille, tailleInit, tailleFinale, 0, sin(millis()*0.002)*PI));
    stroke(0, 50);
    strokeWeight(1);
    fill(0, 255, 0, 30);
    rect(0, 0, taille, taille);
    popMatrix();
  }
}
