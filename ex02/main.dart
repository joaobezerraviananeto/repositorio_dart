import 'dart:io';

void main() {
  stdout.write('nota1');
  String? n1 = stdin.readLineSync();
  if(n1!=null){
    double n1 = double.parse(n1);
  }
  
}
