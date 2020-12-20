import 'package:flutter/material.dart';
import 'package:study_a_flutter_app/widgets/lista_transferencias.dart';

void main() {
  runApp(StudyAFlutter());
}

class StudyAFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("ByteBank (Tranferências)"),
          actions: [],
        ),
        body: ListaTransferencias(),
      ),
    );
  }
}
