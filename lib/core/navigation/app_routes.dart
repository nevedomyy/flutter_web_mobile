import 'package:flutter/material.dart' show MaterialPage, Page;

import 'package:flutter_web/core/navigation/app_pages.dart';
import 'package:flutter_web/core/widgets/blank_page.dart';
import 'package:flutter_web/features/details/ui/details_page.dart';
import 'package:flutter_web/features/home/ui/home_page.dart';

class AppRoutes {
  AppRoutes._();

  static List<String> pages = [
    AppPages.home,
    AppPages.details,
    AppPages.blank,
  ];

  static Page getPage(String page, {dynamic arguments}) {
    dynamic pageClass;
    switch (page) {
      case AppPages.home:
        pageClass = const HomePage();
        break;
      case AppPages.details:
        pageClass = DetailsPage(id: arguments);
        break;
      default:
        return const MaterialPage(
          name: AppPages.blank,
          child: BlankPage(),
        );
    }
    return MaterialPage(
      name: page,
      child: pageClass,
      arguments: arguments,
    );
  }
}
