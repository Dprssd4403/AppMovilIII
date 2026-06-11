// ignore_for_file: public_member_api_docs, sort_constructors_first
class Producto {
  String nombre;
  double precio;
  int cantidad;


  List<Producto> productos = [];

  Producto(this.nombre, this.precio, this.cantidad);

  String get getNombre => this.nombre;
  set setNombre(String nombre) => this.nombre = nombre;

  get getPrecio => this.precio;
  set setPrecio(precio) => this.precio = precio;

  get getCantidad => this.cantidad;
  set setCantidad(cantidad) => this.cantidad = cantidad;


  //Metodo Imprimir
  void imprimirProducto() {
    print("*************************************");
    print("## Nombre: $nombre");
    print("## Precio: $precio");
    print("## Stock: $cantidad");
  }
  
  //METODO CALCULAR TOTAL DE PRODUCTOS
  double precioProducto(){
    return precio*cantidad;
  }

  //METODO ACTUALIZAR CANTIDAD
  void actualizarCantidad(String elemento, int  nuevaCantidad){
    if( elemento == nombre  ){
      setCantidad = nuevaCantidad;
    }
  }
}
