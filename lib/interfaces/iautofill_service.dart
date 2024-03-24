abstract class IAutoFillService {
  enableAutoFill(bool state);
  enabledPasskeyAutoFill(bool state);
  Future<bool> isAutoFillEnabled();
  Future<bool> isPasskeyAutoFillEnabled();
}
