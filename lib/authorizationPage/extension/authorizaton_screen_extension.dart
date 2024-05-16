part of '../screen/authorizaiton_screen.dart';
extension on _AuthorizaitonScreenState{
  void authorization (){
    gia.email = emailController.text;
    gia.password = passwordController.text;
  }
}
