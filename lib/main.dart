import 'package:flutter/material.dart';
import 'package:study_a_flutter_app/pages/formulario_transferencia.dart';

void main() {
  runApp(StudyAFlutterApp());
}

class StudyAFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FormularioTransferencia("Formulario Transferência"),
      ),
    );
  }
}
