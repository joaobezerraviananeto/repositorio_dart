import 'dart:io';

void main() {
  stdout.write('Informe um numero de 1 a 9: ');
  String? entrada = stdin.readLineSync();
  if (entrada != null && entrada.trim().isNotEmpty) {
    try {
      int numero = int.parse(entrada);
      if (numero > 0 && numero < 10) {
        for (int i = 0; i < 10; i++) {
          //n X 5 = y
          print('$numero x $i = ${numero * i}');
        }
        print('Tabuada concluida!');
      } else {
        print('Informe um numero entre 1 e 9! Você digitou $numero');
      }
    } catch (e) {
      print('Informe apenas numeros! Você digitou $entrada');
    }
  }
}
