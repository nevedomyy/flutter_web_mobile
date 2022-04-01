import 'package:dio/dio.dart' show BaseOptions, Dio;
import 'package:flutter_web/core/api/end_points.dart';

import 'dio_interceptors.dart';

class DioConfig {
  static Dio? _dio;

  DioConfig._();

  static Dio instance() {
    return _dio ??= Dio(
      BaseOptions(
        baseUrl: EndPoints.baseUrl,
        connectTimeout: 8000,
        receiveTimeout: 5000,
        followRedirects: false,
      ),
    )..interceptors.addAll([
        ApiKeyInterceptor(),
        LoggerInterceptor(),
      ]);
  }
}
