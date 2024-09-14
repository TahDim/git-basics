import 'dart:io';

var s; // saisie
var n; // saisie en num
bool noNum = true;

void main(List<String> args) {
  while (noNum) {
    print('Saisissez un nombre :');
    s = stdin.readLineSync();
    try {
      n = num.parse(s);
      for (int i = 0; i <= 10; i++) {
        print('$i * $n = ${i * n}');
      }
      break;
    } catch (e) {
      noNum = true;
    }
  }
}
