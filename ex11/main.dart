//projeto imc
import 'dart:io';
void main() {
  double peso = validaEntrada('seu peso: ');
  double altura = validaEntrada('sua altura: ');
  double imc = peso / (altura * altura);
  String resultado = condicao(imc);
  print('Seu IMC é: ${imc.toStringAsFixed(2)}');
  print('Situação: $resultado');
}

double validaEntrada(String medidaString) {
  for (int tentativa = 0; tentativa < 3; tentativa++) {
    stdout.writeln('Informe $medidaString ');
    String? entrada = stdin.readLineSync();
    if (entrada != null && entrada.trim().isNotEmpty) {
      entrada = entrada.replaceAll(',', '.');
      try {
        double medidaConvertida = double.parse(entrada);
        if (medidaConvertida > 0 && medidaConvertida < 500) {
          return medidaConvertida;
        } else {
          print('Informe uma medida maior que 0 e menor que 500');
        }
      } catch (e) {
        print('Informe apenas numeros!');
      }
    } else {
      print('Medida em branco ou vazia');
    }
  }
  throw Exception(
    'Numero máximo de tentativas excedido. Encerrando o programa...',
  );
}

String condicao(double imc) {
  if (imc < 16.0) {
    return 'Baixo peso grau III';
  }
  if (imc >= 16.0 && imc <= 16.9) {
    return 'Baixo peso grau II';
  }
  if (imc >= 17.0 && imc <= 18.4) {
    return 'Baixo peso grau I';
  }
  if (imc >= 18.5 && imc <= 24.9) {
    return 'Peso normal';
  }
  if (imc >= 25.0 && imc <= 29.9) {
    return 'Sobrepeso';
  }
  if (imc >= 30.0 && imc <= 34.9) {
    return 'Obesidade grau I';
  }
  if (imc >= 35.0 && imc <= 39.9) {
    return 'Obesidade grau II';
  }
  if (imc >= 40.0) {
    return 'Obesidade grau III (mórbida)';
  } else {
    throw Exception('Erro');
  }
}
