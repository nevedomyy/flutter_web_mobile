import 'package:dio/dio.dart';
import 'package:flutter_web/core/global/api_key.dart';
import 'package:flutter_web/core/services/logger.dart';

class LoggerInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
    log.i('${response.requestOptions.path}\n${response.data}');
  }
}

class ApiKeyInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
    options.queryParameters.addAll({'api_key': apiKey});
  }
}
