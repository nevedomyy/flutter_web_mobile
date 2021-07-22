import 'package:flutter/material.dart';

import 'navigation/app_route_information_parser.dart';
import 'navigation/app_navigator.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: AppNavigator(),
      routeInformationParser: AppRouteInformationParser(),
    );
  }
}
