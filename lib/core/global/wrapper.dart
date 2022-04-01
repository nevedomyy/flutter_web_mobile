import 'package:flutter_web/core/models/app_response.dart';
import 'package:flutter_web/core/services/logger.dart';

Future<AppResponse> tryCatchResponse(
  Future<dynamic> Function() function,
) async {
  try {
    final data = await function();
    return AppResponse.success(data);
  } on Exception catch (e, s) {
    return AppResponse.withError(e, s);
  }
}

Future<void> tryCatchVoid(
  Future<void> Function() function,
) async {
  try {
    await function();
  } on Exception catch (e) {
    log.w(e.toString());
  }
}
