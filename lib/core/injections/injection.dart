import 'package:get_it/get_it.dart' show GetIt;
import 'package:injectable/injectable.dart' show injectableInit;

import 'injection.config.dart';

final GetIt getIt = GetIt.instance;

@injectableInit
void configureDependencies() {
  $initGetIt(getIt);
}
