part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _HomeInitialState;

  const factory HomeState.loading() = _HomeLoadingState;

  const factory HomeState.loaded({required Movies movies}) = _HomeLoadedState;

  const factory HomeState.error({required String message}) = _HomeErrorState;
}
