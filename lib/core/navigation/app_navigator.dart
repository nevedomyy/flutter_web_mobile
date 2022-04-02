import 'package:flutter/foundation.dart' show ChangeNotifier;
import 'package:flutter/material.dart';

import 'package:flutter_web/core/global/keys.dart';
import 'package:flutter_web/core/navigation/app_pages.dart';
import 'package:flutter_web/core/utils/extension.dart';

import 'app_config.dart';
import 'app_routes.dart';

class AppNavigator extends RouterDelegate<AppConfig>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<AppConfig> {
  final List<Page> _pages = [AppRoutes.getPage(AppPages.home)];

  List<Page> get pages => List.unmodifiable(_pages);

  @override
  GlobalKey<NavigatorState> get navigatorKey => Keys.navigatorKey;

  static AppNavigator of(BuildContext context) =>
      Router.of(context).routerDelegate as AppNavigator;

  @override
  AppConfig get currentConfiguration {
    if (_pages.last.arguments != null) {
      return AppConfig(
        '${_pages.last.name}?id=${_pages.last.arguments}',
        id: _pages.last.arguments as int,
      );
    }
    return AppConfig(_pages.last.name ?? AppPages.blank);
  }

  @override
  Future<void> setNewRoutePath(AppConfig configuration) async {
    final uri = Uri.parse(configuration.path);
    if (uri.pathSegments.isEmpty) {
      _pages.add(AppRoutes.getPage(AppPages.home));
    }
    if (uri.pathSegments.length == 1) {
      if (configuration.id != null) {
        if (uri.pathSegments[0] == AppPages.details.toPage) {
          if (_pages.length > 1 && _pages[1].name == AppPages.details) {
            _pages.removeLast();
          }
          _pages.add(
            AppRoutes.getPage(AppPages.details, arguments: configuration.id),
          );
        }
      } else {
        _pages.add(AppRoutes.getPage(AppPages.blank));
      }
    }
    while (uri.pathSegments.length < _pages.length - 1) {
      _pages.removeLast();
    }
    notifyListeners();
  }

  bool push(String page, {dynamic arguments}) {
    if (_pages.last.name == page && _pages.last.arguments == arguments) {
      return false;
    }
    _pages.add(AppRoutes.getPage(page, arguments: arguments));
    notifyListeners();
    return true;
  }

  bool pop() {
    if (_pages.length <= 1) return false;
    _pages.removeLast();
    notifyListeners();
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Keys.navigatorKey,
      onPopPage: (route, result) => !pop(),
      pages: List.of(_pages),
      observers: [HeroController()],
    );
  }
}
