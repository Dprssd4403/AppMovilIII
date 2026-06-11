import 'dart:io';

void main() {
  int edad = 0;
  String profesion = "";
  double salario;

  int opcion;

  do {
    print("1. Ingresar informacion");
    print("2. Calcular salario");
    print("0. Salir");

    print("Ingresa una opción => ");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("------------------------------");
        print("-----Ingresar informacion-----");

        print("Ingrese su edad");
        edad = int.parse(stdin.readLineSync()!);

        print("Ingrese su profesion");
        profesion = stdin.readLineSync()!;

      case 2:
        print("------------------------------");
        print("------Calculo de salario------");

        if (edad < 30) {
          salario = 1200;
        }else if(edad > 50){
          salario = 2200;
        } else {
          salario = 1800;
        }

        if(profesion == "medico"){
          salario *= 1.10;
        } else if(profesion == "abogado"){
          salario *= 1.05;
        } 

        print("Su salario es: $salario");
    }
  } while (opcion != 0);
}
