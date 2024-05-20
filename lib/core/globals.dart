import 'package:get_it/get_it.dart';
import 'package:rent_car_app/authorizationPage/model/abstract_users_model.dart';
import 'package:talker_flutter/talker_flutter.dart';
final talker = TalkerFlutter.init();
String ip =  '5.42.220.228:8090';
var gia = GetIt.I<AbstractusersModel>();