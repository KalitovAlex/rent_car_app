import 'package:cloud_firestore/cloud_firestore.dart';

import '../../core/globals.dart';

abstract class AbstractDocumentRepository {
  Future<bool> makeDocument();
  Future<bool> changeDocument();
  Future<bool> getDocument(String? uid);
  late final CollectionReference documentReference;
    AbstractDocumentRepository(){
    documentReference = fireStore.collection(documentCollection);
  }
}