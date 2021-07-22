import 'package:logger/logger.dart';

final log = Logger(
  printer: PrettyPrinter(
      methodCount: 0, // number of method calls to be displayed
      errorMethodCount: 8, // number of method calls if stacktrace is provided
      lineLength: 120, // width of the output
      colors: true, // Colorful log messages
      printTime: false // Should each log print contain a timestamp
      ),
);

/// https://pub.dev/packages/logger

/// logger.v("Verbose log");
/// logger.d("Debug log");
/// logger.i("Info log");
/// logger.w("Warning log");
/// logger.e("Error log");
/// logger.wtf("What a terrible failure log");
