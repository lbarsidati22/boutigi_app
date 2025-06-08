import 'package:boutigi_app/core/widgets/build_appbar.dart';
import 'package:boutigi_app/features/auth/presintasion/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: 'تسجيل دخول', context: context),
      body: LoginViewBody(),
    );
  }
}
