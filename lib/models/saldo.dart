import 'package:flutter/material.dart';

class Saldo extends ChangeNotifier {
  final double value;
  Saldo(
    this.value,
  );

  @override
  String toString() => 'R\$ ${value.toStringAsFixed(2)}';
}
