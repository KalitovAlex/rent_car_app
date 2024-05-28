import 'package:dio/dio.dart';
import 'package:rent_car_app/core/globals.dart';
import 'package:rent_car_app/main/model/document.dart';
import 'package:rent_car_app/main/repository/abstract_document_repository.dart';

class DocumentRepository extends AbstractDocumentRepository{
  @override
  Future<bool> changeDocument() async{
    try{
      await Dio().put(
        'http://5.42.220.228/api/documents?id=${documentModel.id}', data: documentModel.toJson()
        );
        return true;
    } catch (e){
      talker.log(e);
      return false;
    }
  }

  @override
  Future<bool> getDocument() async{
    try{
      final response = await Dio().get(
        'http://$ip/api/documents?user_email=${userModel.id}'
      );
      final responseData = response.data;
      documentModel = Document.fromJson(responseData);
      return true;
    } catch(e){
      talker.log(e);
      return false;
    }
  }

  @override
  Future<bool> makeDocument() async{
    try{
    final response = await Dio().post(
      'http://$ip/api/documents', data: {
        "name": userModel.name,
        "user_id" : userModel.id
      }
    );
    final responseData = response.data as Map<String, dynamic>;
    documentModel = Document.fromJson(responseData);
    return true;
    } catch(e){
      talker.log(e);
      return false;
    }
  }

}