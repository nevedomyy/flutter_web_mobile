part of 'details_bloc.dart';

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState.initial() = _DetailsInitialState;

  const factory DetailsState.loading() = _DetailsLoadingState;

  const factory DetailsState.loaded({required Movie movie}) =
      _DetailsLoadedState;

  const factory DetailsState.error({required String message}) =
      _DetailsErrorState;
}
