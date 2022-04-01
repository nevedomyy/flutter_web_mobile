import 'package:injectable/injectable.dart' show LazySingleton;

import 'package:flutter_web/core/api/api_provider.dart';
import 'package:flutter_web/core/global/wrapper.dart';
import 'package:flutter_web/core/models/app_response.dart';

abstract class DetailsRepository {
  Future<AppResponse> fetchData(int id);
}

@LazySingleton(as: DetailsRepository)
class DetailsRepositoryImpl implements DetailsRepository {
  final ApiProvider apiProvider;

  DetailsRepositoryImpl({required this.apiProvider});

  @override
  Future<AppResponse> fetchData(int id) async {
    return await tryCatchResponse(() async {
      return await apiProvider.getDetails(id);
    });
  }
}
