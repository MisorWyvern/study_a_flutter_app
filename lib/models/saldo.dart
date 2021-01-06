import 'package:flutter/material.dart';

class Saldo extends ChangeNotifier {
  double value;
  Saldo(
    this.value,
  );

  bool deposit(double value) {
    if (value < 0) return false;

    this.value += value;
    notifyListeners();
    return true;
  }

  bool withdrawal(double value) {
    if (value < 0 || value > this.value) return false;

    this.value -= value;
    notifyListeners();
    return true;
  }

  @override
  String toString() => 'R\$ ${value.toStringAsFixed(2)}';
}
