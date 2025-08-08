class Rectangulo {
  double alto;
  double ancho;

  Rectangulo(this.alto, this.ancho);

  double area() {
    return alto * ancho;
  }
}

void main() {
  Rectangulo rect = Rectangulo(10, 5);
  print('El área del rectángulo es: ${rect.area()}');
}