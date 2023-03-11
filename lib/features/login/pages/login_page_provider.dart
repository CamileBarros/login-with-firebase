import 'package:flutter/material.dart';

class LoginPageProvider extends ChangeNotifier {

bool isVisible = false;

setVisible(bool visibility) {
    isVisible = visibility;
    notifyListeners();
  }  
}