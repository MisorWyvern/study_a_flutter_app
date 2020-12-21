import 'package:flutter/material.dart';
import 'package:study_a_flutter_app/models/transferencia.dart';

class ListaTransferencias extends StatelessWidget {
  final String title;

  const ListaTransferencias(
    this.title, {
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [],
      ),
      body: Column(
        children: [
          ItemTransferencia(
              Transferencia(101010, 1000.0, icon: Icons.monetization_on)),
        ],
      ),
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  const ItemTransferencia(
    this._transferencia, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: _transferencia.icon != null
            ? Icon(_transferencia.icon)
            : Icon(Icons.all_inclusive),
        title: _transferencia.value != null
            ? Text(_transferencia.value.toString())
            : Text(""),
        subtitle: _transferencia.accountNumber != null
            ? Text(_transferencia.accountNumber.toString())
            : Text(""),
      ),
    );
  }
}
