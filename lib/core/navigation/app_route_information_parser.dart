import 'package:flutter/widgets.dart'
    show RouteInformation, RouteInformationParser;
import 'package:flutter_web/core/navigation/app_pages.dart';
import 'package:flutter_web/core/utils/extension.dart';

import 'app_config.dart';

class AppRouteInformationParser extends RouteInformationParser<AppConfig> {
  @override
  Future<AppConfig> parseRouteInformation(
      RouteInformation routeInformation) async {
    final location = routeInformation.location ?? AppPages.home;
    final uri = Uri.parse(location);
    if (uri.pathSegments.isEmpty) return const AppConfig(AppPages.home);
    if (uri.pathSegments.length == 1) {
      if (uri.pathSegments[0] == AppPages.details.toPage) {
        final idParams = uri.queryParameters['id'];
        if (idParams != null) {
          return AppConfig(location, id: int.parse(idParams));
        }
      }
    }
    return const AppConfig(AppPages.blank);
  }

  @override
  RouteInformation restoreRouteInformation(AppConfig configuration) {
    return RouteInformation(location: configuration.path);
  }
}
