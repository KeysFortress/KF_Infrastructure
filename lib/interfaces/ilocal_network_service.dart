import 'package:cryptography/cryptography.dart';
import 'package:domain/models/device.dart';

abstract class ILocalNetworkService {
  Future<List<Device?>> scan();
  Future<Device> getNetworkData();
  Future<SimpleKeyPair> getCredentails(Device device);
  Future<bool> connectToDevice(Device device, String challange);
  Future<String> requestChallange(Device device);
  Future<String> getLocalAddress();
  Future<bool> overrideDeviceName(String name);
  Future<bool> setPort(String number);
  Future<int> getPort();
}
