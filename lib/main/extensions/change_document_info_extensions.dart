part of '../screen/change_document_info.dart';

extension on _ChangeDocumentInfoState{
  void changeDocument(){
    documentModel = documentModel.copyWith(
      name: nameController.text,
      birthDate:DateTime.parse(dateBirthController.text.toString()),
      dateOfIssue:DateTime.parse(dateGiveController.text.toString()),
      endDate: DateTime.parse(dateExpiredController.text.toString()),
      number: documentNumberController.text.toString(),
      issuedBy: whoGiveController.text,
      whereIssued: whenGiveController.text,
      categories: categoriesController.text
      );
      documentRepository.changeDocument();
  }
}