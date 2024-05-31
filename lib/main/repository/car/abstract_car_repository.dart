import '../../model/car/car.dart';

abstract class AbstractCarRepository {
  Future<List<Car>> getAllCar();
}