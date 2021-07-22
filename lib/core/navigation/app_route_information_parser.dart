import 'package:flutter/widgets.dart';

import 'app_config.dart';

class AppRouteInformationParser extends RouteInformationParser<AppConfig> {
  @override
  Future<AppConfig> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? '/');
    if (uri.pathSegments.isEmpty) return const AppConfig('/');
    if (uri.pathSegments.length == 1) {
      if (uri.pathSegments[0].startsWith('details')) {
        if (uri.queryParameters['id'] != null) {
          return AppConfig(
            routeInformation.location!,
            id: int.parse(uri.queryParameters['id']!),
          );
        }
      }
    }
    return const AppConfig('/blankPage');
  }

  @override
  RouteInformation restoreRouteInformation(AppConfig configuration) {
    return RouteInformation(location: configuration.path);
  }
}
