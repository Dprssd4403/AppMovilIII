// CREAR UN PROGRAMA QUE PIDA LA EDAD Y GENERO
// EL PROGRAMA DEBE CALCULAR EL DESCUENTO A UN MUSEO
// SI ES MENOR DE 10 AÑOS ENTRA GRATIS
// SI TIENE ENTRE 10 Y 18 AÑOS PAGA LA MITAD
// SI TIENE MAS DE 65 AÑOS PAGA EL 70% DEL BOLETO
// SI ES DE GENERO FEMENINO TIENE UN DESCUENTO DEL 10%
// EL VALOR DEL BOLETO ES DE $45

import 'dart:io';

void main() {
  int edad = 0;
  String genero = "";
  double boleto = 45;
  int opcion;

  do {
    opcion = menu();
    switch (opcion){
      case 1:
      print("********************************");
      print("Ingresa la edad");
      edad = int.parse(stdin.readLineSync()!);
      
      print("Ingrese el genero");
      genero = stdin.readLineSync()!;

      case 2:
      calcular(edad, genero, boleto);
    }
    print("---------------------------------");
  } while (opcion != 0);
}

//FUNCION CALCULAR BOLETO
void calcular (int edad, String genero, double boleto){
  if (edad < 10){
    boleto = 0;
  } else if (edad >= 10 && edad < 18){
    boleto = boleto / 2;
  } else if (edad >= 65){
    boleto = boleto * 0.70;
  }

  if(genero.toLowerCase() == 'f'){
    boleto = boleto * 0.90;
  }

  print("********************************");
  print("El valor del boleto es $boleto");
}

//FUNCIÓN MENÚ
int menu() {
  print("---------------------------------");
  print("1. Ingresar datos");
  print("2. Calcular valor");
  print("0. Salir");

  print("Elije una opcion");

  int opcion = int.parse(stdin.readLineSync()!);

  return opcion;
}


