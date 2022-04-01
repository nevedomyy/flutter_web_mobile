import 'package:dio/dio.dart' show Dio;
import 'package:injectable/injectable.dart' show lazySingleton, module;

import 'package:flutter_web/core/api/api_provider.dart';
import 'package:flutter_web/core/api/dio_config.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio get dio => DioConfig.instance();

  @lazySingleton
  ApiProvider get apiProvider => ApiProvider(dio);
}
