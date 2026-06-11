// CREAR UN PROGRAMA QUE PIDA AL USUARIO UN NUMERO
// EL PROGRAMA DEBE IMPRIMIR LA SERIE FIBONACCI 
// CON LA CANTIDAD DE DIGITOS INGRESADO POR EL USUARIO

import 'dart:io';

void main (){

  int num;
  int ultimo=1, penultimo=0;
  int fibo = 0;

  print("Ingrese el limite");
  num = int.parse(stdin.readLineSync()!);
  print("-----------------------");

  for(int i = 0; i < num; i++){
    fibo = penultimo + ultimo;
    penultimo = ultimo;
    ultimo = fibo;
    print("$fibo");
  }  

  print("Resultado final: $fibo");
}