import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class ApplicationColor with ChangeNotifier{
  
  // _ (underscore)  = private
  bool _isLightBlue = true;
  
  bool get isLightBlue => _isLightBlue;

  set isLightBlue(bool value){
    _isLightBlue = value;
    notifyListeners(); //memberitahu pada (consumer) widget yang menunggu
  }

  Color get color => (_isLightBlue) ? Colors.lightBlue : Colors.amber;
}
