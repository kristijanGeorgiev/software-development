class Car {
  String make;
  String model;
  int year;

  // Constructor
  Car({required this.make, required this.model, required this.year});

  // Method to display car details
  void displayDetails() {
    print('Make: $make, Model: $model, Year: $year');
  }
}