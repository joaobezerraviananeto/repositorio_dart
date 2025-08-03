import 'dart:io';

void main() {
  double n1 = 0, n2 = 0, n3 = 0;
  while (true) {
    stdout.write('Nota1: ');
    String? nota1 = stdin.readLineSync();
    if (nota1 != null && nota1.trim().isNotEmpty) {
      nota1.replaceAll(',', '.');
      try {
        n1 = double.parse(nota1);
        print('Nota convertida com sucesso $n1');
        break;
      } catch (e) {
        print('Digite uma nota valida! Erro:$e');
      }
    } else {
      print('Nota em branco. Informe a nota.');
    }
  }
  print('sai do while nota1');

  while (true) {
    stdout.write('Nota2: ');
    String? nota2 = stdin.readLineSync();
    if (nota2 != null && nota2.trim().isNotEmpty) {
      nota2.replaceAll(',', '.');
      try {
        n2 = double.parse(nota2);
        print('Nota convertida com sucesso $n2');
        break;
      } catch (e) {
        print('Digite uma nota valida! Erro:$e');
      }
    } else {
      print('Nota em branco. Informe a nota.');
    }
  }
  print('Sai do while 2');

  while (true) {
    stdout.write('Nota3: ');
    String? nota3 = stdin.readLineSync();
    if (nota3 != null && nota3.trim().isNotEmpty) {
      nota3.replaceAll(',', '.');
      try {
        n3 = double.parse(nota3);
        print('Nota convertida com sucesso $n3');
        break;
      } catch (e) {
        print('Digite uma nota valida! Erro:$e');
      }
    } else {
      print('Nota em branco. Informe a nota.');
    }
  }
  print('Sai do while 3');

  double media = (n1 + n2 + n3) / 3;
  print('A media é: $media');
}
