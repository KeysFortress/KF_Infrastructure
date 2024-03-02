import 'package:domain/models/device.dart';
import 'package:domain/models/enums.dart';

abstract class ISyncService {
  setSyncType(String deviceId, SyncTypes syncType);
  Future<SyncTypes> getSyncType(String devicId);
  setPatrialSyncOptions(String deviceId, List<String> secrets,
      List<String> identities, List<String> otpCodes);
  oneTimeSync(String deviceId, dynamic data);
  synchronize(Device device);
}
