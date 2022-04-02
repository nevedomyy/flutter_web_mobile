import 'package:flutter/material.dart';

import 'package:flutter_web/core/api/end_points.dart';
import 'package:flutter_web/core/navigation/app_navigator.dart';
import 'package:flutter_web/core/navigation/app_pages.dart';
import 'package:flutter_web/features/home/models/movies.dart';

class HomeMoviesMobile extends StatelessWidget {
  final Movies movies;

  const HomeMoviesMobile({Key? key, required this.movies}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigator = AppNavigator.of(context);

    if (movies.results.isEmpty) return const SizedBox();
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: movies.results.length,
      separatorBuilder: (context, index) {
        return const SizedBox(height: 12);
      },
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            navigator.push(
              AppPages.details,
              arguments: movies.results[index].id,
            );
          },
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: SizedBox(
                  width: 100,
                  height: 160,
                  child: Image(
                    image: NetworkImage(
                      EndPoints.imagePath + movies.results[index].posterPath,
                    ),
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
                      movies.results[index].title,
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
                          '${movies.results[index].voteAverage}',
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
}
