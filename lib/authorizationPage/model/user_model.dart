// ignore_for_file: unnecessary_this

import 'package:dio/dio.dart';
import 'package:rent_car_app/authorizationPage/model/abstract_user_model.dart';
import 'package:rent_car_app/core/globals.dart';
class UserModel extends AbstractUserModel{
  @override
  Future<bool> authorization()async{
    try{
    final response = await Dio().get(
      'http://$ip/api/users?email=${this.email}&password=${this.password}'
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
  @override
  Future<bool> registration() async{
    try{
      await Dio().post(
        'http://$ip/api/users', data: {
          "username": this.username,
          "name": this.name,
          "phone_number": this.number,
          "email": this.email,
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