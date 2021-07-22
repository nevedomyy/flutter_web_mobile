import 'package:dio/dio.dart';
import 'package:flutter_web/core/api/api_provider.dart';
import 'package:flutter_web/core/api/dio_config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
Future configureDependencies() async {
  getIt.registerSingleton<Dio>(DioConfig.instance()!);
  getIt.registerSingleton<ApiProvider>(ApiProvider(getIt()));
  await $initGetIt(getIt);
}
