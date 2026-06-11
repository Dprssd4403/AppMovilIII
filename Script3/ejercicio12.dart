// CREAR UN PROGRAMA QUE CALCULE EL PROMEDIO DE NOTAS DE UN CURSO
// EL PROGRAMA DEBE INDICAR QUE ESTUDIANTE REPRUEBA, APRUEBA Y SUPLETORIO
//
import 'dart:io';

void main() {
  List<String> estudiantes = [];
  List<double> notas = [];
  int opcion;
  int cantidad = 3;

  do {
    opcion = menu();
    switch (opcion) {
      case 1:
        print("---------------------------------");

        for (int i = 0; i < cantidad; i++) {
          print("Ingresa el nombre del estudiante ${i + 1}");
          estudiantes.add(stdin.readLineSync()!);

          print("Ingresa la nota del estudiante ${i + 1}");
          notas.add(double.parse(stdin.readLineSync()!));
        }

        print("DATOS INGRESADOS EXITOSAMENTE");

      case 2:
        print("---------------------------------");
        print("El promedio de notas es: ${calculoPromedio(notas)}");
      case 3:
        informacion(estudiantes, notas);
    }
  } while (opcion != 0);
}

void informacion(List<String> nombres, List<double> notas) {
  print("-----------------------------");

  for (int i = 0; i < notas.length; i++) {
    if (notas[i] >= 7) {
      print("${nombres[i]} => Aprueba");
    } else if (notas[i] < 5) {
      print("${nombres[i]} => Reprueba");
    } else {
      print("${nombres[i]} => Supletorio");
    }
  }
}

double calculoPromedio(List<double> notas) {
  double suma = 0;
  double promedio;

  for (int i = 0; i < notas.length; i++) {
    // suma = suma + notas [i]
    suma += notas[i];
  }

  promedio = suma / notas.length;

  return promedio;
}

int menu() {
  int opcion;

  print("----------------------------------");
  print("1. Ingresar datos");
  print("2. Calcular promedio");
  print("3- Informacion");
  print("0. Salir");

  print("Ingrese una opcion");
  opcion = int.parse(stdin.readLineSync()!);
  return opcion;
}
