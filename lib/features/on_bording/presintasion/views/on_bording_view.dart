import 'package:boutigi_app/features/on_bording/presintasion/views/widgets/on_bordingn_view_body.dart';
import 'package:flutter/material.dart';

class OnBordingView extends StatelessWidget {
  const OnBordingView({super.key});
  static const String routeName = 'OnBordingView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: OnBordingnViewBody()));
  }
}
