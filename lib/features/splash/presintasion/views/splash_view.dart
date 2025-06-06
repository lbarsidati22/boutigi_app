import 'package:boutigi_app/features/splash/presintasion/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView
    extends StatelessWidget {
  const SplashView({super.key});
  static const String routeName =
      'splash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SplashViewBody(),
      ),
    );
  }
}
