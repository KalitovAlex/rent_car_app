part of 'authorizaiton_screen.dart';
extension on _AuthorizaitonScreenState{
  void auth (){
    gia.email = emailController.text;
    gia.password = passwordController.text;
    gia.authorization();
  }
}
