import 'package:domain/models/enums.dart';

abstract class IAuthorizationService {
  Future<bool> isDeviceLocked();
  Future<DeviceLockType> getDeviceLockType();
  Future<bool> setDeviceLockType(DeviceLockType type, {String? value});
  Future<bool> unlockPin(String value);
  Future<bool> unlockTotp(String code);
  Future<bool> enableBiometric();
  Future<bool> unlockPattern(List<int> input);
  Future<bool> isMinimizeLockEnabled();
  Future<bool> setMinimizeLockEnabled(bool state);
  Future<bool> isTimeLockEnabled();
  Future<bool> setLockTimeEnabled(bool state);
  Future<int> getTimeLockTime();
  Future<bool> setLockTime(int lockTime);
  Future<bool> isDeviceLockEnabled();
  Future<bool> setDeviceLockEnabled(bool state);
}
