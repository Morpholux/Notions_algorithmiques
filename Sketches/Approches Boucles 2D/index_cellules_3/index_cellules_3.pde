// renaud.jean-francois(arobas)uqam(point)ca
// Syntaxe Processing version 3.5.4
// dimanche, 26 janvier 2020

PFont font;
int colonnes = 21, rangees = 21, nbCellules = 0;
float tailleCell;

void settings() {
  tailleCell = 50;
  size(int(colonnes*tailleCell), int(rangees*tailleCell));
}

void setup() {
  background(0);

  font = loadFont("Menlo-Regular-24.vlw");
  textFont(font, 14);
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
      float d = dist((width/2)-(tailleCell*0.5), (height/2)-(tailleCell*0.5), i*tailleCell, j*tailleCell);
      noStroke();
      fill(map(d, 0, (colonnes/2.0)*sqrt(pow(tailleCell, 2)*2), 200, 0), 40, map(d, 0, (colonnes/2.0)*sqrt(pow(tailleCell, 2)*2), 20, 120));
      ellipse(i*tailleCell, j*tailleCell, tailleCell*0.95, tailleCell*0.95);
      fill(255);
      text(str(i + (j*colonnes)), i*tailleCell, j*tailleCell);
      //text(str(int(i*tailleCell))+"\n"+str(int(j*tailleCell)), i*tailleCell, j*tailleCell);
      nbCellules++;
    }
  }
  //print("nbCellules : " + nbCellules);
  popMatrix();

  // Marqueur centre
  pushStyle();
  noFill();
  stroke(255);
  rect(width/2, height/2, tailleCell, tailleCell);
  popStyle();
}
