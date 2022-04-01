import 'package:flutter/material.dart';
import 'package:flutter_web/core/api/end_points.dart';
import 'package:flutter_web/features/details/models/movie.dart';

class DetailsMovieWeb extends StatelessWidget {
  final Movie movie;

  const DetailsMovieWeb({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 400,
            child: Hero(
              tag: EndPoints.imagePath + movie.posterPath,
              child: Image(
                image: NetworkImage(EndPoints.imagePath + movie.posterPath),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    style: const TextStyle(
                      color: Colors.yellow,
                      fontSize: 32,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Colors.white),
                      Text(
                        '${movie.voteAverage}',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    movie.overview,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
