import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';
import 'core/app.dart';
import 'core/injections/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // It is safe to call this function when running on mobile or desktop as well.
  // setPathUrlStrategy();
  await configureDependencies();
  runApp(const App());
}
