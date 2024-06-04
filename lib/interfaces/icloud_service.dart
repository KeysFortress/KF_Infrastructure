import 'package:cryptography/cryptography.dart';
import 'package:domain/models/cloud_connection_code.dart';

abstract class ICloudService {
  Future<CloudConnectionCode?> begin(String setupUrl);
  Future<String> initConnection(CloudConnectionCode code);
  Future<bool> connect(CloudConnectionCode code, String signature);
  Future<bool> disconnect(CloudConnectionCode code);
  Future<List<CloudConnectionCode>> connections();
  Future<SimpleKeyPair> getOrCreateIdentity();
}
