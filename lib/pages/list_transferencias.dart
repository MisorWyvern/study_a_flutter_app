import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_a_flutter_app/models/transfer_list.dart';
import 'package:study_a_flutter_app/models/transferencia.dart';
import 'package:study_a_flutter_app/pages/formulario_transferencia.dart';

class ListTransferencias extends StatelessWidget {
  final String title;

  const ListTransferencias({Key key, @required this.title})
      : assert(title != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [],
      ),
      body: Consumer<TransferList>(
        builder: (context, consumer, child) => ListView.builder(
          itemCount: consumer.transferList.length,
          itemBuilder: (BuildContext context, int index) =>
              ItemTransferencia(consumer.transferList[index]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          FormularioTransferencia("Criar Transferência")));
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
