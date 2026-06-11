import 'dart:io';
import 'dart:math';

void main(){
  double a,b,c;
  double x1 ,x2;

  print("Ingrese el valor de a");
  a = double.parse(stdin.readLineSync()!);
  
  print("Ingrese el valor de b");
  b = double.parse(stdin.readLineSync()!);

  print("Ingrese el valor de c");
  c = double.parse(stdin.readLineSync()!);
  
  x1 = (-b +(sqrt((pow(b,2) - (4*a*c))))/(2*a));
  x2 = (-b -(sqrt((pow(b,2) - (4*a*c))))/(2*a));

  print("El resultado de x1: $x1");

  print("El resultado de x2: $x2");

}