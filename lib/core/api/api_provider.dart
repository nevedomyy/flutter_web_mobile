import 'package:flutter_web/core/global/api_key.dart';
import 'package:flutter_web/core/api/end_points.dart';
import 'package:flutter_web/features/details/models/movie.dart';
import 'package:flutter_web/features/home/models/movies.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'api_provider.g.dart';

@RestApi(baseUrl: BASE_URL)
abstract class ApiProvider {
  factory ApiProvider(Dio dio) = _ApiProvider;

  @GET('$UPCOMING_MOVIES?api_key=$API_KEY')
  Future<Movies> getMovies();

  @GET('{id}?api_key=$API_KEY')
  Future<Movie> getDetails(@Path('id') int id);
}
