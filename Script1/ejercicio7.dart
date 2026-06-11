import 'dart:io';

void main(){
  String nombre;
  int edad;
  double salario;

  print("Ingrese nombre:");
  nombre = stdin.readLineSync()!;

  print("Ingrese edad:");
  edad = int.parse(stdin.readLineSync()!);

  print("Ingrese salario:");
  salario = double.parse(stdin.readLineSync()!);


  if(edad > 30 && salario > 3000){
    print("$nombre con $edad con $salario de salario");
    print("Su salario incremento un 10%: ${salario*1.10}");
  } else {
    print("$nombre con $edad con $salario de salario");
  }
}