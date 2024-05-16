import 'package:firebase_auth/firebase_auth.dart';
import 'package:rent_car_app/authorizationPage/model/abstract_user_model.dart';

class UserModel extends AbstractUserModel{
  // instance of auth
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // sign user in 
  Future<UserCredential> signInWithEmailAndPassword(String email, String password) async {
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
  }
  Future<UserCredential> signUpWithEmailAndPassword(String email, String password) async{
    UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(email: email, password: password);
    return userCredential;
  }
  Future<void> signOut() async{
    return await FirebaseAuth.instance.signOut();
  }

}