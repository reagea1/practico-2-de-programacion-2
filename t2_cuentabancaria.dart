import 'dart:io';

class CuentaBancaria {
  String titular;
  double saldo;

  CuentaBancaria(this.titular, this.saldo);

  void depositar(double monto) {
    if (monto > 0) {
      saldo += monto;
      print('Depósito exitoso de \$${monto.toStringAsFixed(2)}');
    } else {
      print('El monto a depositar debe ser mayor que cero.');
    }
  }

  void retirar(double monto) {
    if (monto > 0 && monto <= saldo) {
      saldo -= monto;
      print('Retiro exitoso de \$${monto.toStringAsFixed(2)}');
    } else {
      print('Fondos insuficientes o monto inválido.');
    }
  }

  void mostrarSaldo() {
    print('El saldo actual de $titular es: \$${saldo.toStringAsFixed(2)}');
  }
}

void main() {
  CuentaBancaria cuenta = CuentaBancaria('Juan', 1000.0);

  cuenta.mostrarSaldo();

  print('Ingrese el monto a depositar:');
  double? deposito = double.tryParse(stdin.readLineSync() ?? '');
  if (deposito != null) {
    cuenta.depositar(deposito);
  }

  cuenta.mostrarSaldo();

  print('Ingrese el monto a retirar:');
  double? retiro = double.tryParse(stdin.readLineSync() ?? '');
  if (retiro != null) {
    cuenta.retirar(retiro);
  }

  cuenta.mostrarSaldo();
}