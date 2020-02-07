// renaud.jean-francois(arobas)uqam(point)ca
// Syntaxe Processing version 3.5.3
// vendredi, 17 janvier 2020

int compteur = 0;
boolean incrementer;
int borneInf = 0, borneSup = 10;

void setup() {
  size(200, 200);
  background(0);
  fill(255);
  noStroke();
}

void draw() {
  background(0);
  
  // Découpage de la tâche en deux étapes, par souci de clarté
  // On pourrait s’éviter la variable "incrementer" et
  // changer la valeur de la variable dès l’étape 1
  
  // Étape 1 : détermine si on doit incrémenter ou décrémenter
  // Il faut avoir l’assurance que la comparaison peut être faite
  // Sinon, on peut préférer les opérateurs de condition <= ou >=
  if (compteur == borneInf) {
    incrementer = true;
  } else if (compteur == borneSup) {
    incrementer = false;
  }
  
  // Étape 2 : la valeur du compteur est augmentée ou diminuée
  if (incrementer) {
    compteur ++;
  } else {
    compteur --;
  }
  
  
  
  rect(compteur*19, height/2, 10,10);
  println (compteur);
}



void mousePressed() {
  noLoop();
}

void mouseReleased() {
  loop();
}
