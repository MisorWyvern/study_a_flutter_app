import 'package:flutter/material.dart';
import 'package:study_a_flutter_app/models/transferencia.dart';
import 'package:study_a_flutter_app/pages/formulario_transferencia.dart';

class ListaTransferencias extends StatelessWidget {
  final String title;
  final List<Transferencia> _transferenciaList =
      List.of([Transferencia(101010, 1275.52)]);

  ListaTransferencias(
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
      body: ListView.builder(
        itemCount: _transferenciaList.length,
        itemBuilder: (BuildContext context, int index) =>
            ItemTransferencia(_transferenciaList[index]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future<Transferencia> future = Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      FormularioTransferencia("Criar Transferência")));
          future
              .then((_transferencia) => _transferenciaList.add(_transferencia));
        },
        child: Icon(Icons.add),
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
