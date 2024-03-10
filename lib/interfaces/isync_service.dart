import 'package:domain/models/device.dart';
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
}
