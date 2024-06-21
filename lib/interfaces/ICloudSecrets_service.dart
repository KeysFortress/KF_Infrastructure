import 'package:domain/models/stored_secret.dart';
import 'package:domain/models/cloud_connection_code.dart';

abstract class ICloudSecretsService {
  Future<List<StoredSecret>> get(CloudConnectionCode token);
  Future<bool> update(StoredSecret secret, CloudConnectionCode token);
  Future<bool> delete(StoredSecret secret, CloudConnectionCode token);
}
