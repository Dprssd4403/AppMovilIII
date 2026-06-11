import 'dart:math';

void main() {
  double num = 0;

  for (int i = 1; i < 20; i++) {
    num = num + pow(i, 3);
  }

  print("La suma de los cubos son: $num");
}
