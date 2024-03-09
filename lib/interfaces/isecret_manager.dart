import 'package:domain/models/stored_secret.dart';

abstract class ISecretManager {
  String generateSecret({
    int length = 12,
    bool isSecial = true,
    bool isUpper = true,
    bool isLower = true,
    bool isDigit = true,
    bool isUnique = true,
  });
  Future<List<StoredSecret>> getSecrets();
  Future<bool> setSecret(StoredSecret secret);
  Future<List<StoredSecret>> importSecrets(List<StoredSecret> secrets);
  Future<bool> copySensitiveData(String data);
}
