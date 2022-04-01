import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web/core/api/end_points.dart';
import 'package:flutter_web/core/utils/color.dart';
import 'package:flutter_web/features/details/bloc/details_bloc.dart';

class DetailsPageWeb extends StatefulWidget {
  final int id;

  const DetailsPageWeb({Key? key, required this.id}) : super(key: key);

  @override
  _DetailsPageWebState createState() => _DetailsPageWebState();
}

class _DetailsPageWebState extends State<DetailsPageWeb> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<DetailsBloc>(context).init(widget.id);
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
              boxShadow: [BoxShadow(color: Colors.black87, blurRadius: 5)]),
          child: BlocBuilder<DetailsBloc, DetailsState>(
            builder: (context, state) {
              if (state is DetailsLoadingState) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (state is DetailsErrorState) {
                return Center(
                  child: Text(state.message),
                );
              }
              if (state is DetailsLoadedState) {
                return Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 400,
                        child: Hero(
                          tag: EndPoints.imagePath +
                              (state.movie.posterPath ?? ''),
                          child: Image(
                            image: NetworkImage(
                                EndPoints.imagePath + state.movie.posterPath!),
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
                                state.movie.title ?? '',
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
                                    '${state.movie.voteAverage}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Text(
                                state.movie.overview ?? '',
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
              return Container();
            },
          ),
        ),
      ),
    );
  }
}
