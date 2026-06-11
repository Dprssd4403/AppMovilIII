import 'dart:io';
import 'dart:math';

void main() {
  var azar = Random();
  double vidaHeroe = 50;
  double vidaDragon = 60;

  int opcion;
  String nombre;
  String clase;
  String genero;
  int pociones = 3;
  double defensa = 1;

  for (int turno = 1; turno <= 5; turno++) {
    defensa = 1;

    do {
      opcion = menu();
      switch (opcion) {
        case 1:
          print("********************************");
          print("Ingresa nombre de Jugador");
          nombre = stdin.readLineSync()!;

          print("Ingrese su clase");
          clase = stdin.readLineSync()!;

          print("Ingrese su genero");
          genero = stdin.readLineSync()!;

        case 2:
          switch (acciones()) {
            case 1:
              double danio = azar.nextInt(19 - 10 + 1) + 10;
              vidaDragon -= danio;
              print("Atacas al Dragon. El dragon recibe $danio puntos de daño");
            case 2:
              if (pociones > 0) {
                vidaHeroe += 15;
                print("Usas una pocion y te curas 15 HP. Tienes $pociones");
              } else {
                ("No te quedan pociones espera al proximo turno");
              }
            case 3:
              defensa = 2;
          }
        case 3:
      }
      print("----------------------------------");
      print("DRAGON HP ${vidaDragon}");
      print("HEROE HP ${vidaHeroe}");
      print("----------------------------------");
      vidaHeroe = vidaHeroe - (contraataque(azar) / defensa);

      if (vidaHeroe <= 0) {
        print("TERMINO EL JUEGO");
        print("PERDISTE");
        break;
      }

      if (vidaDragon <= 0) {
        print("TERMINO EL JUEGO");
        print("GANASTE");
        break;
      }

      if (vidaDragon >= 0 && vidaHeroe >= 0) {
        print("Ambos se encuentran debilitados y se retiran");
        print("EMPATE");
        break;
      }
    } while (opcion != 0);
  }
}

int menu() {
  int opcion;
  print("----------------------------------");
  print("1. Crear personaje nuevo");
  print("2. Iniciar Combate");
  print("3- Informacion");
  print("0. Salir");

  print("Ingrese una opcion");
  opcion = int.parse(stdin.readLineSync()!);
  return opcion;
}

int acciones() {
  int opcion;
  print("-----------------------------");
  print("1. Atacar");
  print("2. Defender");
  print("3. Curar");

  print("¿Que quieres hacer?");
  opcion = int.parse(stdin.readLineSync()!);
  return opcion;
}

double contraataque(Random azar) {
  double danio = azar.nextInt(19 - 5 + 1) + 5;
  return danio;
}
