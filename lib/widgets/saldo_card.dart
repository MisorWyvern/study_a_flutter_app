import 'package:flutter/material.dart';
import 'package:study_a_flutter_app/models/saldo.dart';

class SaldoCard extends StatelessWidget {
  final Saldo saldo;

  const SaldoCard({Key key, @required this.saldo})
      : assert(saldo != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0 * 2),
        child: Text(
          saldo.toString(),
          style: TextStyle(
            fontSize: Theme.of(context).textTheme.bodyText1.fontSize * 3.5,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
