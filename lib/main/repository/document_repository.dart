import 'package:firebase_core/firebase_core.dart';
import 'package:rent_car_app/main/repository/abstract_document_repository.dart';

import '../../core/globals.dart';

class DocumentRepository extends AbstractDocumentRepository{
  @override
  Future<bool> changeDocument() {
    // TODO: implement changeDocument
    throw UnimplementedError();
  }

  @override
  Future<bool> getDocument(String? uid) async {
    try{
    final response =  await documentReference.doc(uid).get();
    documentModel = documentModel.copyWith(birthDate: response.get('birth_date'), categories: response.get('categories'), dateOfIssue: response.get('date_of_issue'), endDate: response.get('end_date'), issuedBy: response.get('issued_by'), name: response.get('name'), number: response.get('number'), whereIssued: response.get('where_issued'));
    talker.log(response.get('birth_date'));
    return true;
    } on FirebaseException {
      talker.error('firebaseExept');
      return false;
    }
    catch(e){
      talker.error(e);
      return false;
    }
  }

  @override
  Future<bool> makeDocument() {
    // TODO: implement makeDocument
    throw UnimplementedError();
  }

}