part of '../screen/change_document_info.dart';

extension on _ChangeDocumentInfoState{
  void changeDocument(){
    documentModel = documentModel.copyWith(
      name: nameController.text,
      birthDate:DateTime.parse(dateBirthController.text.toString()),
      
      
      );
  }
}