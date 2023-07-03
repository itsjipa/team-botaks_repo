import 'package:flutter/material.dart';

class Step4Provider extends ChangeNotifier {
  bool _cardOption = false;
  bool _codOption = false;
  bool _ovoOption = false;
  bool _danaOption = false;
  bool _spayOption = false;
  bool _gopayOption = false;

  bool get statusOpsi1 => _cardOption;
  bool get statusOpsi2 => _codOption;
  bool get statusOpsi3 => _ovoOption;
  bool get statusOpsi4 => _danaOption;
  bool get statusOpsi5 => _spayOption;
  bool get statusOpsi6 => _gopayOption;

  set setOpsi1 (val) {
    _cardOption = val;
    notifyListeners();
  }

  set setOpsi2 (val) {
    _codOption = val;
    notifyListeners();
  }

  set setOpsi3 (val) {
    _ovoOption = val;
    notifyListeners();
  }

  set setOpsi4 (val) {
    _danaOption = val;
    notifyListeners();
  }

  set setOpsi5 (val) {
    _spayOption = val;
    notifyListeners();
  }

  set setOpsi6 (val) {
    _gopayOption = val;
    notifyListeners();
  }
}