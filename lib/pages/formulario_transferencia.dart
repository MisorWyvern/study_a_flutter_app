import 'package:flutter/material.dart';
import 'package:study_a_flutter_app/models/transferencia.dart';

class FormularioTransferencia extends StatelessWidget {
  final String title;

  FormularioTransferencia(this.title, {Key key}) : super(key: key);

  final TextEditingController _accountNumberController =
      TextEditingController();
  final TextEditingController _valueController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _accountNumberController,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  icon: Icon(Icons.money),
                  labelText: "Número da Conta",
                  hintText: "0000",
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                  controller: _valueController,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    icon: Icon(Icons.monetization_on),
                    labelText: "Valor",
                    hintText: "0.00",
                  ),
                  keyboardType: TextInputType.number),
            ),
            RaisedButton(
              onPressed: () {
                final int accountNumber =
                    int.tryParse(_accountNumberController.text);
                final double value = double.tryParse(_valueController.text);

                if (accountNumber == null || value == null) {
                  return;
                }

                final createdTransferencia =
                    Transferencia(accountNumber, value);
                debugPrint("$createdTransferencia");
              },
              child: Text("Criar".toUpperCase()),
            ),
          ],
        ));
  }
}
