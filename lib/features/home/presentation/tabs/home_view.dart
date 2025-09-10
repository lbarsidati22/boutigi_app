import 'package:boutigi_app/features/home/presentation/home_nav_bar/widgets/custom_nav_bar.dart';
import 'package:boutigi_app/features/home/presentation/home_nav_bar/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String routeName = 'homeView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavBar(),
      body: SafeArea(child: HomeViewBody()),
    );
  }
}
