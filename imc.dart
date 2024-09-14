import 'dart:io';
import 'dart:math';

// Variables
var imc;
var poids;
var taille;
var isTrue;
var rep;

void main(List<String> args) {
  do {
    // Poids
    print('Entrez votre poids en kg :');
    poids = stdin.readLineSync();

    // Taille
    print('Entrez votre taille en m :');
    taille = stdin.readLineSync();

    // Calcule imc
    try {
      imc = (double.tryParse(poids) as num) /
          pow(double.tryParse(taille) as num, 2);

      if (imc < 18.5) {
        print('Vous êtes en sous-poids.');
      } else if (imc >= 18.5 && imc < 24.9) {
        print('Vous avez un poids normal.');
      } else if (imc >= 24.9 && imc < 29.9) {
        print('Vous êtes en surpoids.');
      } else {
        print('Vous êtes en obésité.');
      }

      print('Voulez vous recommencer ? (y/n)');
      rep = stdin.readLineSync();
    } catch (e) {
      print(
          "Vérifiez bien ce que vous avez saissi. Pour vous punir :) le programme va s'arrêter");
      break;
    }

    rep == 'y' ? isTrue = true : isTrue = false;
  } while (isTrue);
}
