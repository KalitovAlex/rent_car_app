import 'package:dio/dio.dart';
import 'package:rent_car_app/core/globals.dart';
import 'package:rent_car_app/main/model/car/car.dart';
import 'package:rent_car_app/main/repository/car/abstract_car_repository.dart';

class CarRepository extends AbstractCarRepository{
  @override
  Future <List<Car>> getAllCar() async{
      try{
      final response = await Dio().get
        ('http://$ip/api/autos/all?limit=3');
        final responseData = await response.data as List<dynamic>;
        List<Car> carModelList = responseData.map((e) => Car.fromJson(e)).toList();
        talker.log(carModelList);
        return carModelList;
      } catch (e){
        talker.error(e);
        return [];
      }
  }

}