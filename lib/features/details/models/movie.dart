import 'package:freezed_annotation/freezed_annotation.dart';

import 'genres.dart';
import 'production_companies.dart';
import 'production_countries.dart';
import 'spoken_languages.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  factory Movie({
    @JsonKey(name: 'adult') bool? adult,
    @Default('') @JsonKey(name: 'backdrop_path') String backdropPath,
    @JsonKey(name: 'belongs_to_collection') Object? belongsToCollection,
    @JsonKey(name: 'budget') int? budget,
    @JsonKey(name: 'genres') List<Genres>? genres,
    @JsonKey(name: 'homepage') String? homepage,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'imdb_id') String? imdbId,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'original_title') String? originalTitle,
    @Default('') @JsonKey(name: 'overview') String overview,
    @JsonKey(name: 'popularity') double? popularity,
    @Default('') @JsonKey(name: 'poster_path') String posterPath,
    @JsonKey(name: 'production_companies')
        List<ProductionCompanies>? productionCompanies,
    @JsonKey(name: 'production_countries')
        List<ProductionCountries>? productionCountries,
    @JsonKey(name: 'release_date') String? releaseDate,
    @JsonKey(name: 'revenue') int? revenue,
    @JsonKey(name: 'runtime') int? runtime,
    @JsonKey(name: 'spoken_languages') List<SpokenLanguages>? spokenLanguages,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'tagline') String? tagline,
    @Default('') @JsonKey(name: 'title') String title,
    @JsonKey(name: 'video') bool? video,
    @JsonKey(name: 'vote_average') double? voteAverage,
    @JsonKey(name: 'vote_count') int? voteCount,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
