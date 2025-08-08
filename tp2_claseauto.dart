import 'dart:async';

class Auto {
  String marca;
  String modelo;
  int velocidad = 0;

  Auto(this.marca, this.modelo);

  void acelerar(int incremento) {
    if (incremento > 0) {
      velocidad += incremento;
      print('El auto aceleró a $velocidad km/h');
    }
  }

  void frenar(int decremento) {
    if (decremento > 0) {
      velocidad -= decremento;
      if (velocidad < 0) velocidad = 0;
      print('El auto frenó a $velocidad km/h');
    }
  }
}

Future<void> main() async {
  Auto miAuto = Auto('Toyota', 'Corolla');
  print('Auto: ${miAuto.marca} ${miAuto.modelo}');

  // Simular aceleración progresiva
  for (var inc in [10, 15, 20]) {
    await Future.delayed(Duration(seconds: 1));
    miAuto.acelerar(inc);
  }

  // Simular frenado progresivo
  for (var dec in [5, 15, 25]) {
    await Future.delayed(Duration(seconds: 1));
    miAuto.frenar(dec);
  }
}