class Animal {
  String especie;
  String nombre;

  Animal(this.especie, this.nombre);

  void hacerSonido() {
    print('$especie $nombre: ¡Hace ruido!');
  }
}

void main() {
  Animal perro = Animal('Perro', 'Firulais');
  Animal gato = Animal('Gato', 'Misu');
  Animal pajaro = Animal('Pájaro', 'Piolín');

  perro.hacerSonido();
  gato.hacerSonido();
  pajaro.hacerSonido();
}