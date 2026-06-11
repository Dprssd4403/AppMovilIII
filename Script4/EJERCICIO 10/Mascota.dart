// ignore_for_file: public_member_api_docs, sort_constructors_first
class Mascota {
  String nombre;
  int edad;
  String especie;
  String duenio;

  Mascota(this.nombre, this.edad, this.especie, this.duenio);

  get getNombre => this.nombre;
  set setNombre(nombre) => this.nombre = nombre;

  get getEdad => this.edad;
  set setEdad(edad) => this.edad = edad;

  get getEspecie => this.especie;
  set setEspecie(especie) => this.especie = especie;

  get getDuenio => this.duenio;
  set setDuenio(duenio) => this.duenio = duenio;

  //METODO IMPRIMIR
  void imprimirMascota() {
    print("----------------------------------------");
    print("## Nombre: $nombre");
    print("## Edad: $edad");
    print("## Especie: $especie");
    print("## Dueño: $duenio");
    print("----------------------------------------");
  }

  //METODO IMPRIMIR ESPECIE
  void imprimirEspecie(String familia) {
    if (familia.toLowerCase() == especie) {
      imprimirMascota();
    }
  }
}
