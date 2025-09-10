import 'dart:io';

void main() {
  while (true) {
    stdout.write('Informe a nota1: ');
    String? nota1 = stdin.readLineSync();
    print(nota1);
    if (nota1 != null && nota1.trim().isNotEmpty) {
      nota1 = nota1.replaceAll(',', '.');
      try {
        double n1 = double.parse(nota1);
        print('n1 foi convertido, voce digitou um numro $n1');
        break; //sai do while quando a conversao for bem-sucedida;
      } catch (e) {
        print('Informe apensas numeros! Você digitou $e');
      }
    } else {
      print('Nota nula ou vazia');
    }
  }
}
