import 'package:flutter/material.dart';

class Transferencia {
  final int accountNumber;
  final double value;
  final IconData icon;

  Transferencia(this.accountNumber, this.value, {this.icon});

  @override
  String toString() {
    return "Transferencia{accountNumber: $accountNumber, $value, $icon}";
  }
}
