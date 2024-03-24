import 'dart:io';
import 'dart:typed_data';

import 'package:basic_utils/basic_utils.dart';

abstract class ICertificateService {
  Future<bool> update(Uint8List data, Uint8List key);
  Future<List<X509CertificateData>> read();
  Future<Map<String, ByteData>> get();
  Future<bool> importCertificate(File file);
  Future<bool> setCertificatePassword(String password);
  Future<String?> getKeyPassword();
  Future<Map<String, ByteData>> getSystemDefaultIdentities();
}
