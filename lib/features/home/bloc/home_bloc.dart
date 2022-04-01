import 'package:bloc/bloc.dart' show Cubit;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_web/features/home/models/movies.dart';
import 'package:flutter_web/features/home/repositories/home_repository.dart';

part 'home_bloc.freezed.dart';
part 'home_state.dart';

class HomeBloc extends Cubit<HomeState> {
  final HomeRepository repository;

  HomeBloc({required this.repository}) : super(const HomeState.initial());

  Future init() async {
    emit(const HomeState.loading());
    final data = await repository.fetchData();
    if (data.object != null) {
      emit(HomeState.loaded(movies: data.object));
    } else if (data.errorMessage.isNotEmpty) {
      emit(HomeState.error(message: data.errorMessage));
    }
  }
}
