import 'package:flutter/material.dart';
import 'package:study_a_flutter_app/pages/lista_transferencias.dart';

void main() {
  runApp(StudyAFlutterApp());
}

class StudyAFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListaTransferencias("Transferências"),
      ),
    );
  }
}
