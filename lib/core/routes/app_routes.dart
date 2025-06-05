import 'package:boutigi_app/core/routes/base_routes.dart';
import 'package:boutigi_app/features/splash/presintasion/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  // final args = settings.arguments;
  switch (settings.name) {
    case SplashView.routeName:
      return BaseRoute(page: const SplashView());
    // case signUp:
    //   return BaseRoute(page: const SignUpScreen());

    default:
      return BaseRoute(
        page: Scaffold(
          body: Center(child: Text('No route found ${settings.name}')),
        ),
      );
  }
}
