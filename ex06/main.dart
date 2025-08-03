import 'dart:io';
void main() {
  double n1 = 0, n2 = 0, n3 = 0;
   print('A media é: ${validaNota(n1, n2, n3)}');
}

double validaNota(double n1, n2, n3) {
   while (true) {
    stdout.write('Informe a primeira nota: ');
    String? nota1 = stdin.readLineSync();

    if (nota1 != null && nota1.trim().isNotEmpty) {
      nota1 = nota1.replaceAll(',', '.');
      print('nota1 $nota1');

      try {
        n1 = double.parse(nota1);
        if (n1 < 0 || n1 > 10) {
          print('Voce digitou: $n1 informe uma nota entre 1 e 10');
        } else {
          print('Nao entrei no if 1 a 10.');
          break;
        }
      } catch (e) {
        print('Informe apenas numeros!');
      }
    } else {
      print('Nota em branco');
    }
  }
  while (true) {
    stdout.write('Informe a segunda nota: ');
    String? nota2 = stdin.readLineSync();

    if (nota2 != null && nota2.trim().isNotEmpty) {
      nota2 = nota2.replaceAll(',', '.');
      print('nota2 $nota2');

      try {
        n2 = double.parse(nota2);
        if (n2 < 0 || n2 > 10) {
          print('Voce digitou: $n2 informe uma nota entre 1 e 10');
        } else {
          print('Nao entrei no if 1 a 10.');
          break;
        }
      } catch (e) {
        print('Informe apenas numeros!');
      }
    } else {
      print('Nota em branco');
    }
  }

  while (true) {
    stdout.write('Informe a terceira nota: ');
    String? nota3 = stdin.readLineSync();

    if (nota3 != null && nota3.trim().isNotEmpty) {
      nota3 = nota3.replaceAll(',', '.');
      print('nota3 $nota3');

      try {
        n3 = double.parse(nota3);
        if (n3 < 0 || n3 > 10) {
          print('Voce digitou: $n3 informe uma nota entre 1 e 10');
        } else {
          print('Nao entrei no if 1 a 10.');
          break;
        }
      } catch (e) {
        print('Informe apenas numeros!');
      }
    } else {
      print('Nota em branco');
    }
  }
  return (n1 + n2 + n3) / 3;
}
