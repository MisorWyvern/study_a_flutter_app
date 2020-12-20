import 'package:flutter/material.dart';

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemTransferencia(),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final String valor;
  final String numeroConta;
  final IconData icone;

  const ItemTransferencia({Key key, this.valor, this.numeroConta, this.icone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: icone != null ? Icon(icone) : Icon(Icons.all_inclusive),
        title: valor != null ? Text(valor) : Text(""),
        subtitle: numeroConta != null ? Text(numeroConta) : Text(""),
      ),
    );
  }
}
