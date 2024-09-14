import 'dart:math';

Random random = Random();
List<int> numListe = [];
int somPair = 0;
int somImpair = 0;
int tailleList = 0;

void main(List<String> args) {
  tailleList = random.nextInt(100);
  for (int i = 0; i <= tailleList; i++) {
    numListe.add(random.nextInt(101));
  }
  if (numListe.length <= 0) {
    print("Tableau vide");
  } else {
    for (int i = 0; i <= tailleList; i++) {
      if (numListe[i] % 2 == 0) {
        somPair += numListe[i];
      } else {
        somImpair += numListe[i];
      }
    }
    print("Taille list $tailleList, Tableau $numListe");
  }

  print("Somme des paires = $somPair / Somme des impaires = $somImpair");
}
