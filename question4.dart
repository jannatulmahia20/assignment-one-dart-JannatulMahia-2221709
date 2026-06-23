// Question 4: Inheritance & Polymorphism (Difficulty: 4/5) ⭐⭐⭐⭐
/// EXPECTED OUTPUT:
/// Vehicle Info: 2020 Toyota Camry (4 doors)
/// Starting the car engine...
/// Stopping the car engine...
/// 
/// Vehicle Info: 2021 Honda CBR (Has windshield: true)
/// Starting the motorcycle engine...
/// Stopping the motorcycle engine...
/// 
/// Car age: <Value> years
/// Motorcycle age: <Value> years
library;


// 1. Abstract Class Vehicle:
//    - Properties: String brand, String model, int year
//    - Abstract method: void start()
//    - Abstract method: void stop()
//    - Concrete method: void displayInfo()
abstract class Vehicle {

  Vehicle(this.brand, this.model, this.year);
  String brand;
  String model;
  int year;

  void start();
  void stop();

  void displayInfo() {
    print('Vehicle Info: $year $brand $model');
  }

  int calculateAge() {
    return 2026 - year; // current year based on assignment date
  }
}
// 2. Concrete Classes:
//    - Car extends Vehicle
//      - Additional property: int numberOfDoors
//      - Override start() and stop() methods
class Car extends Vehicle {

  Car(String brand, String model, int year, this.numberOfDoors)
      : super(brand, model, year);
  int numberOfDoors;

  @override
  void start() {
    print('Starting the car engine...');
  }

  @override
  void stop() {
    print('Stopping the car engine...');
  }

  @override
  void displayInfo() {
    print('Vehicle Info: $year $brand $model ($numberOfDoors doors)');
  }
}
class Motorcycle extends Vehicle {

  Motorcycle(String brand, String model, int year, this.hasWindshield)
      : super(brand, model, year);
  bool hasWindshield;

  @override
  void start() {
    print('Starting the motorcycle engine...');
  }

  @override
  void stop() {
    print('Stopping the motorcycle engine...');
  }

  @override
  void displayInfo() {
    print(
        'Vehicle Info: $year $brand $model (Has windshield: $hasWindshield)',);
  }
}
void main() {
  var car = Car('Toyota', 'Camry', 2020, 4);
  var bike = Motorcycle('Honda', 'CBR', 2021, true);

  var vehicles = <Vehicle>[car, bike];

  for (final v in vehicles) {
    v.displayInfo();
    v.start();
    v.stop();
    print('');
  }

  print('Car age: ${car.calculateAge()} years');
  print('Motorcycle age: ${bike.calculateAge()} years');
}
