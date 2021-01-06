import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_a_flutter_app/models/saldo.dart';

class SaldoCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0 * 2),
        child: Consumer<Saldo>(
          builder: (context, value, child) {
            return Text(
              value.toString(),
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.bodyText1.fontSize * 3.5,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      ),
    );
  }
}
