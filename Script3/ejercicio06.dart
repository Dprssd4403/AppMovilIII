import 'dart:io';

void main() {
  List empleados = [
    {
      "nombre": "Juan Paz",
      "cargo": "Contador",
      "salario": 450,
      "departamento": "finanzas",
    },
    {
      "nombre": "Ana Guerra",
      "cargo": "Programador",
      "salario": 150,
      "departamento": "TI",
    },
  ];
  int opcion;

  do {
    opcion = menu();
    switch (opcion) {
      case 1:
        print("--------------------------------------");
        print("Ingresar nombre del empleado");
        print("Ingresar cargo");
        print("Ingresar salario");
        print("Ingresar departamento");

      case 2:
        identificar(empleados, "TI");

      case 3:
        imprimir(empleados);
    }
  } while (opcion != 0);
}

void imprimir(List empleados) {
  for (var empleado in empleados) {
    print("--------------------------------------");
    print("Nombre: ${empleado['nombre']}");
    print("Cargo: ${empleado['cargo']}");
    print("Salario: ${empleado['salario']}");
    print("Departamento: ${empleado['departamento']}");
    print("--------------------------------------");
  }
}

void identificar(List empleados, String departamento) {
  for (var empleado in empleados) {
    if (departamento == empleado['departamento'] && empleado['salario'] < 600) {
      print("Nombre: ${empleado['nombre']}");
      print("Cargo: ${empleado['cargo']}");
      print("Salario: ${empleado['salario']}");
      print("Departamento: ${empleado['departamento']}");
    }
  }
}

int menu() {
  print("-----------------------------------------");
  print("1. Ingresar nuevo empleado");
  print("2. Identificar empleados");
  print("3. Implimir lista de empleados");
  print("0. Salir");

  return int.parse(stdin.readLineSync()!);
}
