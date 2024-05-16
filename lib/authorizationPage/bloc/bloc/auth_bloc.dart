import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rent_car_app/core/globals.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
      emit(AuthLoading());
      gia.authorization();
      if(gia.authorization() == true){
        emit(AuthLoaded());
      }
      else{
        emit(AuthFailure());
      }
    });
  }
}
