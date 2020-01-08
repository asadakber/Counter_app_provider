
import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _counter = 0;

  get counter => _counter;

  set counter(int counter) {
    _counter = counter;
    notifyListeners();
  }

  void Increment() {
    counter = counter + 1;
  }

  void decrement() {
    counter = counter - 1;
  }
}