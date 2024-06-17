import 'package:bloc/bloc.dart';
import 'package:rent_car_app/core/globals.dart';

part 'change_document_event.dart';
part 'change_document_state.dart';

class ChangeDocumentBloc extends Bloc<ChangeDocumentEvent, ChangeDocumentState> {
  ChangeDocumentBloc() : super(ChangeDocumentInitial()) {
    on<ChangeDocumentEvent>((event, emit) async{
      try{
      emit(ChangeDocumentLoading());
      // final responseData = await documentRepository.changeDocument();
      // responseData == true ? emit(ChangeDocumentLoaded()) : emit(ChangeDocumentFailure()); 
      } catch(e){
        talker.error(e);
      }
    });
  }
}
