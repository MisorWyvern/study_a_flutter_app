import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_a_flutter_app/pages/deposit_form_page.dart';
import 'package:study_a_flutter_app/widgets/saldo_card.dart';

import '../models/saldo.dart';
import 'formulario_transferencia.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BaitBank"),
      ),
      body: ListView(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SaldoCard(),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => FormularioTransferencia("Make a Transfer")));
                },
                child: Text("Transfer".toUpperCase()),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => DepositForm()));
                },
                child: Text("Deposit".toUpperCase()),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
