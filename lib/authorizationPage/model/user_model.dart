// ignore_for_file: unnecessary_this

import 'package:dio/dio.dart';
import 'package:rent_car_app/authorizationPage/model/abstract_user_model.dart';
import 'package:rent_car_app/core/globals.dart';

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
  Future<bool> registration() async{
    try{
      await Dio().post(
        'http://5.42.220.228/api/users', data: {
          "username": this.username,
          "email": this.email,
          "name": this.name,
          "phone_number": this.number,
          "password": this.password
        }
      );
      return true;
    } catch (e){
      talker.error(e.toString());
      return false;
    }
  }
}