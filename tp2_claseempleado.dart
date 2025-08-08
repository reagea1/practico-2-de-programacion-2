class Empleado {
  String nombre;
  double sueldoBase;

  Empleado(this.nombre, this.sueldoBase);

  double calcularSueldoConBono(double bono) {
    return sueldoBase + bono;
  }
}

void main() {
  Empleado empleado = Empleado('Laura', 3000.0);
  print('Sueldo base de ${empleado.nombre}: \$${empleado.sueldoBase}');
  double sueldoFinal = empleado.calcularSueldoConBono(500.0);
  print('El sueldo final de ${empleado.nombre} con bono es: \$${sueldoFinal}');
}