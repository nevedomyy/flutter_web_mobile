import 'package:injectable/injectable.dart' show LazySingleton;

import 'package:flutter_web/core/api/api_provider.dart';
import 'package:flutter_web/core/global/wrapper.dart';
import 'package:flutter_web/core/models/app_response.dart';

abstract class HomeRepository {
  Future<AppResponse> fetchData();
}

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final ApiProvider apiProvider;

  HomeRepositoryImpl({required this.apiProvider});

  @override
  Future<AppResponse> fetchData() async {
    return await tryCatchResponse(() async {
      return await apiProvider.getMovies();
    });
  }
}
