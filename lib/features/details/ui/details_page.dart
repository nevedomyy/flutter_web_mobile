import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider;
import 'package:flutter/material.dart';
import 'package:flutter_web/core/injections/injection.dart';
import 'package:flutter_web/features/details/bloc/details_bloc.dart';

import 'details_page_mobile.dart';
import 'details_page_web.dart';

class DetailsPage extends StatelessWidget {
  final int id;

  const DetailsPage({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DetailsBloc>(
      create: (context) => DetailsBloc(repository: getIt()),
      child: kIsWeb ? DetailsPageWeb(id: id) : DetailsPageMobile(id: id),
    );
  }
}
