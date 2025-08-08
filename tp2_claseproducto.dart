class Producto {
  String nombre;
  double precio;

  Producto(this.nombre, this.precio);

  double aplicarDescuento(double porcentaje) {
    double descuento = precio * (porcentaje / 100);
    return precio - descuento;
  }
}

void main() {
  Producto prod = Producto('Zapatillas', 2000.0);
  print('Precio original de ${prod.nombre}: \$${prod.precio}');
  double precioConDescuento = prod.aplicarDescuento(20);
  print('Precio con 20% de descuento: \$${precioConDescuento}');
}