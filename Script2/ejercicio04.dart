void main() {
  int suma = 0;

  for (int i = 1; i <= 100; i++) {
    //IMPAR
    if (i % 2 != 0) {
      suma = suma + i;
    }
  }
  print("La suma es $suma");
}
