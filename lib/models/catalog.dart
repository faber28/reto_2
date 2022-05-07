import 'package:reto_2/models/carmodel.dart';
import 'package:reto_2/models/basemodel.dart';

class Catalog extends BaseModel {
  List<CarModel> cars = [];
  CarModel carSelected = new CarModel(0, "", "", 0, 0, "", 0, "", false);

  Catalog() {
    cars.add(CarModel(
        1,
        "Toyota",
        "Corolla",
        2015,
        20000,
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
        4.5,
        "../images/0.png",
        false));
    cars.add(CarModel(
        2,
        "Toyota",
        "Auris",
        2016,
        30000,
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
        4.6,
        "../images/0.png",
        false));
    cars.add(CarModel(3, "Tesla", "Model X", 2021, 80000, "Descripción", 4.5,
        "../images/1.png", false));
    cars.add(CarModel(4, "Tesla", "Model Y", 2022, 90000, "Descripción", 4.5,
        "../images/2.png", false));
    cars.add(CarModel(5, "Toyota", "Corolla", 2015, 20000, "Descripción", 4.5,
        "../images/0.png", false));
    cars.add(CarModel(6, "Toyota", "Auris", 2016, 30000, "Descripción", 4.5,
        "../images/1.png", false));
    cars.add(CarModel(7, "Tesla", "Model X", 2021, 80000, "Descripción", 4.5,
        "../images/1.png", false));
    cars.add(CarModel(8, "Tesla", "Model Y", 2022, 90000, "Descripción", 4.5,
        "../images/2.png", false));
  }

  List<CarModel> get getCatalog => cars;
  CarModel get getCarSelected {
    notifyListeners();
    return carSelected;
  }

  setCarSelected(CarModel car) {
    carSelected = car;
    notifyListeners();
  }

  List<CarModel> getCarsByBrand(String brand) {
    List<CarModel> filteredCars = [];
    for (var car in cars) {
      if (car.brand == brand) {
        filteredCars.add(car);
      }
    }
    return filteredCars;
  }
}
