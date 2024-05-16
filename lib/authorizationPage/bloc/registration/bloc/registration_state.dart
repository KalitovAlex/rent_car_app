part of 'registration_bloc.dart';
@immutable
sealed class RegistrationState {}

final class RegistrationInitial extends RegistrationState {}
final class RegistrationLoading extends RegistrationState{}
final class RegistrationLoaded extends RegistrationState{}
final class RegistrationFailure extends RegistrationState{}
