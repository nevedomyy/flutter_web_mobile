part of 'details_bloc.dart';

abstract class DetailsState extends Equatable {
  const DetailsState();

  @override
  List<Object> get props => [];
}

class DetailsInitial extends DetailsState {}

class DetailsLoadingState extends DetailsState {}

class DetailsLoadedState extends DetailsState {
  final Movie movie;

  const DetailsLoadedState({required this.movie});

  @override
  List<Object> get props => [movie];
}

class DetailsErrorState extends DetailsState {
  final String message;

  const DetailsErrorState({required this.message});

  @override
  List<Object> get props => [message];
}
