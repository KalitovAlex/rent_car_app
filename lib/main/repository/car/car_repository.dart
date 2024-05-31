import 'package:dio/dio.dart';
import 'package:rent_car_app/core/globals.dart';
import 'package:rent_car_app/main/model/car/car.dart';
import 'package:rent_car_app/main/repository/car/abstract_car_repository.dart';

class CarRepository extends AbstractCarRepository{
  @override
  Future<bool> getAllCar() async{
      try{
      final response = await Dio().get
        ('http://$ip/api/autos/all?limit=3');
        final responseData = response.data;
        carModel = Car.fromJson(responseData);
        return true;
      } catch (e){
        talker.error(e);
        return false;
      }
  }

}