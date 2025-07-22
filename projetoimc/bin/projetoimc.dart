import 'dart:io';

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
