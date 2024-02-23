import 'package:domain/models/device.dart';

abstract class ISessionService {
  add(String token, Device device);
  remove(Device device);
  getToken(Device device);
}
