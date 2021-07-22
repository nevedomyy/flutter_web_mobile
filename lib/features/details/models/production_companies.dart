import 'package:freezed_annotation/freezed_annotation.dart';

part 'production_companies.freezed.dart';
part 'production_companies.g.dart';

@freezed
class ProductionCompanies with _$ProductionCompanies {
  factory ProductionCompanies({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'logo_path') String? logoPath,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'origin_country') String? originCountry,
  }) = _ProductionCompanies;

  factory ProductionCompanies.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompaniesFromJson(json);
}
