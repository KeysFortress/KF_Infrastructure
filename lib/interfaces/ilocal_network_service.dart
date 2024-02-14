import 'package:cryptography/cryptography.dart';
import 'package:domain/models/device.dart';

abstract class ILocalNetworkService {
  Future<List<Device?>> scan();
  Future<Device> getNetworkData();
  Future<SimpleKeyPair> getCredentails();
}
