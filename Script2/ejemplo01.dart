void main() {
  List edades = [23, 33, 19, 40];
  List nombres = ["Juan", "Ana", "Roy", "Carla"];

  for (int i = 0; i < edades.length; i++) {
    print(edades[i]);
  }

  print("----------");

  for (var element in nombres) {
    print(element);
  }

  print("----------");

  nombres.forEach((item) => print(item));
  
}
