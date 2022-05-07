import 'package:reto_2/models/carmodel.dart';
import 'package:reto_2/models/basemodel.dart';

class Catalog extends BaseModel {
  List<CarModel> cars = [];

  Catalog() {
    cars.add(CarModel(1, "Toyota", "Corolla", 2015, 20000, "Descripción", 4.5,
        "images/0.png"));
    cars.add(CarModel(
        2, "Toyota", "Auris", 2016, 30000, "Descripción", 4.5, "images/1.png"));
    cars.add(CarModel(3, "Tesla", "Model X", 2021, 80000, "Descripción", 4.5,
        "images/1.png"));
    cars.add(CarModel(4, "Tesla", "Model Y", 2022, 90000, "Descripción", 4.5,
        "images/2.png"));
    cars.add(CarModel(5, "Toyota", "Corolla", 2015, 20000, "Descripción", 4.5,
        "images/0.png"));
    cars.add(CarModel(
        6, "Toyota", "Auris", 2016, 30000, "Descripción", 4.5, "images/1.png"));
    cars.add(CarModel(7, "Tesla", "Model X", 2021, 80000, "Descripción", 4.5,
        "images/1.png"));
    cars.add(CarModel(8, "Tesla", "Model Y", 2022, 90000, "Descripción", 4.5,
        "images/2.png"));
  }

  List<CarModel> get getCatalog => cars;

  CarModel getCarById(int id) {
    CarModel filteredCar = new CarModel(0, "", "", 0, 0, "", 0, "");
    for (var car in cars) {
      if (car.id == id) {
        filteredCar = car;
      }
    }
    return filteredCar;
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
