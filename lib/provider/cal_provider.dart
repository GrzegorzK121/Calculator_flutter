import 'package:flutter/material.dart';

class CalculatorProvider extends ChangeNotifier{
  final compController =  TextEditingController();

setValue(String value){
  
}


  @override
  void dispose() {
    super.dispose();
    compController.dispose();
  }
}