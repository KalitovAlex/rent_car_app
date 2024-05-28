import 'package:dio/dio.dart';
import 'package:rent_car_app/core/globals.dart';
import 'package:rent_car_app/main/model/document.dart';
import 'package:rent_car_app/main/repository/abstract_document_repository.dart';

class DocumentRepository extends AbstractDocumentRepository{
  // @override
  // Future<bool> changeDocument() {
  //   try{
  //     dio
  //   }
  // }

  // @override
  // Future<bool> getDocument() {
  //   // TODO: implement getDocument
  //   throw UnimplementedError();
  // }

  @override
  Future<bool> makeDocument() async{
    try{
    final response = await Dio().post(
      'http://$ip/api/documents', data: documentModel.toJson()
    );
    final responseData = response.data;
    documentModel = Document.fromJson(responseData);
    return true;
    } catch(e){
      talker.log(e);
      return false;
    }
  }

}