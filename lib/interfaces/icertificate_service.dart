import 'dart:typed_data';

import 'package:basic_utils/basic_utils.dart';

abstract class ICertificateService {
  Future<bool> update(Uint8List data, Uint8List key);
  Future<List<X509CertificateData>> read();
  Future<Map<String, ByteData>> get();
}
