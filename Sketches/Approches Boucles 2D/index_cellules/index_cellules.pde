// renaud.jean-francois(arobas)uqam(point)ca
// Syntaxe Processing version 3.5.4
// dimanche, 26 janvier 2020

PFont font;
int colonnes = 10, rangees = 10;
float tailleCell;

void setup() {
  size(600, 600);
  background(0);
  
  noStroke();

  tailleCell = sqrt(width*height)/float(colonnes);

  font = loadFont("Menlo-Regular-24.vlw");
  textFont(font, 24);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  
  noLoop();
}

void draw() {
  background(0);
  
  pushMatrix();
  translate(tailleCell*0.5, tailleCell*0.5);


  for (int j = 0; j < rangees; j++) {
    for (int i = 0; i < colonnes; i++) {
      fill(200, 150, 10);
      rect(i*tailleCell, j*tailleCell, tailleCell*0.95, tailleCell*0.95);
      fill(255);
      text(str(i + (j*colonnes)), i*tailleCell, j*tailleCell);
    }
  }
  popMatrix();
  
  fill(0);
  ellipse(width/2, height/2, 20, 20);
}
