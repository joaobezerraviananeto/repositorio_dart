import 'dart:io';


void main() {
  double peso = lerNumero('Informe seu peso:');
  double altura = lerNumero('Informe sua altura:');

  double imc = peso / (altura * altura);
  print('Seu IMC é: ${imc.toStringAsFixed(2)}');

  print(classificarIMC(imc));
}

/// Função genérica para ler e validar números
double lerNumero(String mensagem) {
  while (true) {
    stdout.write(mensagem);
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.trim().isEmpty) {
      print('Entrada não informada!');
      continue;
    }

    entrada = entrada.replaceAll(',', '.');

    try {
      return double.parse(entrada);
    } catch (e) {
      print('Digite um número válido!');
    }
  }
}

/// Função para classificar o IMC
String classificarIMC(double imc) {
  if (imc < 18.5) {
    return 'Você está abaixo do peso ideal. Condição de desnutrição ou saúde fragilizada.';
  } else if (imc <= 24.9) {
    return 'Você está no peso ideal. Parabéns!';
  } else if (imc <= 29.9) {
    return 'Risco maior de doenças cardiovasculares. Sobrepeso.';
  } else if (imc <= 34.9) {
    return 'Obesidade grau I. Risco aumentado de doenças crônicas.';
  } else if (imc <= 39.9) {
    return 'Obesidade grau II. Risco muito alto de doenças crônicas.';
  } else {
    return 'Obesidade grau III. Risco extremamente alto de doenças crônicas.';
  }
}


/*import 'dart:io';

void main() {
  stdout.write('Informe seu peso: ');
  String? entradaPeso = stdin.readLineSync();

  if (entradaPeso == null || entradaPeso.isEmpty) {
    print('Peso não informado!!');
    return;
  }
  entradaPeso = entradaPeso.replaceAll(',', '.');

  double? peso;

  try {
    peso = double.parse(entradaPeso);
  } catch (e) {
    print('Digite um numero válido para o peso!');
    print('Erro: $e');
    return;
  }

  stdout.write('Informe sua altura: ');
  String? entradaAltura = stdin.readLineSync();
  if (entradaAltura == null || entradaAltura.isEmpty) {
    print('Altura nao informada!');
    return;
  }
  double? altura;
  try {
    altura = double.parse(entradaAltura);
  } catch (e) {
    print('Digite um numero válido para a altura!');
    print('Erro: $e');
    return;
  }
  double imc = peso / (altura * altura);
  stdout.write('Seu IMC é: $imc');

  if (imc < 18.5) {
    stdout.write(
      'Você está abaixo do peso ideal. Condição de desnutrição ou saúde fragilizada.',
    );
    return;
  }
  if (imc >= 18.5 && imc <= 24.9) {
    stdout.write('Você está no peso ideal. Parabéns!');
    return;
  }
  if (imc > 24.9 && imc <= 29.9) {
    stdout.write('Risco maior de doenças cardiovasculares. Sobrepeso.');
    return;
  }
  if (imc > 29.9 && imc <= 34.9) {
    stdout.write('Obesidade grau I. Risco aumentado de doenças crônicas.');
    return;
  }
  if (imc > 34.9 && imc <= 39.9) {
    stdout.write('Obesidade grau II. Risco muito alto de doenças crônicas.');
    return;
  } else {
    stdout.write(
      'Obesidade grau III. Risco extremamente alto de doenças crônicas.',
    );
    return;
  }
}
*/