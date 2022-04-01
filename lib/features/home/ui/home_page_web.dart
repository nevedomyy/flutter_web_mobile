import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;

import 'package:flutter_web/core/utils/utils.dart';
import 'package:flutter_web/features/home/bloc/home_bloc.dart';

import 'widgets/home_movies_web.dart';

class HomePageWeb extends StatefulWidget {
  const HomePageWeb({Key? key}) : super(key: key);

  @override
  _HomePageWebState createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
  @override
  void initState() {
    super.initState();
    context.bloc<HomeBloc>().init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black14,
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 800,
          constraints: const BoxConstraints(
            minHeight: double.infinity,
          ),
          decoration: const BoxDecoration(
            color: AppColor.black11,
            boxShadow: [
              BoxShadow(color: Colors.black87, blurRadius: 5),
            ],
          ),
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox(),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                loaded: (movies) => HomeMoviesWeb(movies: movies),
                error: (message) => Center(
                  child: Text(message),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
