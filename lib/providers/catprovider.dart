import 'package:flutter/material.dart';

import '../models/cat.dart';
final List<Cat> initialData = List.generate(50 , (index) => Cat('Snow $index'));  


class CatProvider extends ChangeNotifier{
  
 final List<Cat> _cats = initialData;
  List<Cat> get favCats  => _cats;
  final List<Cat> _catList = [];
  List<Cat> get catList => _catList; 
  
  void addToList(Cat cat){
    _catList.add(cat);
    notifyListeners();
  }

  void removeFromList(Cat cat){
    _catList.remove(cat);
    notifyListeners();
  }
  
}