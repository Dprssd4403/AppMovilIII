// CREAR UN PROGRAMA QUE PIDA EL NUMERO MAXIMO Y EL MINIMO
// PARA CALCULAR LA SUMA DE LOS CUADRADOS DE LOS NUMEROS
// EN EL RANGO ESTABLECIDO
import 'dart:io';
import 'dart:math';

void main() {
  int numMax, numMin;
  double suma = 0;

  print("Ingresa el numero minimo");
  numMin = int.parse(stdin.readLineSync()!);

  print("Ingresa el numero maximo");
  numMax = int.parse(stdin.readLineSync()!);

  for (int i = numMin; i <= numMax; i++) {
    suma += pow(i, 2);
  }

  print("La suma de cuadrados es $suma");
}
