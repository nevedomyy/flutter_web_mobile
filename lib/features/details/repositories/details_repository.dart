import 'package:flutter_web/core/api/api_provider.dart';
import 'package:flutter_web/core/models/app_response.dart';
import 'package:injectable/injectable.dart';

abstract class DetailsRepository<T> {
  Future<T> fetchData(int id);
}

@LazySingleton(as: DetailsRepository)
class DetailsRepositoryImpl implements DetailsRepository {
  final ApiProvider apiProvider;

  DetailsRepositoryImpl({required this.apiProvider});

  @override
  Future<AppResponse> fetchData(int id) async {
    try {
      final data = await apiProvider.getDetails(id);
      return AppResponse.success(data);
    } on Exception catch (e, s) {
      return AppResponse.withError(e, s);
    }
  }
}
