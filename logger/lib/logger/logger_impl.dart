import 'package:injectable/injectable.dart';

import './logger.dart';

@LazySingleton(as: Logger)
class LoggerImpl implements Logger {
  @override
  void info(String msg) {
    print("🔵 INFO: $msg");
  }

  @override
  void warn(String msg) {
    print("🟠 WARNING: $msg");
  }

  @override
  void error(String msg) {
    print("🔴 ERROR: $msg");
  }

}
