import 'dart:io';
void main() {
  double n1 = lerNota('primeira nota');
  double n2 = lerNota('segunda nota');
  double n3 = lerNota('terceira nota');

  double media = (n1 + n2 + n3) / 3;
  print('Média: $media');
}




double lerNota(String nomeNota) {
  while (true) {
    stdout.write('Informe a $nomeNota: ');
    String? entrada = stdin.readLineSync();

    if (entrada != null && entrada.trim().isNotEmpty) {
      entrada = entrada.replaceAll(',', '.');

      try {
        double nota = double.parse(entrada);
        if (nota < 0 || nota > 10) {
          print('Você digitou: $nota. Informe uma nota entre 0 e 10.');
        } else {
          return nota;
        }
      } catch (e) {
        print('Informe apenas números!');
      }
    } else {
      print('Nota em branco');
    }
  }
}
