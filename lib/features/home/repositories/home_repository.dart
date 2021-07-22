import 'package:flutter_web/core/api/api_provider.dart';
import 'package:flutter_web/core/models/app_response.dart';
import 'package:injectable/injectable.dart';

abstract class HomeRepository<T> {
  Future<T> fetchData();
}

@LazySingleton(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final ApiProvider apiProvider;

  HomeRepositoryImpl({required this.apiProvider});

  @override
  Future<AppResponse> fetchData() async {
    try {
      final data = await apiProvider.getMovies();
      return AppResponse.success(data);
    } on Exception catch (e, s) {
      return AppResponse.withError(e, s);
    }
  }
}
