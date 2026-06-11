/*Crea un programa que determine si un número dado 
es primo o no. 
El programa
solicitará al usuario ingresar un número y luego 
imprimirá un mensaje indicando si el
número es primo o no. Un número primo es aquel 
que es divisible solo por 1 y por sí
mismo.*/

import 'dart:io';
import 'dart:math';

void main() {
  int num;
  bool bandera = false;

  print("Ingrese un numero");
  num = int.parse(stdin.readLineSync()!);

  for (int i = 2; i < num; i++) {
    if (num % i == 0) {
      bandera = true;
      break;
    } 
  }

  if(bandera == false){
    print("El numero es primo");
  } else{
    print ("El numero no es primo");
  }
}
