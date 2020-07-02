import 'package:flutter/material.dart';

class tableModel with ChangeNotifier {
   int _tableNum;

   int get tableNum => _tableNum;

   set tableNum(int value) {
     _tableNum = value;
     notifyListeners();
   }


}