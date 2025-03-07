import '../models/car.dart';
class FordCar extends Car {
  String fordSpecificFeature;
  FordCar({
    required super.make,
    required super.model,
    required super.year,
    required this.fordSpecificFeature,
  });

  // Override the method to include Ford-specific details
  @override
  void displayDetails() {
    super.displayDetails(); // Call the base class method
    print('Ford Specific Feature: $fordSpecificFeature');
  }
}
