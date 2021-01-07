
import 'package:flutter/material.dart';

import 'transferencia.dart';

class TransferList extends ChangeNotifier{
  final List<Transferencia> _transferList = [];

  List<Transferencia> get transferList => _transferList;

  void add(Transferencia transferencia){
    transferList.add(transferencia);
    notifyListeners();
  }

  

}