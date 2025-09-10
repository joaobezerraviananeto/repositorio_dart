import 'dart:io';

void main() {
  double n1 = validaNota('Primeira nota');
  double n2 = validaNota('Segunda nota');
  double n3 = validaNota('Terceira nota');
  double media = (n1 + n2 + n3) / 3;
  print('A media foi $media');
}

double validaNota(String nomeNota) {
  stdout.write('Informe a $nomeNota');
  String? entrada = stdin.readLineSync()!;
  double nota = double.parse(entrada);
  return nota;
}
