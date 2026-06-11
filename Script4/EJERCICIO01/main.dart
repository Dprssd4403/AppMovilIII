import 'dart:io';

import 'Producto.dart';

void main() {
  String nombre;
  double precio;
  int cantidad;

  List<Producto> productos = [];
  double suma;
  int opcion;
  String buscar;
  int nuevaCantidad;

  do {
    opcion = menu();
    switch (opcion) {
      case 1:
        print("--------------------------------------");
        print("Ingresa  el nombre del producto");
        nombre = stdin.readLineSync()!;

        print("Ingresa el precio");
        precio = double.parse(stdin.readLineSync()!);

        print("Ingresa el Stock");
        cantidad = int.parse(stdin.readLineSync()!);

        productos.add(Producto(nombre, precio, cantidad));

      case 2:
        print("--------------------------------------");
        print("Ingresa producto a actualizar");
        buscar = stdin.readLineSync()!;

        print("Ingresa la nueva cantidad");
        nuevaCantidad = int.parse(stdin.readLineSync()!);

        productos.forEach(
          (item) => item.actualizarCantidad(buscar, nuevaCantidad),
        );

      case 3:
        suma = 0;
        for (var producto in productos) {
          suma = suma + producto.precioProducto();
        }
        print("--------------------------------------");
        print("El precio total del inventario es: $suma");
        print("--------------------------------------");

      case 4:
        print("--------------------------------------");
        for (var producto in productos) {
          producto.imprimirProducto();
        }
    }
  } while (opcion != 0);
}

int menu() {
  print("--------------------------------------");
  print("1. Agregar productos al inventario");
  print("2. Actualizar Stock");
  print("3. Calcular el valor total del inventario");
  print("4. Mostrar lista de productos");

  print("0. Salir");

  print("Ingresa una opcion");

  return int.parse(stdin.readLineSync()!);
}
