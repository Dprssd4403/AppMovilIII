//CREAR UN PROGRAMA QUE PERMITA EL INGRESO DE MASCOTAS EN UNA VETERINARIA
//EL PROGRAMA DEBE PERMITIR INGRESAR NOMBRE EDAD ESPECIE DE LA MASCOTA
//EL PROGRAMA DEBE PERMITIR IMPRIMIR LA LISTA DE MASCOTAS
//EL PROGRAMA DEBE PERMITIR IMPRIMIR POR ESPECIE

import 'dart:io';
import 'Mascota.dart';

void main() {
  Mascota mascota = Mascota("Michi", 3, "gato", "Ana");
  Mascota mascota2;

  String nombre, especie, duenio;
  int edad;

  print("Ingresa el nombre de la mascota");
  nombre = stdin.readLineSync()!;

  print("Ingresa la edad");
  edad = int.parse(stdin.readLineSync()!);

  print("Ingresa la especie");
  especie = stdin.readLineSync()!;

  print("Ingresa el nombre del dueño");
  duenio = stdin.readLineSync()!;

  mascota2 = Mascota(nombre, edad, especie, duenio);

  mascota.imprimirMascota();
  mascota2.imprimirMascota();

  // IMPRIMIR POR ESPECIE

  mascota2.imprimirEspecie("perro");
}
