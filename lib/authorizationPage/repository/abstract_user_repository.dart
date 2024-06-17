import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:rent_car_app/core/globals.dart';

import '../model/user.dart';

abstract class AbstractUserRepository {
  Future<bool> authorization(String? login, String? password);
  Future<bool> registration(User user);
  late final CollectionReference userReference;
  AbstractUserRepository(){
    userReference = fireStore.collection(userCollection);
  }
}