// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/details/repositories/details_repository.dart' as _i3;
import '../../features/home/repositories/home_repository.dart' as _i5;
import '../api/api_provider.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DetailsRepository<dynamic>>(
      () => _i3.DetailsRepositoryImpl(apiProvider: get<_i4.ApiProvider>()));
  gh.lazySingleton<_i5.HomeRepository<dynamic>>(
      () => _i5.HomeRepositoryImpl(apiProvider: get<_i4.ApiProvider>()));
  return get;
}
