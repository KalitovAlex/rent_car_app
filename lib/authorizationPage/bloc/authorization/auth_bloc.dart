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
      try{ 
      emit(AuthLoading());
      final response = await userRepository.authorization(event.login, event.password);
      response == true ? emit(AuthLoaded()) : emit(AuthFailure());
      } catch (e){
        talker.error(e);
      }
    });
  }
}
