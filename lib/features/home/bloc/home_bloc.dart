import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_web/features/home/models/movies.dart';
import 'package:flutter_web/features/home/repositories/home_repository.dart';

part 'home_state.dart';

class HomeBloc extends Cubit<HomeState> {
  final HomeRepository repository;

  HomeBloc({required this.repository}) : super(HomeInitial());

  Future init() async {
    emit(HomeLoadingState());
    final data = await repository.fetchData();
    if (data.object != null) {
      emit(HomeLoadedState(movies: data.object));
    } else if (data.errorMessage.isNotEmpty) {
      emit(HomeErrorState(message: data.errorMessage));
    }
  }
}
