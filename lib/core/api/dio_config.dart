import 'package:dio/dio.dart';
import 'package:flutter_web/core/services/logger.dart';

class DioConfig {
  static Dio? _dio;

  DioConfig._();

  static Dio? instance() {
    if (_dio == null) {
      _dio = Dio(
        BaseOptions(
          connectTimeout: 8000,
          receiveTimeout: 5000,
          followRedirects: false,
        ),
      );
      _dio!.interceptors.add(
        InterceptorsWrapper(
          onResponse: (response, handler) async {
            log.i('${response.requestOptions.path}\n${response.data}');
            return handler.next(response);
          },
          onError: (error, handler) async {
            //...
            return handler.next(error);
          },
        ),
      );
    }
    return _dio;
  }
}
