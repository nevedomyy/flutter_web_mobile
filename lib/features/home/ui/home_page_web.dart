import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web/core/api/end_points.dart';
import 'package:flutter_web/core/navigation/app_navigator.dart';
import 'package:flutter_web/core/utils/color.dart';
import 'package:flutter_web/features/home/bloc/home_bloc.dart';

class HomePageWeb extends StatefulWidget {
  const HomePageWeb({Key? key}) : super(key: key);

  @override
  _HomePageWebState createState() => _HomePageWebState();
}

class _HomePageWebState extends State<HomePageWeb> {
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
      body: Align(
        alignment: Alignment.topCenter,
        child: Container(
          width: 800,
          constraints: const BoxConstraints(
            // maxWidth: 800,
            // minWidth: 600,
            minHeight: double.infinity,
          ),
          decoration: const BoxDecoration(
              color: AppColor.black11,
              boxShadow: [BoxShadow(color: Colors.black87, blurRadius: 5)]),
          child: BlocBuilder<HomeBloc, HomeState>(
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
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CarouselSlider.builder(
                      itemCount: state.movies.results?.length ?? 0,
                      itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) {
                        if (state.movies.results?[itemIndex].backdropPath ==
                            null) {
                          return Container();
                        }
                        return GestureDetector(
                          onTap: () {
                            navigator.push('/details',
                                arguments: state.movies.results?[itemIndex].id);
                          },
                          child: Stack(
                            children: [
                              Image(
                                image: NetworkImage(IMAGE_PATH +
                                    state.movies.results![itemIndex]
                                        .backdropPath!),
                                fit: BoxFit.cover,
                                width: 800,
                                height: 450,
                              ),
                              Positioned(
                                bottom: 30,
                                left: 30,
                                child: Text(
                                  state.movies.results![itemIndex].title ?? '',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 60,
                                    shadows: [
                                      BoxShadow(
                                        color: Colors.black,
                                        blurRadius: 3,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      options: CarouselOptions(
                        height: 450,
                        viewportFraction: 1.0,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: false,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 50, left: 30, bottom: 20),
                      child: Text(
                        'Upcoming movies:',
                        style: TextStyle(
                          color: Colors.yellow,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: 160,
                      child: ListView.separated(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
                        scrollDirection: Axis.horizontal,
                        itemCount: state.movies.results?.length ?? 0,
                        separatorBuilder: (context, index) {
                          return const SizedBox(width: 20);
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
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: SizedBox(
                                width: 100,
                                height: 160,
                                child: Hero(
                                  tag: IMAGE_PATH +
                                      (state.movies.results?[index]
                                              .posterPath ??
                                          ''),
                                  child: Image(
                                    image: NetworkImage(IMAGE_PATH +
                                        state.movies.results![index]
                                            .posterPath!),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
              }
              return Container();
            },
          ),
        ),
      ),
    );
  }
}
