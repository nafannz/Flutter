/// Logger utility untuk aplikasi Flutter Profile
class AppLogger {
  static const String _tag = 'FlutterProfile';

  static void info(String message) {
    print('[$_tag] INFO: $message');
  }

  static void error(String message, [Object? error, StackTrace? stackTrace]) {
    print('[$_tag] ERROR: $message');
    if (error != null) {
      print('Error: $error');
    }
    if (stackTrace != null) {
      print('StackTrace: $stackTrace');
    }
  }

  static void warning(String message) {
    print('[$_tag] WARNING: $message');
  }

  static void debug(String message) {
    print('[$_tag] DEBUG: $message');
  }
}
