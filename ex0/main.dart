import "dart:io";

void main() {
  double n1 = validaNota('primeira nota: ');
  double n2 = validaNota('segunda nota: ');
  double n3 = validaNota('terceira nota: ');
  double media = (n1 + n2 + n3) / 3;
  print('Sua média é: $media');
}

double validaNota(String nomeNota) {
  for (int i = 0; i < 3; i++) {
    stdout.writeln('Infome a $nomeNota');
    String? entrada = stdin.readLineSync();
    if (entrada != null) {
      try {
        double nota = double.parse(entrada);
        return nota;
      } catch (e) {
        print('Informe apenas numeros');
      }
    } else {
      print('Informe apenas numeros! Você digitou $entrada');
      i++;
    }
  }
  throw Exception('Entrada invalida');
}
