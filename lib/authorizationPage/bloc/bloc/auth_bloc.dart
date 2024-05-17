// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:rent_car_app/core/globals.dart';

part 'auth_event.dart';
part 'auth_state.dart';
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial())  {
    on<AuthEvent>((event, emit) async{
      emit(AuthLoading());
      bool response = await gia.authorization();
      await gia.authorization().whenComplete (() => response == true ? emit(AuthLoaded()) : emit(AuthFailure()));
    });
  }
}
