abstract class AbstractDocumentRepository {
  Future<bool> makeDocument();
  Future<bool> changeDocument();
  Future<bool> getDocument();
}