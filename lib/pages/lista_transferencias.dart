import 'package:flutter/material.dart';
import 'package:study_a_flutter_app/models/transferencia.dart';
import 'package:study_a_flutter_app/pages/formulario_transferencia.dart';

class ListaTransferencias extends StatefulWidget {
  final String title;
  final List<Transferencia> _transferenciaList =
      List.of([Transferencia(101010, 1275.52)]);

  ListaTransferencias(
    this.title, {
    Key key,
  }) : super(key: key);
  @override
  _ListaTransferenciasState createState() => _ListaTransferenciasState();
}

class _ListaTransferenciasState extends State<ListaTransferencias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [],
      ),
      body: ListView.builder(
        itemCount: widget._transferenciaList.length,
        itemBuilder: (BuildContext context, int index) =>
            ItemTransferencia(widget._transferenciaList[index]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future<Transferencia> future = Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      FormularioTransferencia("Criar Transferência")));
          future.then((_transferencia) {
            if (_transferencia == null) return;
            setState(() => widget._transferenciaList.add(_transferencia));
          });
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
            : Icon(Icons.monetization_on),
        title: _transferencia.value != null
            ? Text("R\$ ${_transferencia.value.toStringAsFixed(2)}")
            : Text(""),
        subtitle: _transferencia.accountNumber != null
            ? Text("Conta: ${_transferencia.accountNumber.toString()}")
            : Text(""),
      ),
    );
  }
}
