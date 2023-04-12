import 'package:amana_task/features/auth/presentation/pages/login_page.dart';
import 'package:amana_task/features/home.dart';
import 'package:flutter/material.dart';
import 'package:amana_task/config/routes/app_routes.dart';
import 'package:amana_task/core/utils/app_strings.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.loginPageRoute:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
          settings: settings,
        );
      case AppRoutes.homePageRout:
        return MaterialPageRoute(
          builder: (_) => const HomePage(),
          settings: settings,
        );
      default:
        return _unDefinedRoute(settings);
    }
  }

  static Route? _unDefinedRoute(RouteSettings settings) => MaterialPageRoute(
        builder: (_) => const Scaffold(
          body: Center(
            child: Text(AppStrings.noRouteFound),
          ),
        ),
        settings: settings,
      );
}
