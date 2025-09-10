import 'dart:io';

void main() {
  stdout.write('Nota1: ');
  String? n1 = stdin.readLineSync();

  if (n1 != null && n1.trim().isNotEmpty) {
    n1 = n1.replaceAll(',', '.');
    print('entrei no if e removi as virgulas');
    try {
      double nota1 = double.parse(n1);
      print('converti a nota $n1');
    } catch (e) {
      print('Informe apenas numeros! Você digitou: $e');
    }
  } else {
    print('Vazio ou nulo');
  }
}
