import 'package:dio/dio.dart';
import 'package:rent_car_app/authorizationPage/repository/abstract_user_repository.dart';
import 'package:rent_car_app/core/globals.dart';

class UserRepository implements AbstractUserRepository{
  @override
  Future<bool> authorization() async{
    try{
      final response = await Dio().get(
      'http://$ip/api/users?email=${userModel.email}&password=${userModel.password}'
      );
      final responseData = response.data as Map<String,dynamic>;
      userModel = userModel.copyWith(name: responseData['name'] , phoneNumber: responseData['phone_number'], username: responseData['username'],id: responseData['id']);
      return true;
    } catch (e){
      talker.error(e);
      return false;
    }
  }
  @override
  Future<bool> registration() async {
    try{
      await Dio().post(
        'http://$ip/api/users', data: userModel.toJson()
      );
      return true;
    } catch (e){
      talker.error(e);
      return false;
    }
  }
}