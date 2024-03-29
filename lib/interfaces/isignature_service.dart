import 'package:cryptography/cryptography.dart';

abstract class ISignatureService {
  Future<SimpleKeyPair> generatePrivateKey();
  Future<Signature> signMessage(KeyPair keyPair, String message);
  Future<bool> verifySignature(List<int> message, Signature signature);
  Future<SimpleKeyPair> importKeyPair(String publicKey, String privateKey);
  Future<SimpleKeyPair> importPublic(String publicKey);
  bool setTemporary(KeyPair keyPair);
}
