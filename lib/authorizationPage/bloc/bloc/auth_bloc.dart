// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:rent_car_app/core/globals.dart';

part 'auth_event.dart';
part 'auth_state.dart';
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
      emit(AuthLoading());
      final response = gia.authorization();
      // ignore: unrelated_type_equality_checks
      if(response == true){
        emit(AuthLoaded());
      }
      else{emit(AuthFailure());}
    });
  }
}
