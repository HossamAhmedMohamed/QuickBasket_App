// ignore_for_file: unused_local_variable

import 'package:commerce_app/core/presentation/screens/page_under_screen.dart';
import 'package:commerce_app/core/routes/base_routes.dart';
import 'package:commerce_app/core/routes/routes.dart';
import 'package:commerce_app/features/auth/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case login:
        return BaseRoute(page: const LoginScreen());
      // case testTwo:
      //   return BaseRoute(page: TestTwoScreen());

      default:
        return BaseRoute(page: const PageUnderScreen());
    }
  }
}
