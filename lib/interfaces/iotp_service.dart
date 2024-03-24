import 'package:domain/models/otp_code.dart';

abstract class IOtpService {
  Future<List<OtpCode>> get();
  Future<OtpCode> add(OtpCode code);
  Future<bool> remove(String secret);
  Future<List<OtpCode>> importCodes(List<OtpCode> list);
  String getCode(String secret, int interval);
}
