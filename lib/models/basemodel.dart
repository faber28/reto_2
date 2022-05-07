import 'package:reto_2/services/carstate.dart';
import 'package:flutter/foundation.dart';

class BaseModel extends ChangeNotifier {
  CarState _statecar = CarState.init;

  CarState get state => _statecar;

  void setState(CarState value) {
    _statecar = value;
    notifyListeners();
  }
}
