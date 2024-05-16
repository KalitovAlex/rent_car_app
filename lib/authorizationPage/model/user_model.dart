// ignore_for_file: unnecessary_this

import 'package:dio/dio.dart';
import 'package:rent_car_app/authorizationPage/model/abstract_user_model.dart';

class UserModel extends AbstractUserModel{
  Future<bool> authorization()async{
    try{
    final response = await Dio().get(
      'http://5.42.220.228/api/users?email=${this.email}&password=${this.password}'
    );
    final data = response.data as Map<String, dynamic>;
    this.name = data["name"];
    this.number = data["phone_number"];
    this.username = data["username"];
    return true;
    } catch(e){
      // ignore: avoid_print
      print(e.toString());
      return false;
    }
  }
}