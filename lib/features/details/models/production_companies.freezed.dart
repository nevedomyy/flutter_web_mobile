// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'production_companies.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductionCompanies _$ProductionCompaniesFromJson(Map<String, dynamic> json) {
  return _ProductionCompanies.fromJson(json);
}

/// @nodoc
class _$ProductionCompaniesTearOff {
  const _$ProductionCompaniesTearOff();

  _ProductionCompanies call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'logo_path') String? logoPath,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'origin_country') String? originCountry}) {
    return _ProductionCompanies(
      id: id,
      logoPath: logoPath,
      name: name,
      originCountry: originCountry,
    );
  }

  ProductionCompanies fromJson(Map<String, Object> json) {
    return ProductionCompanies.fromJson(json);
  }
}

/// @nodoc
const $ProductionCompanies = _$ProductionCompaniesTearOff();

/// @nodoc
mixin _$ProductionCompanies {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_path')
  String? get logoPath => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'origin_country')
  String? get originCountry => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductionCompaniesCopyWith<ProductionCompanies> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionCompaniesCopyWith<$Res> {
  factory $ProductionCompaniesCopyWith(
          ProductionCompanies value, $Res Function(ProductionCompanies) then) =
      _$ProductionCompaniesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'logo_path') String? logoPath,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'origin_country') String? originCountry});
}

/// @nodoc
class _$ProductionCompaniesCopyWithImpl<$Res>
    implements $ProductionCompaniesCopyWith<$Res> {
  _$ProductionCompaniesCopyWithImpl(this._value, this._then);

  final ProductionCompanies _value;
  // ignore: unused_field
  final $Res Function(ProductionCompanies) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? logoPath = freezed,
    Object? name = freezed,
    Object? originCountry = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      logoPath: logoPath == freezed
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originCountry: originCountry == freezed
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ProductionCompaniesCopyWith<$Res>
    implements $ProductionCompaniesCopyWith<$Res> {
  factory _$ProductionCompaniesCopyWith(_ProductionCompanies value,
          $Res Function(_ProductionCompanies) then) =
      __$ProductionCompaniesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'logo_path') String? logoPath,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'origin_country') String? originCountry});
}

/// @nodoc
class __$ProductionCompaniesCopyWithImpl<$Res>
    extends _$ProductionCompaniesCopyWithImpl<$Res>
    implements _$ProductionCompaniesCopyWith<$Res> {
  __$ProductionCompaniesCopyWithImpl(
      _ProductionCompanies _value, $Res Function(_ProductionCompanies) _then)
      : super(_value, (v) => _then(v as _ProductionCompanies));

  @override
  _ProductionCompanies get _value => super._value as _ProductionCompanies;

  @override
  $Res call({
    Object? id = freezed,
    Object? logoPath = freezed,
    Object? name = freezed,
    Object? originCountry = freezed,
  }) {
    return _then(_ProductionCompanies(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      logoPath: logoPath == freezed
          ? _value.logoPath
          : logoPath // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      originCountry: originCountry == freezed
          ? _value.originCountry
          : originCountry // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductionCompanies implements _ProductionCompanies {
  _$_ProductionCompanies(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'logo_path') this.logoPath,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'origin_country') this.originCountry});

  factory _$_ProductionCompanies.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductionCompaniesFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'logo_path')
  final String? logoPath;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'origin_country')
  final String? originCountry;

  @override
  String toString() {
    return 'ProductionCompanies(id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductionCompanies &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.logoPath, logoPath) ||
                const DeepCollectionEquality()
                    .equals(other.logoPath, logoPath)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.originCountry, originCountry) ||
                const DeepCollectionEquality()
                    .equals(other.originCountry, originCountry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(logoPath) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(originCountry);

  @JsonKey(ignore: true)
  @override
  _$ProductionCompaniesCopyWith<_ProductionCompanies> get copyWith =>
      __$ProductionCompaniesCopyWithImpl<_ProductionCompanies>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductionCompaniesToJson(this);
  }
}

abstract class _ProductionCompanies implements ProductionCompanies {
  factory _ProductionCompanies(
          {@JsonKey(name: 'id') int? id,
          @JsonKey(name: 'logo_path') String? logoPath,
          @JsonKey(name: 'name') String? name,
          @JsonKey(name: 'origin_country') String? originCountry}) =
      _$_ProductionCompanies;

  factory _ProductionCompanies.fromJson(Map<String, dynamic> json) =
      _$_ProductionCompanies.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'logo_path')
  String? get logoPath => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'origin_country')
  String? get originCountry => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductionCompaniesCopyWith<_ProductionCompanies> get copyWith =>
      throw _privateConstructorUsedError;
}
