import 'dart:io';

void main(){
 int edad;
 double precio; 

  print("Ingrese su edad");
  edad = int.parse(stdin.readLineSync()!);

  print("Ingrese el precio del producto");
  precio = double.parse(stdin.readLineSync()!);

  if(edad > 60 || edad < 18 && precio > 100){
    print("La persona es elegible para un descuento del 10%");
    precio = precio * 1.10;
    print("Precio Final: $precio");
  } else {
    print("Lo siento, la persona no es elegible para el descuento");
  }

}