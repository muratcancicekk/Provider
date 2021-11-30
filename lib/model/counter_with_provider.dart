import 'package:flutter/material.dart';

class Counter with ChangeNotifier {
  int _counter;
  int get counter => _counter;

  Counter(this._counter);

  void increase() {
    _counter++;
    notifyListeners();
  }

  void decrease() {
    _counter--;
    notifyListeners();
  }
}
