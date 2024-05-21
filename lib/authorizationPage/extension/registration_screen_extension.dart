part of '../screen/registration_screen.dart';
extension on _RegistrationScreenState {
void register () async{
  userModel = userModel.copyWith(email: userEmail.text, password: userPassword.text, name: userLogin.text, username: userName.text,phoneNumber: userNumber.text);
}
}

