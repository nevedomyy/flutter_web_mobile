import 'package:flutter/material.dart' show WidgetsFlutterBinding, runApp;
import 'package:url_strategy/url_strategy.dart';

import 'core/app.dart';
import 'core/injections/injection.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  configureDependencies();
  runApp(const App());
}
