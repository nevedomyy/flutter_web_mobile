import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web/core/api/end_points.dart';
import 'package:flutter_web/core/navigation/app_navigator.dart';
import 'package:flutter_web/core/utils/color.dart';
import 'package:flutter_web/features/details/bloc/details_bloc.dart';
import 'package:provider/provider.dart';

class DetailsPageMobile extends StatefulWidget {
  final int id;

  const DetailsPageMobile({Key? key, required this.id}) : super(key: key);

  @override
  _DetailsPageMobileState createState() => _DetailsPageMobileState();
}

class _DetailsPageMobileState extends State<DetailsPageMobile> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<DetailsBloc>(context).init(widget.id);
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
        leading: ChangeNotifierProvider<AppNavigator>.value(
          value: navigator,
          child: Consumer<AppNavigator>(
            builder: (context, state, child) {
              return AnimatedOpacity(
                opacity: state.pages.length <= 1 ? 0 : 1.0,
                child: IconButton(
                  onPressed: state.pages.length <= 1 ? null : navigator.pop,
                  icon: const Icon(Icons.arrow_back_ios_new_sharp,
                      color: Colors.yellow),
                ),
                duration: const Duration(milliseconds: 300),
              );
            },
          ),
        ),
      ),
      body: BlocBuilder<DetailsBloc, DetailsState>(
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
            return Column(
              children: [
                Image(
                  image: NetworkImage(IMAGE_PATH + state.movie.backdropPath!),
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
                          state.movie.title ?? '',
                          style: const TextStyle(
                            color: Colors.yellow,
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          state.movie.overview ?? '',
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
          return Container();
        },
      ),
    );
  }
}
