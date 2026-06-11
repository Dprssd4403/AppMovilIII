import 'dart:io';

void main (){
  int anio;
  
  print("Ingresar un año");
  anio = int.parse(stdin.readLineSync()!);

  if( ( anio%4 == 0 && anio%100 != 0) || anio%400 == 0){
    print("Es año bisciesto");
  }
  else{
    print("No es bisciesto");
  }
}