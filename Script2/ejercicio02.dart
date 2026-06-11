import 'dart:io';

void main() {
  int opcion, edad = 0;
  String profesion = "";
  double salario;

  do {
    print("------------------------------");
    print("1. Ingresar información");
    print("2. Calcular Salario");
    print("99. Salir");

    print("Ingresa una opción => ");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("------------------------------");
        print("-----Ingresar informacion-----");
        print("Ingresa profesion");
        profesion = stdin.readLineSync()!;
        print("Ingresa la edad");
        edad = int.parse(stdin.readLineSync()!);

      case 2:
        print("------------------------------");
        print("------Calculo de salario------");
        if (edad < 25) {
          salario = 1000;
        } else if (edad > 40) {
          salario = 2000;
        } else {
          salario = 1500;
        }

        if (profesion == 'doctor') {
          salario += 500;
        } else if (profesion == 'ingeniero') {
          salario += 300;
        }
        
        print("El salario es $salario");

      default:
        print("------------------------------");
        print("SELECCIONA UNA OPCION DEL MENU");
    }
  } while (opcion != 99);
}
