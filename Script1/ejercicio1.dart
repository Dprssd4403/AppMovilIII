import 'dart:io';

void main(){
  double celcius;
  double F;

  print("Ingresar grados °C");
  celcius = double.parse(stdin.readLineSync()!);

  F = (celcius *1.8) + 32;
  
  print("La temperatura farenheit es: $F");

}