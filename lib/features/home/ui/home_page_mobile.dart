import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web/core/api/end_points.dart';
import 'package:flutter_web/core/navigation/app_navigator.dart';
import 'package:flutter_web/core/utils/color.dart';
import 'package:flutter_web/features/home/bloc/home_bloc.dart';

class HomePageMobile extends StatefulWidget {
  const HomePageMobile({Key? key}) : super(key: key);

  @override
  _HomePageMobileState createState() => _HomePageMobileState();
}

class _HomePageMobileState extends State<HomePageMobile> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<HomeBloc>(context).init();
  }

  @override
  Widget build(BuildContext context) {
    final navigator = AppNavigator.of(context);
    return Scaffold(
      backgroundColor: AppColor.black14,
      appBar: AppBar(
        backgroundColor: AppColor.black11,
        brightness: Brightness.dark,
        title: const Text(
          'Movies',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is HomeErrorState) {
            return Center(
              child: Text(state.message),
            );
          }
          if (state is HomeLoadedState) {
            return ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: state.movies.results?.length ?? 0,
              separatorBuilder: (context, index) {
                return const SizedBox(height: 12);
              },
              itemBuilder: (context, index) {
                if (state.movies.results?[index].posterPath == null) {
                  return Container();
                }
                return GestureDetector(
                  onTap: () {
                    navigator.push('/details',
                        arguments: state.movies.results?[index].id);
                  },
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: SizedBox(
                          width: 100,
                          height: 160,
                          child: Image(
                            image: NetworkImage(IMAGE_PATH +
                                state.movies.results![index].posterPath!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              state.movies.results?[index].title ?? '',
                              style: const TextStyle(
                                color: Colors.yellow,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                const Icon(Icons.star, color: Colors.white),
                                Text(
                                  '${state.movies.results![index].voteAverage}',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}
