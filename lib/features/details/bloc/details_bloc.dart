import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_web/features/details/models/movie.dart';
import 'package:flutter_web/features/details/repositories/details_repository.dart';

part 'details_state.dart';

class DetailsBloc extends Cubit<DetailsState> {
  final DetailsRepository repository;

  DetailsBloc({required this.repository}) : super(DetailsInitial());

  Future init(int id) async {
    emit(DetailsLoadingState());
    final data = await repository.fetchData(id);
    if (data.object != null) {
      emit(DetailsLoadedState(movie: data.object));
    } else if (data.errorMessage.isNotEmpty) {
      emit(DetailsErrorState(message: data.errorMessage));
    }
  }
}
