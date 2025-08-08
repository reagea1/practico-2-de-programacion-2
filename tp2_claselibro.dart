class Libro {
  String titulo;
  String autor;
  int aniodepublicacion;

  Libro(this.titulo, this.autor, this.aniodepublicacion);

  void describir() {
    print('Título: $titulo');
    print('Autor: $autor');
    print('Año de publicación: $aniodepublicacion');
    print('---');
  }
}

void main() {
  Libro libro1 = Libro('Cien años de soledad', 'Gabriel García Márquez', 1967);
  Libro libro2 = Libro('El principito', 'Antoine de Saint-Exupéry', 1943);

  libro1.describir();
  libro2.describir();
}