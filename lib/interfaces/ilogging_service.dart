import 'package:domain/exceptions/base_exception.dart';

abstract class ILoggingService {
  info(String message);
  exception(String message, {BaseException baseException});
  warning(String message, {BaseException baseException});
  shout(String shout, {BaseException baseException});
  config(String messsge, {BaseException baseException});
}
