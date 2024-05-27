import 'package:firebase_auth/firebase_auth.dart';
import 'package:rent_car_app/authorizationPage/model/abstract_user_model.dart';
import 'package:rent_car_app/core/globals.dart';
import 'package:rent_car_app/main.dart';

class UserModel extends AbstractUserModel{
  // instance of auth
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  // sign user in 
  @override
  Future<UserCredential> signInWithEmailAndPassword(String email, String password) async {
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
  }
  Future<UserCredential> signUpWithEmailAndPassword(String email, String password) async{
    UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    return userCredential;
  }
  @override
  Future<void> signOut() async{
    return await FirebaseAuth.instance.signOut();
  }
  @override
  Future<void> createUser() async{
    // ignore: body_might_complete_normally_catch_error
    await db.collection('Users').add(gI<AbstractUserModel>().toMap()).whenComplete(() => talker.log('Success')).catchError((error){
      talker.error(error.toString());
    });

  }
}