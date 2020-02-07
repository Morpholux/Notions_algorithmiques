// renaud.jean-francois(arobas)uqam(point)ca
// Syntaxe Processing version 3.5.3
// mercredi, 15 janvier 2020

int m1, m2;

void setup() {
  size(200, 200);
  background(0);
  fill(255);
  noStroke();
  noLoop();
}

void draw() {

  m1 = millis();
  int compteur = 0;
  float f;

  // 1 milliard de répétitions  
  for (int i = 0; i < 1000000; i++) {
    for (int j = 0; j < 1000; j++) {

      compteur++; // 0.001 seconde

      //f = random(1.0); // ~ 11 secondes

      //println(i); // ~ 2-3 heures
    }
  }

  m2 = millis();
  println(float(m2 - m1)/1000 + " seconde(s)");
}

void mousePressed() {
  redraw();
}
