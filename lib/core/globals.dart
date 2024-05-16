import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:rent_car_app/authorizationPage/model/user_model.dart';

final authService = GetIt.I<UserModel>();
final db = FirebaseFirestore.instance;
final gI = GetIt.I;