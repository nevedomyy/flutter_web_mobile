import 'package:bloc/bloc.dart' show Cubit;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_web/features/details/models/movie.dart';
import 'package:flutter_web/features/details/repositories/details_repository.dart';

part 'details_bloc.freezed.dart';
part 'details_state.dart';

class DetailsBloc extends Cubit<DetailsState> {
  final DetailsRepository repository;

  DetailsBloc({required this.repository}) : super(const DetailsState.initial());

  Future init(int id) async {
    emit(const DetailsState.loading());
    final data = await repository.fetchData(id);
    if (data.object != null) {
      emit(DetailsState.loaded(movie: data.object));
    } else if (data.errorMessage.isNotEmpty) {
      emit(DetailsState.error(message: data.errorMessage));
    }
  }
}
