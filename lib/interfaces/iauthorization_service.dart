import 'package:domain/models/enums.dart';

abstract class IAuthorizationService {
  Future<bool> isDeviceLocked();
  Future<DeviceLockType> getDeviceLockType();
  Future<bool> setDeviceLockType(DeviceLockType type, {String? value});
  Future<bool> unlockPin(String value);
  Future<bool> unlockTotp(String code);
  Future<bool> enableBiometric();
}
