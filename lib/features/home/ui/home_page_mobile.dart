import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;

import 'package:flutter_web/core/utils/utils.dart';
import 'package:flutter_web/features/home/bloc/home_bloc.dart';

import 'widgets/home_movies_mobile.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({Key? key}) : super(key: key);

  @override
  _HomePageMobileState createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  static const _title = 'Movies';

  @override
  void initState() {
    super.initState();
    context.bloc<HomeBloc>().init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black14,
      appBar: AppBar(
        backgroundColor: AppColor.black11,
        brightness: Brightness.dark,
        title: const Text(
          _title,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (movies) => HomeMoviesMobile(movies: movies),
            error: (message) => Center(
              child: Text(message),
            ),
          );
        },
      ),
    );
  }
}
