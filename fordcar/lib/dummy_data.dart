import '../models/car.dart';
import '../models/fordcar.dart';

List<Car> dummyCars = [
  Car(
    make: 'Toyota',
    model: 'Corolla',
    year: 2020,// Replace with an actual image asset path
  ),
  Car(
    make: 'Ford',
    model: 'Mustang',
    year: 2022, // Replace with an actual image asset path
  ),
  Car(
    make: 'Tesla',
    model: 'Model 3',
    year: 2021, // Replace with an actual image asset path
  ),
];
List<FordCar> dummyFordCars = [
  FordCar(
    make: 'Toyota',
    model: 'Corolla',
    year: 2020, fordSpecificFeature: '',// Replace with an actual image asset path
  ),
  FordCar(
    make: 'Ford',
    model: 'Mustang',
    year: 2022, fordSpecificFeature: '', // Replace with an actual image asset path
  ),
  FordCar(
    make: 'Tesla',
    model: 'Model 3',
    year: 2021, fordSpecificFeature: '', // Replace with an actual image asset path
  ),
];