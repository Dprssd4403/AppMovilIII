import 'dart:io';

import 'Mascota.dart';

void main() {
  List<Mascota> mascotas = [];
  int opcion;

  String nombre, especie, duenio;
  int edad;

  String buscar;

  do {
    opcion = menu();

    switch (opcion) {
      case 1:
        print("----------------------------------");
        print("Ingresa el nombre de la mascota");
        nombre = stdin.readLineSync()!;

        print("Ingresa la edad");
        edad = int.parse(stdin.readLineSync()!);

        print("Ingresa la especie");
        especie = stdin.readLineSync()!;

        print("Ingresa el nombre del dueño");
        duenio = stdin.readLineSync()!;

        //AGREGAR MASCOTA A LA LISTA DE MASCOTAS
        mascotas.add(Mascota(nombre, edad, especie, duenio));
        print("Mascota agregado con exito");

      case 2:
        for (var mascota in mascotas){
          mascota.imprimirMascota();
        }

      case 3:
        print("------------------------------------");
        print("Ingresa la especie a buscar");
        buscar = stdin.readLineSync()!;

        mascotas.forEach((mascota)=> mascota.imprimirEspecie(buscar));

    }
  } while (opcion != 0);
}

int menu() {
  print("------------------------------");
  print("1. Ingresar mascota");
  print("2. Ver lista de mascotas");
  print("3. Filtar por especie");
  print("0. Salir");

  print("Ingresa una opcion");

  return int.parse(stdin.readLineSync()!);
}
