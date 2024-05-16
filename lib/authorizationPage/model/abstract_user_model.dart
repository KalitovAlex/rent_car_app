import 'package:firebase_auth/firebase_auth.dart';

abstract class AbstractUserModel {
  String? userEmail;
  String? userPassword;
  String? userName;
  String? userLogin;
  String? userPhoneNumber;

  // Constructor
  AbstractUserModel({
    this.userEmail,
    this.userPassword,
    this.userName,
    this.userLogin,
    this.userPhoneNumber,
  });

  // Methods
  Future<UserCredential> signInWithEmailAndPassword(String email, String password);

  // toMap method
  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userEmail': userEmail,
      'userPassword': userPassword,
      'userName': userName,
      'userLogin': userLogin,
      'userPhoneNumber': userPhoneNumber,
    };
  }
}
