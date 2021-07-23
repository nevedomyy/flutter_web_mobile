import 'package:flutter/material.dart';
import 'package:flutter_web/core/widgets/blank_page.dart';
import 'package:flutter_web/features/details/ui/details_page.dart';
import 'package:flutter_web/features/home/ui/home_page.dart';

class AppRoutes {
  AppRoutes._();

  static List<String> pages = [
    '/blankPage',
    '/',
    '/details',
  ];

  static Page getPage(String page, {dynamic arguments}) {
    dynamic pageClass;
    switch (page) {
      case '/':
        pageClass = const HomePage();
        break;
      case '/details':
        pageClass = DetailsPage(id: arguments);
        break;
      default:
        return const MaterialPage(
          key: ValueKey('/blankPage'),
          name: '/blankPage',
          child: BlankPage(),
        );
    }
    return MaterialPage(
      key: ValueKey('$page/$arguments'),
      name: page,
      child: pageClass,
      arguments: arguments,
    );
  }
}
