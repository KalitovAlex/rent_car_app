import 'package:firebase_auth/firebase_auth.dart';
import 'package:rent_car_app/authorizationPage/repository/abstract_user_repository.dart';
import 'package:rent_car_app/core/globals.dart';

class UserRepository extends AbstractUserRepository{
   @override
  Future<bool> registration(user) async{
    try{
      final response = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: user.email!, password: user.password!);
      await userReference.doc(response.user!.uid).set(userModel.toJson());
      return true;
    } catch(e){
      talker.error(e);
      return false;
    }
  }
  
 @override
  Future<bool> authorization(String? login, String? password) async{
    try{
      final response = await FirebaseAuth.instance.signInWithEmailAndPassword(email: login!, password: password!);
      final user = await userReference.doc(response.user!.uid).get();
      userModel = userModel.copyWith(phoneNumber: user.get('phone_number'), username: user.get('user_name'), uid: response.user!.uid);
      talker.log(userModel.phoneNumber);
      return true;
    } on FirebaseAuthException{
      talker.log('error ');
      return false;
    } catch(e){
      talker.error(e);
      return false;
    }
  }
}