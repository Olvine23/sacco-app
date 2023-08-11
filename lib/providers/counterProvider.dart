import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier{
  var counter = 0; 
  get count => counter;


  void incremenCounter(){
    counter++;
    notifyListeners();
  }


}
 