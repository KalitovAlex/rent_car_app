import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:rent_car_app/authorizationPage/model/user.dart';
import 'package:rent_car_app/authorizationPage/repository/abstract_user_repository.dart';
import 'package:rent_car_app/main/model/car/car.dart';
import 'package:rent_car_app/main/model/document.dart';
import 'package:rent_car_app/main/repository/car/abstract_car_repository.dart';
import 'package:talker_flutter/talker_flutter.dart';
final talker = TalkerFlutter.init();
String ip =  '188.225.35.114:80'; 

//GetIt init models
var userModel = GetIt.I<User>();
var documentModel = GetIt.I<Document>();
var carModel = GetIt.I<Car>();

//Firebase Features
final fireStore = FirebaseFirestore.instance;
const String userCollection = 'users';

//GetIt init Repositories
AbstractUserRepository userRepository = GetIt.I<AbstractUserRepository>();
// AbstractDocumentRepository documentRepository = GetIt.I<AbstractDocumentRepository>();
AbstractCarRepository carRepository = GetIt.I<AbstractCarRepository>(); 