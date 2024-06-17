// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

class AuthEvent {
  String login;
  String password;
  AuthEvent({
    required this.login,
    required this.password,
  });
}
