import 'package:flutter/widgets.dart' show BuildContext;
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBase, BlocProvider;

extension BuildContextExtension on BuildContext {
  /// bloc => BlocProvider.of<XxxBloc>(context)
  T bloc<T extends BlocBase>() => BlocProvider.of<T>(this);
}
