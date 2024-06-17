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
        final response = await userRepository.registration(userModel = userModel.copyWith(email: event.email,password: event.password,phoneNumber: event.phone_number, username: event.user_name, name: event.user_login));
        // documentModel = documentModel.copyWith(userId: userModel.uid, name: userModel.name);
        // final responseDocument = await documentRepository.makeDocument();
        // talker.log(responseDocument);
        response == true  ? emit(RegistrationLoaded()) : emit(RegistrationFailure());
      } catch(e){
        talker.error(e.toString());
      }
    });
  }
}
