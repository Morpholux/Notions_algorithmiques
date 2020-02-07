// renaud.jean-francois(arobas)uqam(point)ca
// Syntaxe Processing version 3.5.3
// vendredi, 17 janvier 2020

float taille, tailleInit = 700, tailleFinale = 50;
float facteur = 0.999;


void setup() {
  size(800, 800, FX2D);
  background(0);
  pixelDensity(displayDensity());
  
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
    pushMatrix();
    
    if (taille < tailleFinale*3) {
      rotate(map(taille, tailleFinale*3, tailleFinale, QUARTER_PI, -QUARTER_PI*3));
    } else {
      rotate(map(taille, tailleInit, tailleFinale*3, 0, QUARTER_PI));
    }
    float m = map(taille, tailleInit, tailleFinale, 0, 255);
    stroke(255, m , 255-m, 20+(m*0.2));
    rect(0, 0, taille, taille);
    popMatrix();
  }
  
  save("rendu.tif");
}
