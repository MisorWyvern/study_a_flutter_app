import 'package:flutter/material.dart';
import 'package:study_a_flutter_app/models/transferencia.dart';
import 'package:study_a_flutter_app/widgets/editor.dart';

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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Editor(
                    controller: _accountNumberController,
                    label: "Número da Conta",
                    hint: "0000",
                    icon: Icons.money),
                Editor(
                    controller: _valueController,
                    label: "Valor",
                    hint: "0.00",
                    icon: Icons.monetization_on),
                SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: () => _createTransferencia(context),
                    child: Text("Criar".toUpperCase()),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  void _createTransferencia(BuildContext context) {
    final int accountNumber = int.tryParse(_accountNumberController.text);
    final double value = double.tryParse(_valueController.text);

    if (accountNumber == null || value == null) {
      return;
    }

    final createdTransferencia = Transferencia(accountNumber, value);
    Navigator.pop(context, createdTransferencia);
  }
}
