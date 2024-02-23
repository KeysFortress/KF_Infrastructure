abstract class ITokenService {
  String issueToken();
  bool revokeToken(String token);
  bool validateToken(String token);
  String renewToken(String token);
}
