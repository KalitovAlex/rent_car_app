import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:rent_car_app/main.dart';

class FirebaseApi {
  final _firebaseMessanging = FirebaseMessaging.instance;

  Future<void> initNotifications() async{
    await _firebaseMessanging.requestPermission();
    final token = await _firebaseMessanging.getToken();
    talker.log(token);
  }
}