// renaud.jean-francois(arobas)uqam(point)ca
// Syntaxe Processing version 3.5.4
// mercredi, 22 janvier 2020


void setup() {
  size(200, 200);
  background(0);
  fill(255);
  noStroke();
  //println(millis());
}

void draw() {
  background(0);
  int i = 0;

  while (true) { // même chose que for (;;) {
    i++;
    if (millis() >= 500) {
      break;
    }
    stroke(i%256);
    line(map(i,0,255,0,width),0,width,height);
  }

  println("On est sorti de la boucle While");
  print(i);
  noLoop();
}
