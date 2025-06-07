import 'package:boutigi_app/core/widgets/build_appbar.dart';
import 'package:boutigi_app/features/auth/presintasion/views/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';

class SignUpView
    extends StatelessWidget {
  const SignUpView({super.key});
  static const String routeName =
      'SignUpView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        title: 'حساب جديد',
        context: context,
      ),
      body: SignUpViewBody(),
    );
  }
}
