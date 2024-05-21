import 'package:get_it/get_it.dart';
import 'package:rent_car_app/authorizationPage/model/user.dart';
import 'package:rent_car_app/authorizationPage/repository/abstract_user_repository.dart';
import 'package:talker_flutter/talker_flutter.dart';
final talker = TalkerFlutter.init();
String ip =  '5.42.220.228:8090';
var userModel = GetIt.I<User>();
var userRepository = GetIt.I<AbstractUserRepository>();