import 'dart:io';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_web/core/services/logger.dart';

class AppResponse extends Equatable {
  final Object? object;
  final String? errorMessage;

  const AppResponse({this.object, this.errorMessage});

  factory AppResponse.success(Object? object) {
    return AppResponse(object: object, errorMessage: null);
  }

  factory AppResponse.withError(Exception e, StackTrace s) {
    String error = 'Error';
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
        // case DioErrorType.response:
        //   error = "Received invalid status code: ${e.response!.statusCode}";
        //   break;
        case DioErrorType.sendTimeout:
          error = "Receive timeout in send request";
          break;
        case DioErrorType.other:
          if (e.error is SocketException) error = 'Check network connection';
          if (e.error is FormatException) error = 'Format problem';
          break;
        // default:
        //   error = e.error?.toString() ?? 'Error';
      }
    }
    if (e is SocketException) error = 'Check network connection';
    if (e is FormatException) error = 'Format problem';
    //getIt<Crashlytics>().error(e, s);
    log.w(error);
    return AppResponse(object: null, errorMessage: error);
  }

  @override
  List<Object?> get props => [object, errorMessage];
}
