// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'registration_bloc.dart';

class RegistrationEvent {
  String phone_number;
  String user_name;
  String user_login;
  String email;
  String password;
  RegistrationEvent({
    required this.phone_number,
    required this.user_name,
    required this.user_login,
    required this.email,
    required this.password,
  });
}
