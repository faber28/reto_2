import 'package:reto_2/models/basemodel.dart';
import 'package:reto_2/services/carstate.dart';

class CarModel extends BaseModel {
  int? id;
  int year = 0;
  String brand = "";
  String line = "";
  double sellingPrice = 0;
  String description = "";
  double qualification = 0;
  String image = "";
  bool isSelected = false;

  CarModel(this.id, this.brand, this.line, this.year, this.sellingPrice,
      this.description, this.qualification, this.image, this.isSelected) {
    setState(CarState.init);
  }

  int get getYear => year;
  int? get getId => id;
  String get getBrand => brand;
  String get getLine => line;
  double get getSellingPrice => sellingPrice;
  String get getDescription => description;
  double get getQualification => qualification;
  String get getImage => image;
  bool get getIsSelected => isSelected;

  setYear(int value) {
    year = value;
    setState(CarState.init);
    notifyListeners();
  }

  setId(int value) {
    id = value;
    setState(CarState.init);
    notifyListeners();
  }

  setBrand(String value) {
    brand = value;
    setState(CarState.init);
    notifyListeners();
  }

  setLine(String value) {
    line = value;
    setState(CarState.init);
    notifyListeners();
  }

  setSellingPrice(double value) {
    sellingPrice = value;
    setState(CarState.init);
    notifyListeners();
  }

  setDescription(String value) {
    description = value;
    setState(CarState.init);
    notifyListeners();
  }

  setQualification(double value) {
    qualification = value;
    setState(CarState.calificated);
    notifyListeners();
  }

  setImage(String value) {
    image = value;
    setState(CarState.init);
    notifyListeners();
  }

  setIsSelected(bool value) {
    isSelected = value;
    setState(CarState.init);
  }
}
