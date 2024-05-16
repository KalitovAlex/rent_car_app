
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:rent_car_app/authorizationPage/bloc/bloc/auth_bloc.dart';
import 'package:rent_car_app/authorizationPage/model/abstract_user_model.dart';
import 'package:talker_flutter/talker_flutter.dart';

// ignore: implicit_call_tearoffs
final gia = GetIt.I<AbstractUserModel>();
final talker = TalkerFlutter.init();