import 'package:domain/models/device.dart';
import 'package:domain/models/device_sync_event.dart';
import 'package:domain/models/enums.dart';
import 'package:domain/models/selectable_exchange_data.dart';

abstract class ISyncService {
  Future<SelectableExchangeData> getPartialData(String deviceId);
  setSyncType(String deviceId, SyncTypes syncType);
  Future<SyncTypes> getSyncType(String devicId);
  setPatrialSyncOptions(String deviceId, List<String> secrets,
      List<String> identities, List<String> otpCodes);
  oneTimeSync(Device device, dynamic data);
  synchronize(Device device);
  Future<List<DeviceSyncEvent>> getSyncLog(String mac);
  Future<bool> setServiceState(bool value);
  Future<bool> setSyncOnAction(bool value);
  Future<bool> setPasswordAction(bool value);
  Future<bool> setIdentityAction(bool value);
  Future<bool> setSecretAction(bool value);
  Future<bool> setRacAction(bool value);
  Future<bool> setRlcAction(bool value);
  Future<bool> setTotpAction(bool value);
  Future<bool> onConnectionAction(bool value);
  Future<bool> setTimeBasedSyncAction(bool value);
  Future<bool> updateTimeToSync(int syncTime);
  Future<Map<String, dynamic>> getGlobalSettings();
}
