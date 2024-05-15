import 'package:firebase_auth/firebase_auth.dart';

class UserModel{
  // instance of auth
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // sign user in 
  Future<UserCredential> signInWithEmailAndPassword(String email, String password) async {
      UserCredential userCredential = await _firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
  }

}