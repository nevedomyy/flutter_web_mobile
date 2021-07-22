import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_web/core/injections/injection.dart';
import 'package:flutter_web/features/home/bloc/home_bloc.dart';

import 'home_page_mobile.dart';
import 'home_page_web.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(repository: getIt()),
      child: kIsWeb ? const HomePageWeb() : const HomePageMobile(),
    );
  }
}
