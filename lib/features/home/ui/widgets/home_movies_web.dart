import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_web/core/api/end_points.dart';
import 'package:flutter_web/core/navigation/app_navigator.dart';
import 'package:flutter_web/features/home/models/movies.dart';

class HomeMoviesWeb extends StatelessWidget {
  static const _title = 'Upcoming movies:';
  final Movies movies;

  const HomeMoviesWeb({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigator = AppNavigator.of(context);

    if (movies.results.isEmpty) return const SizedBox();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        CarouselSlider.builder(
          itemCount: movies.results.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) {
            return GestureDetector(
              onTap: () {
                navigator.push(
                  '/details',
                  arguments: movies.results[itemIndex].id,
                );
              },
              child: Stack(
                children: [
                  Image(
                    image: NetworkImage(EndPoints.imagePath +
                        movies.results[itemIndex].backdropPath!),
                    fit: BoxFit.cover,
                    width: 800,
                    height: 450,
                  ),
                  Positioned(
                    bottom: 30,
                    left: 30,
                    child: Text(
                      movies.results[itemIndex].title,
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
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: false,
            scrollDirection: Axis.horizontal,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 50, left: 30, bottom: 20),
          child: Text(
            _title,
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
            itemCount: movies.results.length,
            separatorBuilder: (context, index) {
              return const SizedBox(width: 20);
            },
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  navigator.push(
                    '/details',
                    arguments: movies.results[index].id,
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: SizedBox(
                    width: 100,
                    height: 160,
                    child: Hero(
                      tag: EndPoints.imagePath +
                          movies.results[index].posterPath,
                      child: Image(
                        image: NetworkImage(EndPoints.imagePath +
                            movies.results[index].posterPath),
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
}
