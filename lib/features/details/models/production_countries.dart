import 'package:freezed_annotation/freezed_annotation.dart';

part 'production_countries.freezed.dart';
part 'production_countries.g.dart';

@freezed
class ProductionCountries with _$ProductionCountries {
  factory ProductionCountries({
    @JsonKey(name: 'iso_3166_1') String? iso31661,
    @JsonKey(name: 'name') String? name,
  }) = _ProductionCountries;

  factory ProductionCountries.fromJson(Map<String, dynamic> json) =>
      _$ProductionCountriesFromJson(json);
}
