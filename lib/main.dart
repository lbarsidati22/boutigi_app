import 'package:boutigi_app/core/routes/app_routes.dart';
import 'package:boutigi_app/features/splash/presintasion/views/splash_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BoutigiApp());
}

class BoutigiApp extends StatelessWidget {
  const BoutigiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: SplashView.routeName,
    );
  }
}
