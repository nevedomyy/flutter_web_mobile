import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;

import 'package:flutter_web/core/utils/utils.dart';
import 'package:flutter_web/features/details/bloc/details_bloc.dart';
import 'package:flutter_web/features/details/ui/widgets/details_movie_web.dart';

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
    context.bloc<DetailsBloc>().init(widget.id);
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
          child: BlocBuilder<DetailsBloc, DetailsState>(
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox(),
                loading: () => const Center(
                  child: CircularProgressIndicator(),
                ),
                loaded: (movie) => DetailsMovieWeb(movie: movie),
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
