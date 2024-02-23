import 'package:domain/models/device.dart';

abstract class ISessionService {
  Future add(String token, Device device);
  Future remove(Device device);
  Future<String?> getToken(Device device);
}
