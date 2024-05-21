part of '../screen/authorizaiton_screen.dart';
extension on _AuthorizaitonScreenState{
  void authorization () async{
    userModel = userModel.copyWith(email: emailController.text, password: passwordController.text);
  }
}
