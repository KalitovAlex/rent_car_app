import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rent_car_app/core/globals.dart';

part 'registration_event.dart';
part 'registration_state.dart';

class RegistrationBloc extends Bloc<RegistrationEvent, RegistrationState> {
  RegistrationBloc() : super(RegistrationInitial()) {
    on<RegistrationEvent>((event, emit) async{
      emit(RegistrationLoading());
      try{
      bool response = await gia.registration();
      if(response) {
        emit(RegistrationLoaded());
      }
      else{emit(RegistrationFailure());}
      } catch(e){
        talker.error(e.toString());
      }
    });
  }
}
