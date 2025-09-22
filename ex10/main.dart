import 'dart:io';

void main() {
  double n1 = validaNota('Primeira nota: ');
  double n2 = validaNota('Segunda nota: ');
  double n3 = validaNota('Terceira nota: ');
  //double media = (n1 + n2 + n3) / 3;
  //print(media);

  print('A media foi ${((n1 + n2 + n3) / 3).toStringAsFixed(2)}');
}

double validaNota(String nomeNota) {
  for (int tentativa = 0; tentativa < 3; tentativa++) {
    stdout.write('Informe a $nomeNota');
    String? entrada = stdin.readLineSync();
    if (entrada != null && entrada.trim().isNotEmpty) {
      entrada = entrada.replaceAll(',', '.');
      try {
        double nota = double.parse(entrada);
        if (nota >= 0 && nota <= 10) {
          print('Nota $nota retornada com sucesso!');
          return nota;
        } else {
          print('Informe uma nota entre 0 e 10');
        }
      } catch (e) {
        print('Informe apenas numeros! Você digitou: $e');
      }
    } else {
      print('Nota nula ou vazia!');
    }
  }
  //pare o fluxo normal e sinalize um erro
  throw Exception(
    "Numero máximo de tentativas exedido! Encerrando o programa...",
  );
}
