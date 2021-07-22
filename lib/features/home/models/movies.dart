import 'package:freezed_annotation/freezed_annotation.dart';

import 'dates.dart';
import 'results.dart';

part 'movies.freezed.dart';
part 'movies.g.dart';

@freezed
class Movies with _$Movies {
  factory Movies({
    @JsonKey(name: 'dates') Dates? dates,
    @JsonKey(name: 'page') int? page,
    @JsonKey(name: 'results') List<Results>? results,
    @JsonKey(name: 'total_pages') int? totalPages,
    @JsonKey(name: 'total_results') int? totalResults,
  }) = _Movies;

  factory Movies.fromJson(Map<String, dynamic> json) => _$MoviesFromJson(json);
}
