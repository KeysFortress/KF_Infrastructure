abstract class IlocalStorage {
  Future<String> generateId();
  Future<bool> set(String key, dynamic value);
  Future<dynamic> get(String key);
  Future<bool> remove(String key);
}
