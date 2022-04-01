import 'package:flutter/material.dart';
import 'package:flutter_web/core/api/end_points.dart';
import 'package:flutter_web/features/details/models/movie.dart';

class DetailsMovieMobile extends StatelessWidget {
  final Movie movie;

  const DetailsMovieMobile({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: NetworkImage(EndPoints.imagePath + movie.backdropPath),
          fit: BoxFit.fitWidth,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Text(
                  movie.title,
                  style: const TextStyle(
                    color: Colors.yellow,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  movie.overview,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
