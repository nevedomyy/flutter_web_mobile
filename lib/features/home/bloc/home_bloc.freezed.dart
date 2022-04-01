// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeInitialState initial() {
    return const _HomeInitialState();
  }

  _HomeLoadingState loading() {
    return const _HomeLoadingState();
  }

  _HomeLoadedState loaded({required Movies movies}) {
    return _HomeLoadedState(
      movies: movies,
    );
  }

  _HomeErrorState error({required String message}) {
    return _HomeErrorState(
      message: message,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Movies movies) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Movies movies)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitialState value) initial,
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadedState value) loaded,
    required TResult Function(_HomeErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitialState value)? initial,
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadedState value)? loaded,
    TResult Function(_HomeErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$HomeInitialStateCopyWith<$Res> {
  factory _$HomeInitialStateCopyWith(
          _HomeInitialState value, $Res Function(_HomeInitialState) then) =
      __$HomeInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeInitialStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeInitialStateCopyWith<$Res> {
  __$HomeInitialStateCopyWithImpl(
      _HomeInitialState _value, $Res Function(_HomeInitialState) _then)
      : super(_value, (v) => _then(v as _HomeInitialState));

  @override
  _HomeInitialState get _value => super._value as _HomeInitialState;
}

/// @nodoc

class _$_HomeInitialState implements _HomeInitialState {
  const _$_HomeInitialState();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _HomeInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Movies movies) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Movies movies)? loaded,
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
    required TResult Function(_HomeInitialState value) initial,
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadedState value) loaded,
    required TResult Function(_HomeErrorState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitialState value)? initial,
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadedState value)? loaded,
    TResult Function(_HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _HomeInitialState implements HomeState {
  const factory _HomeInitialState() = _$_HomeInitialState;
}

/// @nodoc
abstract class _$HomeLoadingStateCopyWith<$Res> {
  factory _$HomeLoadingStateCopyWith(
          _HomeLoadingState value, $Res Function(_HomeLoadingState) then) =
      __$HomeLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeLoadingStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeLoadingStateCopyWith<$Res> {
  __$HomeLoadingStateCopyWithImpl(
      _HomeLoadingState _value, $Res Function(_HomeLoadingState) _then)
      : super(_value, (v) => _then(v as _HomeLoadingState));

  @override
  _HomeLoadingState get _value => super._value as _HomeLoadingState;
}

/// @nodoc

class _$_HomeLoadingState implements _HomeLoadingState {
  const _$_HomeLoadingState();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _HomeLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Movies movies) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Movies movies)? loaded,
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
    required TResult Function(_HomeInitialState value) initial,
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadedState value) loaded,
    required TResult Function(_HomeErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitialState value)? initial,
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadedState value)? loaded,
    TResult Function(_HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadingState implements HomeState {
  const factory _HomeLoadingState() = _$_HomeLoadingState;
}

/// @nodoc
abstract class _$HomeLoadedStateCopyWith<$Res> {
  factory _$HomeLoadedStateCopyWith(
          _HomeLoadedState value, $Res Function(_HomeLoadedState) then) =
      __$HomeLoadedStateCopyWithImpl<$Res>;
  $Res call({Movies movies});

  $MoviesCopyWith<$Res> get movies;
}

/// @nodoc
class __$HomeLoadedStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeLoadedStateCopyWith<$Res> {
  __$HomeLoadedStateCopyWithImpl(
      _HomeLoadedState _value, $Res Function(_HomeLoadedState) _then)
      : super(_value, (v) => _then(v as _HomeLoadedState));

  @override
  _HomeLoadedState get _value => super._value as _HomeLoadedState;

  @override
  $Res call({
    Object? movies = freezed,
  }) {
    return _then(_HomeLoadedState(
      movies: movies == freezed
          ? _value.movies
          : movies // ignore: cast_nullable_to_non_nullable
              as Movies,
    ));
  }

  @override
  $MoviesCopyWith<$Res> get movies {
    return $MoviesCopyWith<$Res>(_value.movies, (value) {
      return _then(_value.copyWith(movies: value));
    });
  }
}

/// @nodoc

class _$_HomeLoadedState implements _HomeLoadedState {
  const _$_HomeLoadedState({required this.movies});

  @override
  final Movies movies;

  @override
  String toString() {
    return 'HomeState.loaded(movies: $movies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeLoadedState &&
            (identical(other.movies, movies) ||
                const DeepCollectionEquality().equals(other.movies, movies)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movies);

  @JsonKey(ignore: true)
  @override
  _$HomeLoadedStateCopyWith<_HomeLoadedState> get copyWith =>
      __$HomeLoadedStateCopyWithImpl<_HomeLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Movies movies) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(movies);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Movies movies)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(movies);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeInitialState value) initial,
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadedState value) loaded,
    required TResult Function(_HomeErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitialState value)? initial,
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadedState value)? loaded,
    TResult Function(_HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _HomeLoadedState implements HomeState {
  const factory _HomeLoadedState({required Movies movies}) = _$_HomeLoadedState;

  Movies get movies => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HomeLoadedStateCopyWith<_HomeLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HomeErrorStateCopyWith<$Res> {
  factory _$HomeErrorStateCopyWith(
          _HomeErrorState value, $Res Function(_HomeErrorState) then) =
      __$HomeErrorStateCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$HomeErrorStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeErrorStateCopyWith<$Res> {
  __$HomeErrorStateCopyWithImpl(
      _HomeErrorState _value, $Res Function(_HomeErrorState) _then)
      : super(_value, (v) => _then(v as _HomeErrorState));

  @override
  _HomeErrorState get _value => super._value as _HomeErrorState;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_HomeErrorState(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HomeErrorState implements _HomeErrorState {
  const _$_HomeErrorState({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'HomeState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HomeErrorState &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$HomeErrorStateCopyWith<_HomeErrorState> get copyWith =>
      __$HomeErrorStateCopyWithImpl<_HomeErrorState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Movies movies) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Movies movies)? loaded,
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
    required TResult Function(_HomeInitialState value) initial,
    required TResult Function(_HomeLoadingState value) loading,
    required TResult Function(_HomeLoadedState value) loaded,
    required TResult Function(_HomeErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeInitialState value)? initial,
    TResult Function(_HomeLoadingState value)? loading,
    TResult Function(_HomeLoadedState value)? loaded,
    TResult Function(_HomeErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _HomeErrorState implements HomeState {
  const factory _HomeErrorState({required String message}) = _$_HomeErrorState;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$HomeErrorStateCopyWith<_HomeErrorState> get copyWith =>
      throw _privateConstructorUsedError;
}
