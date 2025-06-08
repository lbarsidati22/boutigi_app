import 'package:boutigi_app/core/services/get_it_services.dart';
import 'package:boutigi_app/core/widgets/build_appbar.dart';
import 'package:boutigi_app/features/auth/domain/repos/auth_repo.dart';
import 'package:boutigi_app/features/auth/presintasion/cubits/signup_cubit/cubit/signup_cubit.dart';
import 'package:boutigi_app/features/auth/presintasion/views/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
  static const String routeName = 'SignUpView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: buildAppBar(title: 'حساب جديد', context: context),
        body: SignUpViewBody(),
      ),
    );
  }
}


// }
// BlocConsumer<SignupCubit, SignupState>(
//           listener: (context, state) {},
//           builder: (context, state) {
//             if (state is SignupLeading) {
//               return Center(
//                 child: CircularProgressIndicator.adaptive(),
//               );
//             }
//             return SignUpViewBody();
//           },
//         ),