import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/saldo.dart';
import '../widgets/editor.dart';

class DepositForm extends StatelessWidget {
  final TextEditingController _valueController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Make a Deposit"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Editor(
                  controller: _valueController,
                  label: "Value",
                  hint: "0.00",
                  icon: Icons.monetization_on),
              SizedBox(
                width: double.maxFinite,
                child: RaisedButton(
                  onPressed: () {
                    bool _isValidDeposit = _deposit(context);
                    if (_isValidDeposit == true) {
                      Navigator.of(context).pop();
                    }
                  },
                  child: Text("Deposit".toUpperCase()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool _deposit(BuildContext context) {
    final double value = double.tryParse(_valueController.text);

    if (value == null) {
      return false;
    }

    return Provider.of<Saldo>(context, listen: false).deposit(value);
  }
}
