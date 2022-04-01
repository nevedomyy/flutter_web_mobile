import 'package:freezed_annotation/freezed_annotation.dart';

part 'results.freezed.dart';
part 'results.g.dart';

@freezed
class Results with _$Results {
  factory Results({
    @JsonKey(name: 'adult') bool? adult,
    @Default('') @JsonKey(name: 'backdrop_path') String? backdropPath,
    @JsonKey(name: 'genre_ids') List<int>? genreIds,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'original_language') String? originalLanguage,
    @JsonKey(name: 'original_title') String? originalTitle,
    @JsonKey(name: 'overview') String? overview,
    @JsonKey(name: 'popularity') double? popularity,
    @Default('') @JsonKey(name: 'poster_path') String posterPath,
    @JsonKey(name: 'release_date') String? releaseDate,
    @Default('') @JsonKey(name: 'title') String title,
    @JsonKey(name: 'video') bool? video,
    @Default(0) @JsonKey(name: 'vote_average') double voteAverage,
    @JsonKey(name: 'vote_count') int? voteCount,
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}
