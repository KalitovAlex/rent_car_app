part of '../screen/change_document_info.dart';

extension on _ChangeDocumentInfoState{
  void changeDocument(){
    documentModel = documentModel.copyWith(
      name: nameController.text,
      birthDate: dateBirthController.text.toString(),
      dateOfIssue: dateGiveController.text.toString(),
      endDate: dateExpiredController.text.toString(),
      number: documentNumberController.text.toString(),
      issuedBy: whoGiveController.text,
      whereIssued: whenGiveController.text,
      categories: categoriesController.text
      );
      documentRepository.changeDocument();
  }
}