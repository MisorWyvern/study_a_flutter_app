import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_a_flutter_app/models/transfer_list.dart';
import 'package:study_a_flutter_app/models/transferencia.dart';
import 'package:study_a_flutter_app/pages/list_transferencias.dart';

class LastTransferSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Last Transfers", style: Theme.of(context).textTheme.headline5),
        Consumer<TransferList>(builder: (context, consumer, child) {
          List<Transferencia> _reverseTransferList =
              consumer.transferList.reversed.toList();
          int _reverseListLength = 2;

          if (_reverseTransferList.isEmpty == true) {
            return NoTransferCard();
          }

          if (_reverseTransferList.length < 2) {
            _reverseListLength = _reverseTransferList.length;
          }

          return ListView.builder(
            shrinkWrap: true,
            itemCount: _reverseListLength,
            itemBuilder: (BuildContext context, int index) =>
                ItemTransferencia(_reverseTransferList[index]),
          );
        }),
        SizedBox(
          width: double.maxFinite,
          child: RaisedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      ListTransferencias(title: "Transfer List")));
            },
            child: Text("Transfer List".toUpperCase()),
          ),
        ),
      ],
    );
  }
}

class NoTransferCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0 * 3),
        child: Container(
          width: double.maxFinite,
          child: Column(
            children: [
              Icon(Icons.mood_bad),
              Text(
                "No transfers to show. \nMaybe you can just send one.",
                style: Theme.of(context).textTheme.bodyText1,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
