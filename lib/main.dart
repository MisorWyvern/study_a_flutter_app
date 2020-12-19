import 'package:flutter/material.dart';

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
        body: Column(
          children: [
            Card(
              child: ListTile(
                leading: Icon(Icons.monetization_on),
                title: Text("Titulo"),
                subtitle: Text("Subtitulo"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
