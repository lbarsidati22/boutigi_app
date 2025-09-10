import 'package:boutigi_app/constants.dart';
import 'package:boutigi_app/core/utils/animate_do.dart';
import 'package:boutigi_app/core/utils/app_colors.dart';
import 'package:boutigi_app/core/utils/app_images.dart';
import 'package:boutigi_app/core/utils/app_text_styles.dart';
import 'package:boutigi_app/core/widgets/custom_text_feild.dart';
import 'package:boutigi_app/core/widgets/dont_have_an_account_widget.dart';
import 'package:boutigi_app/core/widgets/main_bottom.dart';
import 'package:boutigi_app/core/widgets/or_devider.dart';
import 'package:boutigi_app/features/auth/presintasion/cubits/login_cubit/login_cubit.dart';
import 'package:boutigi_app/features/auth/presintasion/views/widgets/social_login_boton.dart';
import 'package:boutigi_app/features/home/presentation/tabs/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() =>
      _LoginViewBodyState();
}

class _LoginViewBodyState
    extends State<LoginViewBody> {
  final emailController = TextEditingController();
  final passwordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: kHorizentalPadding,
      ),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 24),
              CustomFadeInRight(
                duration: 400,
                child: CustomTextFormField(
                  keyboardType:
                      TextInputType.emailAddress,
                  hintText: 'البريد الالكتروني',
                  controller: emailController,
                ),
              ),
              SizedBox(height: 15),
              CustomFadeInRight(
                duration: 400,
                child: CustomTextFormField(
                  obscureText: isPassword,

                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    icon: Icon(
                      isPassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    color: Colors.grey.shade400,
                  ),
                  keyboardType: TextInputType
                      .visiblePassword,
                  hintText: 'كلمة المرور',
                  controller: passwordController,
                ),
              ),
              SizedBox(height: 15),
              CustomFadeInLeft(
                duration: 400,
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.end,
                  children: [
                    Text(
                      'نسيت كلمة المرور ؟',
                      style: TextStyles.semiBold16
                          .copyWith(
                            color: AppColors
                                .lightPrimaryColor,
                          ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              BlocConsumer<
                LoginCubit,
                LoginState
              >(
                listener: (context, state) {
                  if (state is LoginSuccess) {
                    Navigator.pushReplacementNamed(
                      context,
                      HomeView.routeName,
                    );
                    return showTopSnackBar(
                      Overlay.of(context),
                      CustomSnackBar.success(
                        backgroundColor: AppColors
                            .primaryColor,
                        message:
                            'تم تسجيل الدخول بنجاح',
                      ),
                    );
                  } else if (state
                      is LoginFaulier) {
                    return showTopSnackBar(
                      Overlay.of(context),
                      CustomSnackBar.error(
                        message: state.message,
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  if (state is LoginLeading) {
                    return CustomFadeInLeft(
                      duration: 400,
                      child: MainBottom(
                        onTap: () {},
                        isLoading: true,
                        text: '',
                      ),
                    );
                  }
                  return CustomFadeInLeft(
                    duration: 400,
                    child: MainBottom(
                      onTap: () async {
                        if (_formKey.currentState!
                            .validate()) {
                          await context
                              .read<LoginCubit>()
                              .loginWithEmailAndPassword(
                                emailController
                                    .text,
                                passwordController
                                    .text,
                              );
                        }
                      },
                      text: 'تسجيل الدخول',
                    ),
                  );
                },
              ),

              SizedBox(height: 20),
              CustomFadeInRight(
                duration: 400,
                child: DonHaveAnAccountWidget(),
              ),
              SizedBox(height: 20),
              OrDevider(),
              SizedBox(height: 20),
              SocialLoginBoton(
                image: Assets.imagesGoogleIcon,
                title: 'تسجيل بواسطة جوجل',
                onTap: () {},
              ),
              SizedBox(height: 10),

              SocialLoginBoton(
                image: Assets.imagesFacebookIcon,
                title: 'تسجيل بواسطة فايسبوك',
                onTap: () {},
              ),
              SizedBox(height: 10),

              SocialLoginBoton(
                image: Assets.imagesApplIcon,
                title: 'تسجيل بواسطة ابل',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
