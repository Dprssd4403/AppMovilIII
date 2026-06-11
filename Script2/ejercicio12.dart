// CREAR UN PROGRAMA QUE CALCULE EL VALOR DE PI

import 'dart:io';
import 'dart:math';

void main() {
  int limite;
  double pi = 0;

  print("Ingrese el limite");
  limite = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < limite; i++) {
    pi = pi + ((pow(-1, i) / (2 * i + 1)));
  }
  print("π es = ${pi * 4}");
}
