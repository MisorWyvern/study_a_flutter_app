
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:study_a_flutter_app/models/transfer_list.dart';
import 'package:study_a_flutter_app/pages/dashboard_page.dart';

import 'models/saldo.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Saldo(0),
        ),
        ChangeNotifierProvider(
          create: (context) => TransferList(),
        ),
      ],
      child: StudyAFlutterApp(),
    ),
  );
}

class StudyAFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.indigo[900],
        accentColor: Colors.cyanAccent[400],
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.cyanAccent[400],
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}

//ThemeData.dark(),
