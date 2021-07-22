// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'genres.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Genres _$GenresFromJson(Map<String, dynamic> json) {
  return _Genres.fromJson(json);
}

/// @nodoc
class _$GenresTearOff {
  const _$GenresTearOff();

  _Genres call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name}) {
    return _Genres(
      id: id,
      name: name,
    );
  }

  Genres fromJson(Map<String, Object> json) {
    return Genres.fromJson(json);
  }
}

/// @nodoc
const $Genres = _$GenresTearOff();

/// @nodoc
mixin _$Genres {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenresCopyWith<Genres> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenresCopyWith<$Res> {
  factory $GenresCopyWith(Genres value, $Res Function(Genres) then) =
      _$GenresCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class _$GenresCopyWithImpl<$Res> implements $GenresCopyWith<$Res> {
  _$GenresCopyWithImpl(this._value, this._then);

  final Genres _value;
  // ignore: unused_field
  final $Res Function(Genres) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$GenresCopyWith<$Res> implements $GenresCopyWith<$Res> {
  factory _$GenresCopyWith(_Genres value, $Res Function(_Genres) then) =
      __$GenresCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id, @JsonKey(name: 'name') String? name});
}

/// @nodoc
class __$GenresCopyWithImpl<$Res> extends _$GenresCopyWithImpl<$Res>
    implements _$GenresCopyWith<$Res> {
  __$GenresCopyWithImpl(_Genres _value, $Res Function(_Genres) _then)
      : super(_value, (v) => _then(v as _Genres));

  @override
  _Genres get _value => super._value as _Genres;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_Genres(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Genres implements _Genres {
  _$_Genres({@JsonKey(name: 'id') this.id, @JsonKey(name: 'name') this.name});

  factory _$_Genres.fromJson(Map<String, dynamic> json) =>
      _$_$_GenresFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;

  @override
  String toString() {
    return 'Genres(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Genres &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$GenresCopyWith<_Genres> get copyWith =>
      __$GenresCopyWithImpl<_Genres>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GenresToJson(this);
  }
}

abstract class _Genres implements Genres {
  factory _Genres(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name}) = _$_Genres;

  factory _Genres.fromJson(Map<String, dynamic> json) = _$_Genres.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GenresCopyWith<_Genres> get copyWith => throw _privateConstructorUsedError;
}
