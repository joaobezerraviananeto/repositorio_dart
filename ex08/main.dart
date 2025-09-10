import 'dart:io';

void main() {
  double n1 = lerNota('Primeira nota: ');
  double n2 = lerNota('Segunda nota: ');
  double n3 = lerNota('Terceira nota: ');

  double media = (n1 + n2 + n3) / 3;
  print('A média foi: $media');
  print('Você está ${resultadoMedia(media)}');
}

String resultadoMedia(double media) {
  String resultado;
  if (media >= 7) {
    resultado = 'Aprovado!';
  } else {
    resultado = 'Reprovado!';
  }
  return resultado;
}

double lerNota(String nomeNota) {
  for (int tentativa = 1; tentativa < 4; tentativa++) {
    stdout.write('Informe a $nomeNota');
    String? entrada = stdin.readLineSync();
    if (entrada != null && entrada.trim().isNotEmpty) {
      entrada = entrada.replaceAll(',', '.');
      try {
        double nota = double.parse(entrada);
        if (nota < 0 || nota > 10) {
          print("Você digitou $nota. Informe uma nota entre 0 e 10");
        } else {
          return nota;
        }
      } catch (e) {
        print('Informe apenas numeros! Erro: $e');
      }
    } else {
      print('$nomeNota em branco!');
    }
    print('Tentativa nº: $tentativa');
  }

  throw Exception('Número máximo de tentativas excedido pra $nomeNota');
}
