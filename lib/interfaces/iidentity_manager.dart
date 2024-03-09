import 'package:domain/models/stored_identity.dart';
import 'package:domain/models/key_dto.dart';

abstract class IIdentityManager {
  Future<KeyDto> generateIdentity();
  Future<List<StoredIdentity>> getSecrets();
  Future<bool> setSecret(StoredIdentity secret);
  Future<List<StoredIdentity>> importSecrets(List<StoredIdentity> secrets);
}
