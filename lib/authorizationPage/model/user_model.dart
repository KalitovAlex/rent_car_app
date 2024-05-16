import 'package:dio/dio.dart';
import 'package:rent_car_app/authorizationPage/model/abstract_user_model.dart';

class UserModel extends AbstractUserModel{
  Future<void> authorization()async{
    try{
    final response = await Dio().get(
      'http://5.42.220.228/api/users?email=${this.email}&password=${this.password}'
    );
    final data = response.data as Map<String, dynamic>;
    } catch(e){
      print(e.toString());
    }
  }
}