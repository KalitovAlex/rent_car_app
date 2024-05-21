import 'package:get_it/get_it.dart';
import 'package:rent_car_app/authorizationPage/model/userModel/user.dart';
import 'package:rent_car_app/authorizationPage/repository/user_repository.dart';
import 'package:talker_flutter/talker_flutter.dart';
final talker = TalkerFlutter.init();
String ip =  '5.42.220.228:8090';
var userModel = GetIt.I<User>();
var userRepository = GetIt.I<UserRepository>();