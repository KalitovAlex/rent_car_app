import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:rent_car_app/authorizationPage/model/abstract_user_model.dart';

final authService = GetIt.I<AbstractUserModel>();
final db = FirebaseFirestore.instance;
final gI = GetIt.I;