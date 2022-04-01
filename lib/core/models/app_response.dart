import 'dart:io' show SocketException;

import 'package:dio/dio.dart' show DioError, DioErrorType;
import 'package:flutter_web/core/services/logger.dart';

class AppResponse {
  final dynamic object;
  final String errorMessage;

  const AppResponse({this.object, this.errorMessage = ''});

  factory AppResponse.success(dynamic object) {
    return AppResponse(object: object);
  }

  factory AppResponse.withError(Exception e, StackTrace s) {
    late final String error;
    if (e is DioError) {
      switch (e.type) {
        case DioErrorType.cancel:
          error = "Request was cancelled";
          break;
        case DioErrorType.connectTimeout:
          error = "Connection timeout";
          break;
        case DioErrorType.receiveTimeout:
          error = "Receive timeout in connection";
          break;
        case DioErrorType.sendTimeout:
          error = "Receive timeout in send request";
          break;
        case DioErrorType.other:
          if (e.error is SocketException) {
            error = 'Check network connection';
          } else if (e.error is FormatException) {
            error = 'Format problem';
          } else {
            error = e.message;
          }
          break;
        case DioErrorType.response:
        default:
          error = e.message;
      }
    } else {
      error = e.toString();
    }
    log.w(error);
    return AppResponse(errorMessage: error);
  }
}
