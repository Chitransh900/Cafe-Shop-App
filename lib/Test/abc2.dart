
import 'package:flutter/material.dart';

class Counter2 with ChangeNotifier {
  int _count = 0;

  int get count => _count;
  set count(value){
    _count = value;
    notifyListeners();
  }

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }
}