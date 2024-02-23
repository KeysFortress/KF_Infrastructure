import 'package:domain/models/device.dart';

abstract class IDevicesService {
  Future<List<Device>> all();
  Future<bool> add(Device device);
  Future<bool> remove(Device device);
}
