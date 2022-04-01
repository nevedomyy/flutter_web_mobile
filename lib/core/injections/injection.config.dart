// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/details/repositories/details_repository.dart' as _i4;
import '../../features/home/repositories/home_repository.dart' as _i6;
import '../api/api_provider.dart' as _i3;
import 'register_module.dart' as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.ApiProvider>(() => registerModule.apiProvider);
  gh.lazySingleton<_i4.DetailsRepository>(
      () => _i4.DetailsRepositoryImpl(apiProvider: get<_i3.ApiProvider>()));
  gh.lazySingleton<_i5.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i6.HomeRepository>(
      () => _i6.HomeRepositoryImpl(apiProvider: get<_i3.ApiProvider>()));
  return get;
}

class _$RegisterModule extends _i7.RegisterModule {}
