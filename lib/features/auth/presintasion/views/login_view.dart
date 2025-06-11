import 'package:boutigi_app/core/services/get_it_services.dart';
import 'package:boutigi_app/core/widgets/build_appbar.dart';
import 'package:boutigi_app/features/auth/domain/repos/auth_repo.dart';
import 'package:boutigi_app/features/auth/presintasion/cubits/login_cubit/login_cubit.dart';
import 'package:boutigi_app/features/auth/presintasion/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(title: 'تسجيل دخول', context: context),
        body: LoginViewBody(),
      ),
    );
  }
}
