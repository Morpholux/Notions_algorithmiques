// renaud.jean-francois(arobas)uqam(point)ca
// Syntaxe Processing version 3.5.4
// mardi, 21 janvier 2020

int nbLignes1 = 35;
int l1 = 50, r1 = 200, t1 = -30, intervalle1 = 20;
float translateY1;

int nbLignes2 = 100;
int l2 = 100, r2 = 400, t2 = -60, intervalle2 = 12;
float translateY2;

void setup() {
  size(600, 600, FX2D);
  background(0);
  strokeWeight(4);
  strokeCap(SQUARE);
  noFill();
}

void draw() {
  background(0);

  stroke(80, 255, 50);
  translateY1 = frameCount*0.2 % intervalle1;
  for (int i = 0; i < nbLignes1; i++) {
    line(l1, t1 + (i* intervalle1) + translateY1, l1+r1, (t1-50) + (i* intervalle1) + translateY1);
  }

  stroke(255, 0, 150);
  translateY2 = frameCount % intervalle2;
  for (int i = 0; i < nbLignes2; i++) {
    line(l2, t2 + (i* intervalle2) + translateY2, l2+r2, (t2+60) + (i* intervalle2) + translateY2);
  }
}
