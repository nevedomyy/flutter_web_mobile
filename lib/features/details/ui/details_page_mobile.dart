import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;
import 'package:provider/provider.dart' show ChangeNotifierProvider, Consumer;

import 'package:flutter_web/core/navigation/app_navigator.dart';
import 'package:flutter_web/core/utils/utils.dart';
import 'package:flutter_web/features/details/bloc/details_bloc.dart';
import 'package:flutter_web/features/details/ui/widgets/details_movie_mobile.dart';

class DetailsPageMobile extends StatefulWidget {
  final int id;

  const DetailsPageMobile({Key? key, required this.id}) : super(key: key);

  @override
  _DetailsPageMobileState createState() => _DetailsPageMobileState();
}

class _DetailsPageMobileState extends State<DetailsPageMobile> {
  static const _title = 'Movies';

  @override
  void initState() {
    super.initState();
    context.bloc<DetailsBloc>().init(widget.id);
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
          _title,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        centerTitle: true,
        leading: ChangeNotifierProvider<AppNavigator>.value(
          value: navigator,
          child: Consumer<AppNavigator>(
            builder: (context, state, child) {
              final onlyOnePage = state.pages.length <= 1;
              return AnimatedOpacity(
                opacity: onlyOnePage ? 0 : 1.0,
                child: IconButton(
                  onPressed: onlyOnePage ? null : navigator.pop,
                  icon: const Icon(
                    Icons.arrow_back_ios_new_sharp,
                    color: Colors.yellow,
                  ),
                ),
                duration: const Duration(milliseconds: 300),
              );
            },
          ),
        ),
      ),
      body: BlocBuilder<DetailsBloc, DetailsState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            loaded: (movie) => DetailsMovieMobile(movie: movie),
            error: (message) => Center(
              child: Text(message),
            ),
          );
        },
      ),
    );
  }
}
