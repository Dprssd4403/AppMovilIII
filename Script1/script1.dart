import 'dart:io';

void main(){
  int edad = 22;
  String nombre = "Christopher";
  double salario = 450.56;
  
  print("La edad de "+ nombre + " es "+ edad.toString());
  print("La edad de $nombre es $edad");
  print("El salario es ${salario*1.10}");

  print("Ingresa un nuevo nombre");
  nombre = stdin.readLineSync()!;

  print("Ingresa una edad");
  edad =int.parse(stdin.readLineSync()!); 

  print("El nuevo nombre es $nombre y la edad es $edad");
  }