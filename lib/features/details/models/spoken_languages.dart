import 'package:freezed_annotation/freezed_annotation.dart';

part 'spoken_languages.freezed.dart';
part 'spoken_languages.g.dart';

@freezed
class SpokenLanguages with _$SpokenLanguages {
  factory SpokenLanguages({
    @JsonKey(name: 'english_name') String? englishName,
    @JsonKey(name: 'iso_639_1') String? iso6391,
    @JsonKey(name: 'name') String? name,
  }) = _SpokenLanguages;

  factory SpokenLanguages.fromJson(Map<String, dynamic> json) =>
      _$SpokenLanguagesFromJson(json);
}
