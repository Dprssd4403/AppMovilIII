import 'dart:ffi';
import 'dart:io';
import 'dart:math';
// var randon (max-min+1) + min
 
void main() {
  var azar = Random();
  double vidaHeroe = 50;
  double vidaDragon = 60;
  double defensa = 1;
 
  for (int turno = 1; turno <= 5; turno++) {
    defensa = 1;
 
    switch (acciones()) {
      case 1:
        vidaDragon -= azar.nextInt(19 - 10 + 1) + 10;
 
      case 2:
        vidaHeroe += 15;
 
      case 3:
        defensa = 2;
    }
 
    ///BATALLA
    vidaHeroe = vidaHeroe - (contrataque(azar) / defensa);
 
    if (vidaHeroe <= 0) {
      print("Juego finalizado 🥀🪦⚰️");
      print("PERDISTE 🥀🪦⚰️");
      break;
    }
 
    if (vidaDragon <= 0) {
      print("Juego finalizado 💥💥💥");
      print("✨✨✨ GANASTE ✨✨✨");
      break;
    }
 
    print("📜📜📜📜📜📜📜📜📜📜📜📜📜📜📜📜");
    print("🐉 DRAGON HP ${vidaDragon}");
    print("🧙🏼 HÉROE HP ${vidaHeroe}");
    print("📜📜📜📜📜📜📜📜📜📜📜📜📜📜📜📜");
    print("\n\n");
  }
 
  if (vidaDragon >= 0 && vidaHeroe >= 0) {
    print("🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶");
    print("LA BATALLA TERMINÓ EL DRAGON SE RETIRA HERIDO");
    print("EL HÉRO SE RETIRA SANAR SUS HERIDAS PARA LA REVANCHA");
    print("🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶🪶");
  }
}
 
double contrataque(Random azar) {
  double danio = azar.nextInt(19 - 5 + 1) + 5;
  return danio;
}
 
int acciones() {
  print("🐉⁓⁓⁓⁓⁓⁓⁓⁓⁓⁓⁓⁓⁓⁓⁓⁓⁓⁓⁓⁓🐉");
  print("1. Atacar  🏹");
  print("2. Curar 🧪");
  print("3. Defender 🛡");
 
  print("Que quieres hacer");
 
  int opcion = int.parse(stdin.readLineSync()!);
  print("🏰⁓⁓⁓⁓⁓⁓⁓⁓⁓⁓⁓⁓⁓⁓⁓⁓⁓⁓⁓⁓🏰");
  return opcion;
}
 