part of '../screen/authorizaiton_screen.dart';
extension on _AuthorizaitonScreenState{
  void authorization (){
    gia = gia.copyWith(email: emailController.text, password: passwordController.text);
  }
}
