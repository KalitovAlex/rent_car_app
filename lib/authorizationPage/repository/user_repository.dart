import 'package:dio/dio.dart';
import 'package:rent_car_app/core/globals.dart';

class UserRepository {
  final user = gia;
  Future<bool> authorization() async{
    try{
      final response = await Dio().get(
      'http://$ip/api/users?email=${gia.email}&password=${gia.password}'
      );
      final responseData = response.data as Map<String,dynamic>;
      gia = gia.copyWith(name: responseData['name'] , phoneNumber: responseData['phone_number'], username: responseData['username']);
      return true;
    } catch (e){
      talker.error(e);
      return false;
    }
  }
}