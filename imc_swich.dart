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
      imc = double.parse(poids) / pow(double.parse(taille), 2);

      switch (imc) {
        case < 18.5:
          print('Vous êtes en sous-poids.');
          break;
        case >= 18.5 && < 24.9:
          print('Vous avez un poids normal.');
          break;
        case >= 24.9 && < 29.9:
          print('Vous êtes en surpoids.');
          break;
        default:
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
