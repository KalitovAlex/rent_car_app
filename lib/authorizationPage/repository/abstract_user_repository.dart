abstract class AbstractUserRepository {
  Future<bool> authorization();
  Future<bool> registration();
}