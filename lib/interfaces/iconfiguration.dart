abstract class IConfiguration {
  late Map<String, dynamic> data;
  Future<Map<String, dynamic>> load();
  Future<bool> overrideConfig();
}
