// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'production_countries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductionCountries _$ProductionCountriesFromJson(Map<String, dynamic> json) {
  return _ProductionCountries.fromJson(json);
}

/// @nodoc
class _$ProductionCountriesTearOff {
  const _$ProductionCountriesTearOff();

  _ProductionCountries call(
      {@JsonKey(name: 'iso_3166_1') String? iso31661,
      @JsonKey(name: 'name') String? name}) {
    return _ProductionCountries(
      iso31661: iso31661,
      name: name,
    );
  }

  ProductionCountries fromJson(Map<String, Object> json) {
    return ProductionCountries.fromJson(json);
  }
}

/// @nodoc
const $ProductionCountries = _$ProductionCountriesTearOff();

/// @nodoc
mixin _$ProductionCountries {
  @JsonKey(name: 'iso_3166_1')
  String? get iso31661 => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductionCountriesCopyWith<ProductionCountries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductionCountriesCopyWith<$Res> {
  factory $ProductionCountriesCopyWith(
          ProductionCountries value, $Res Function(ProductionCountries) then) =
      _$ProductionCountriesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'iso_3166_1') String? iso31661,
      @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$ProductionCountriesCopyWithImpl<$Res>
    implements $ProductionCountriesCopyWith<$Res> {
  _$ProductionCountriesCopyWithImpl(this._value, this._then);

  final ProductionCountries _value;
  // ignore: unused_field
  final $Res Function(ProductionCountries) _then;

  @override
  $Res call({
    Object? iso31661 = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      iso31661: iso31661 == freezed
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ProductionCountriesCopyWith<$Res>
    implements $ProductionCountriesCopyWith<$Res> {
  factory _$ProductionCountriesCopyWith(_ProductionCountries value,
          $Res Function(_ProductionCountries) then) =
      __$ProductionCountriesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'iso_3166_1') String? iso31661,
      @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$ProductionCountriesCopyWithImpl<$Res>
    extends _$ProductionCountriesCopyWithImpl<$Res>
    implements _$ProductionCountriesCopyWith<$Res> {
  __$ProductionCountriesCopyWithImpl(
      _ProductionCountries _value, $Res Function(_ProductionCountries) _then)
      : super(_value, (v) => _then(v as _ProductionCountries));

  @override
  _ProductionCountries get _value => super._value as _ProductionCountries;

  @override
  $Res call({
    Object? iso31661 = freezed,
    Object? name = freezed,
  }) {
    return _then(_ProductionCountries(
      iso31661: iso31661 == freezed
          ? _value.iso31661
          : iso31661 // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductionCountries implements _ProductionCountries {
  _$_ProductionCountries(
      {@JsonKey(name: 'iso_3166_1') this.iso31661,
      @JsonKey(name: 'name') this.name});

  factory _$_ProductionCountries.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductionCountriesFromJson(json);

  @override
  @JsonKey(name: 'iso_3166_1')
  final String? iso31661;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'ProductionCountries(iso31661: $iso31661, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductionCountries &&
            (identical(other.iso31661, iso31661) ||
                const DeepCollectionEquality()
                    .equals(other.iso31661, iso31661)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(iso31661) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$ProductionCountriesCopyWith<_ProductionCountries> get copyWith =>
      __$ProductionCountriesCopyWithImpl<_ProductionCountries>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductionCountriesToJson(this);
  }
}

abstract class _ProductionCountries implements ProductionCountries {
  factory _ProductionCountries(
      {@JsonKey(name: 'iso_3166_1') String? iso31661,
      @JsonKey(name: 'name') String? name}) = _$_ProductionCountries;

  factory _ProductionCountries.fromJson(Map<String, dynamic> json) =
      _$_ProductionCountries.fromJson;

  @override
  @JsonKey(name: 'iso_3166_1')
  String? get iso31661 => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductionCountriesCopyWith<_ProductionCountries> get copyWith =>
      throw _privateConstructorUsedError;
}
