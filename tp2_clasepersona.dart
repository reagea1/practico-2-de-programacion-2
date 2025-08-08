class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void saludar() {
    print('Hola, soy $nombre y tengo $edad años.');
  }
}

void main() {
  Persona persona1 = Persona('Ana', 25);
  persona1.saludar();
}
