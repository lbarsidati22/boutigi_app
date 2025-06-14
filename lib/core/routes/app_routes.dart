import 'package:boutigi_app/core/routes/base_routes.dart';
import 'package:boutigi_app/features/auth/presintasion/views/login_view.dart';
import 'package:boutigi_app/features/auth/presintasion/views/sign_up_view.dart';
import 'package:boutigi_app/features/home/presentation/views/home_view.dart';
import 'package:boutigi_app/features/on_bording/presintasion/views/on_bording_view.dart';
import 'package:boutigi_app/features/splash/presintasion/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(
  RouteSettings settings,
) {
  // final args = settings.arguments;
  switch (settings.name) {
    case SplashView.routeName:
      return BaseRoute(page: const SplashView());
    case OnBordingView.routeName:
      return BaseRoute(
        page: const OnBordingView(),
      );
    case LoginView.routeName:
      return BaseRoute(page: const LoginView());
    case SignUpView.routeName:
      return BaseRoute(page: const SignUpView());
    case HomeView.routeName:
      return BaseRoute(page: const HomeView());
    default:
      return BaseRoute(
        page: Scaffold(
          body: Center(
            child: Text(
              'No route found ${settings.name}',
            ),
          ),
        ),
      );
  }
}
