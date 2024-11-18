import 'package:commerce_app/core/presentation/screens/page_under_screen.dart';
import 'package:commerce_app/routes/base_routes.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      // case testOne:
      //   return BaseRoute(page: TestOneScreen());
      // case testTwo:
      //   return BaseRoute(page: TestTwoScreen());

      default:
        return BaseRoute(page: const PageUnderScreen());
    }
  }
}
