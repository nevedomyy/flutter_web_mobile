// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_companies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductionCompanies _$_$_ProductionCompaniesFromJson(
    Map<String, dynamic> json) {
  return _$_ProductionCompanies(
    id: json['id'] as int?,
    logoPath: json['logo_path'] as String?,
    name: json['name'] as String?,
    originCountry: json['origin_country'] as String?,
  );
}

Map<String, dynamic> _$_$_ProductionCompaniesToJson(
        _$_ProductionCompanies instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo_path': instance.logoPath,
      'name': instance.name,
      'origin_country': instance.originCountry,
    };
