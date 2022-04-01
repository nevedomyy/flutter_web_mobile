// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DetailsStateTearOff {
  const _$DetailsStateTearOff();

  _DetailsInitialState initial() {
    return const _DetailsInitialState();
  }

  _DetailsLoadingState loading() {
    return const _DetailsLoadingState();
  }

  _DetailsLoadedState loaded({required Movie movie}) {
    return _DetailsLoadedState(
      movie: movie,
    );
  }

  _DetailsErrorState error({required String message}) {
    return _DetailsErrorState(
      message: message,
    );
  }
}

/// @nodoc
const $DetailsState = _$DetailsStateTearOff();

/// @nodoc
mixin _$DetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Movie movie) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Movie movie)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsInitialState value) initial,
    required TResult Function(_DetailsLoadingState value) loading,
    required TResult Function(_DetailsLoadedState value) loaded,
    required TResult Function(_DetailsErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsInitialState value)? initial,
    TResult Function(_DetailsLoadingState value)? loading,
    TResult Function(_DetailsLoadedState value)? loaded,
    TResult Function(_DetailsErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsStateCopyWith<$Res> {
  factory $DetailsStateCopyWith(
          DetailsState value, $Res Function(DetailsState) then) =
      _$DetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsStateCopyWithImpl<$Res> implements $DetailsStateCopyWith<$Res> {
  _$DetailsStateCopyWithImpl(this._value, this._then);

  final DetailsState _value;
  // ignore: unused_field
  final $Res Function(DetailsState) _then;
}

/// @nodoc
abstract class _$DetailsInitialStateCopyWith<$Res> {
  factory _$DetailsInitialStateCopyWith(_DetailsInitialState value,
          $Res Function(_DetailsInitialState) then) =
      __$DetailsInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$DetailsInitialStateCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res>
    implements _$DetailsInitialStateCopyWith<$Res> {
  __$DetailsInitialStateCopyWithImpl(
      _DetailsInitialState _value, $Res Function(_DetailsInitialState) _then)
      : super(_value, (v) => _then(v as _DetailsInitialState));

  @override
  _DetailsInitialState get _value => super._value as _DetailsInitialState;
}

/// @nodoc

class _$_DetailsInitialState implements _DetailsInitialState {
  const _$_DetailsInitialState();

  @override
  String toString() {
    return 'DetailsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DetailsInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Movie movie) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Movie movie)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsInitialState value) initial,
    required TResult Function(_DetailsLoadingState value) loading,
    required TResult Function(_DetailsLoadedState value) loaded,
    required TResult Function(_DetailsErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsInitialState value)? initial,
    TResult Function(_DetailsLoadingState value)? loading,
    TResult Function(_DetailsLoadedState value)? loaded,
    TResult Function(_DetailsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _DetailsInitialState implements DetailsState {
  const factory _DetailsInitialState() = _$_DetailsInitialState;
}

/// @nodoc
abstract class _$DetailsLoadingStateCopyWith<$Res> {
  factory _$DetailsLoadingStateCopyWith(_DetailsLoadingState value,
          $Res Function(_DetailsLoadingState) then) =
      __$DetailsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$DetailsLoadingStateCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res>
    implements _$DetailsLoadingStateCopyWith<$Res> {
  __$DetailsLoadingStateCopyWithImpl(
      _DetailsLoadingState _value, $Res Function(_DetailsLoadingState) _then)
      : super(_value, (v) => _then(v as _DetailsLoadingState));

  @override
  _DetailsLoadingState get _value => super._value as _DetailsLoadingState;
}

/// @nodoc

class _$_DetailsLoadingState implements _DetailsLoadingState {
  const _$_DetailsLoadingState();

  @override
  String toString() {
    return 'DetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DetailsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Movie movie) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Movie movie)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsInitialState value) initial,
    required TResult Function(_DetailsLoadingState value) loading,
    required TResult Function(_DetailsLoadedState value) loaded,
    required TResult Function(_DetailsErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsInitialState value)? initial,
    TResult Function(_DetailsLoadingState value)? loading,
    TResult Function(_DetailsLoadedState value)? loaded,
    TResult Function(_DetailsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _DetailsLoadingState implements DetailsState {
  const factory _DetailsLoadingState() = _$_DetailsLoadingState;
}

/// @nodoc
abstract class _$DetailsLoadedStateCopyWith<$Res> {
  factory _$DetailsLoadedStateCopyWith(
          _DetailsLoadedState value, $Res Function(_DetailsLoadedState) then) =
      __$DetailsLoadedStateCopyWithImpl<$Res>;
  $Res call({Movie movie});

  $MovieCopyWith<$Res> get movie;
}

/// @nodoc
class __$DetailsLoadedStateCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res>
    implements _$DetailsLoadedStateCopyWith<$Res> {
  __$DetailsLoadedStateCopyWithImpl(
      _DetailsLoadedState _value, $Res Function(_DetailsLoadedState) _then)
      : super(_value, (v) => _then(v as _DetailsLoadedState));

  @override
  _DetailsLoadedState get _value => super._value as _DetailsLoadedState;

  @override
  $Res call({
    Object? movie = freezed,
  }) {
    return _then(_DetailsLoadedState(
      movie: movie == freezed
          ? _value.movie
          : movie // ignore: cast_nullable_to_non_nullable
              as Movie,
    ));
  }

  @override
  $MovieCopyWith<$Res> get movie {
    return $MovieCopyWith<$Res>(_value.movie, (value) {
      return _then(_value.copyWith(movie: value));
    });
  }
}

/// @nodoc

class _$_DetailsLoadedState implements _DetailsLoadedState {
  const _$_DetailsLoadedState({required this.movie});

  @override
  final Movie movie;

  @override
  String toString() {
    return 'DetailsState.loaded(movie: $movie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailsLoadedState &&
            (identical(other.movie, movie) ||
                const DeepCollectionEquality().equals(other.movie, movie)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movie);

  @JsonKey(ignore: true)
  @override
  _$DetailsLoadedStateCopyWith<_DetailsLoadedState> get copyWith =>
      __$DetailsLoadedStateCopyWithImpl<_DetailsLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Movie movie) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(movie);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Movie movie)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(movie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsInitialState value) initial,
    required TResult Function(_DetailsLoadingState value) loading,
    required TResult Function(_DetailsLoadedState value) loaded,
    required TResult Function(_DetailsErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsInitialState value)? initial,
    TResult Function(_DetailsLoadingState value)? loading,
    TResult Function(_DetailsLoadedState value)? loaded,
    TResult Function(_DetailsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _DetailsLoadedState implements DetailsState {
  const factory _DetailsLoadedState({required Movie movie}) =
      _$_DetailsLoadedState;

  Movie get movie => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DetailsLoadedStateCopyWith<_DetailsLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DetailsErrorStateCopyWith<$Res> {
  factory _$DetailsErrorStateCopyWith(
          _DetailsErrorState value, $Res Function(_DetailsErrorState) then) =
      __$DetailsErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$DetailsErrorStateCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res>
    implements _$DetailsErrorStateCopyWith<$Res> {
  __$DetailsErrorStateCopyWithImpl(
      _DetailsErrorState _value, $Res Function(_DetailsErrorState) _then)
      : super(_value, (v) => _then(v as _DetailsErrorState));

  @override
  _DetailsErrorState get _value => super._value as _DetailsErrorState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_DetailsErrorState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DetailsErrorState implements _DetailsErrorState {
  const _$_DetailsErrorState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'DetailsState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DetailsErrorState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$DetailsErrorStateCopyWith<_DetailsErrorState> get copyWith =>
      __$DetailsErrorStateCopyWithImpl<_DetailsErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Movie movie) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Movie movie)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsInitialState value) initial,
    required TResult Function(_DetailsLoadingState value) loading,
    required TResult Function(_DetailsLoadedState value) loaded,
    required TResult Function(_DetailsErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsInitialState value)? initial,
    TResult Function(_DetailsLoadingState value)? loading,
    TResult Function(_DetailsLoadedState value)? loaded,
    TResult Function(_DetailsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _DetailsErrorState implements DetailsState {
  const factory _DetailsErrorState({required String message}) =
      _$_DetailsErrorState;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DetailsErrorStateCopyWith<_DetailsErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
