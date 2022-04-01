import 'package:flutter_web/core/api/end_points.dart';
import 'package:flutter_web/features/details/models/movie.dart';
import 'package:flutter_web/features/home/models/movies.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'api_provider.g.dart';

@RestApi()
abstract class ApiProvider {
  factory ApiProvider(Dio dio) = _ApiProvider;

  @GET(EndPoints.upcomingMovies)
  Future<Movies> getMovies();

  @GET('/{id}')
  Future<Movie> getDetails(
    @Path('id') int id,
  );
}
