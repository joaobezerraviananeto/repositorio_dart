import 'dart:io';

void main() {
  /*
  ✅ O que significa void em void main()?
      Em Dart (e em muitas outras linguagens como C, Java, C#), a palavra-chave **void** significa que a função não retorna nenhum valor.
      Se você omitir o tipo de retorno, o Dart assume automaticamente dynamic (ou seja, pode ser qualquer coisa), mas isso não é uma boa prática. Sempre declare o tipo ou use void se a função não retorna nada.
   */
  stdout.writeln('Informe o nome do aluno:');
  String? nome = stdin.readLineSync();
  /*
  String? nome = stdin.readLineSync(); o ? significa que a variável pode ser nula. 
  // A função stdin.readLineSync() retorna String? (ou seja, pode retornar null se o usuário apertar Enter sem digitar nada, ou se ocorrer um erro).
  //String nome = stdin.readLineSync()!; Aqui, o ! é chamado de "null assertion operator" — você está forçando o Dart a acreditar que o valor não é nulo.
  Isso remove o null da equação, dizendo: “confia, nunca será nulo”.
  Se for null mesmo assim, o programa vai crashar (lançar exceção NullThrownError).
  */
  stdout.writeln('Informe a primeira nota:');
  double n1 = double.parse(stdin.readLineSync()!);

  stdout.write('Informe a segunda nota:');
  double n2 = double.parse(stdin.readLineSync()!);
  /*
    stdin.readLineSync() retorna um **String?** (ou seja, pode ser null)
    A função double.parse(...) espera receber um String não nulo
    Logo, o Dart reclama: "Não posso passar String? onde se espera um String"
    Com o !, você está dizendo ao Dart:
    "Pode confiar, isso nunca será null."
    Mas ⚠️ se for null, o programa vai crashar com erro.
    */
  stdout.writeln('Informe a terceira nota:');
  double n3 = double.parse(stdin.readLineSync()!);
  
  stdout.writeln(
    'O Aluno $nome Obteve a media: ${funcaoCalculaNota(n1, n2, n3)}',
    /*
    Você precisa usar chaves {} dentro da interpolação de strings no Dart quando está chamando uma função ou expressão mais complexa, e não apenas acessando uma variável simples.
    */
  );
}

double funcaoCalculaNota(double n1, double n2, double n3) {
  return (n1 + n2 + n3) / 3;
}
