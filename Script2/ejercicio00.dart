//CREAR UN PROGRAMA QUE PIDA AL USUARIO DOS NUMEROS
// EL PRIMER NUMERO CORRESPONDE A LA TABLA DE MULTIPLICAR
// EL SIGUIENTE NUMERO CORRESPONDE AL LIMITE DE LA TABLA DE MULTIPLICAR

import 'dart:io';

void main(){

  int num1, num2;

  print("Ingrese el primer numero");
  num1 = int.parse(stdin.readLineSync()!);

  print("Ingrese el segundo numero");
  num2 = int.parse(stdin.readLineSync()!);

  for(int i = 1; i <= num2; i++){
    print("$num1 x $i = ${num1*i}"); 
  }
}