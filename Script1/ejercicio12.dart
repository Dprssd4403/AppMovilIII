import 'dart:io';

void main() {
  int edad;
  int experiencia;

  print("Ingrese su edad");
  edad = int.parse(stdin.readLineSync()!);

  print("Ingrese la cantidad de años de experiencia laboral");
  experiencia = int.parse(stdin.readLineSync()!);

  if (edad >= 25 && edad <= 35 && experiencia >= 3) {
    print("El aspirante puede ser seleccionado рага una entrevista");
  } else {
    print(
      "Lo siento, el aspirante no cumple con los requisitos para la entrevista",
    );
  }
}
